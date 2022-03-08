import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tech_in_church/application/offering/offering_bloc.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/core/components/date_field.dart';
import 'package:tech_in_church/presentation/core/components/text_field.dart';
import 'package:stripe_payment/stripe_payment.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tech_in_church/presentation/core/notification_helper.dart';
import 'package:tech_in_church/presentation/core/text.dart';
import 'package:date_format/date_format.dart';

class OfferingView extends HookWidget {
  final GlobalKey<ScaffoldState> scaffoldstate;
  OfferingView({Key? key, required this.scaffoldstate}) : super(key: key);
  final formkey = GlobalKey<FormState>();

  void makePayment(BuildContext context, OfferingState state,
      ValueNotifier<PaymentMethod?> paymentMethod) async {
    if (formkey.currentState!.validate()) {
      StripePayment.createPaymentMethod(
        PaymentMethodRequest(
          card: CreditCard(
            number: state.cardNumber.getOrElse(''),
            expMonth: DateTime.parse(state.expirationDate.getOrElse('')).month,
            expYear: DateTime.parse(state.expirationDate.getOrElse('')).year,
            cvc: state.cvc.getOrElse(''),
          ),
        ),
      ).then((pm) {
        print(pm.toJson());
        paymentMethod.value = pm;
        context.read<OfferingBloc>().add(const OfferingEvent.madeOffering());
      }).catchError(
        (e) {
          debugPrint(e);
          NotificationHelper.showError(context, e);
          // FlushbarHelper.createError(
          //         message: e)
          //             //'There was an error making your payment. Please try again')
          //     .show(context);
          // flushbar.value?.show(context);
        },
      );
    }
  }

  showConfirmDialog(BuildContext context, String secret,
      PaymentMethod paymentMethod, OfferingState state) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content:
              Text('You are about to pay USD ${state.amount.getOrElse('')}.'),
          actions: [
            TextButton(
              onPressed: () {
                context.router.pop();
              },
              child: Text(
                'Cancel',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(color: AppColors.appColor),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.resolveWith((states) =>
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5)),
              ),
              onPressed: () {
                startDirectCharge(context, secret, paymentMethod, state);
              },
              child: Text(
                'Confirm',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(color: AppColors.white),
              ),
            ),
          ],
        );
      },
    );
  }

  startDirectCharge(BuildContext context, String secret,
      PaymentMethod paymentMethod, OfferingState state) async {
    await context.router.pop();
    // toast('We are processing your payment.Please wait.');
    NotificationHelper.showInfo(context, 'We are processing your payment.Please wait');
    // FlushbarHelper.createInformation(
    //         message: 'We are processing your payment.Please wait')
    //     .show(scaffoldstate.currentContext);
    StripePayment.confirmPaymentIntent(
      PaymentIntent(
        clientSecret: secret,
        paymentMethodId: paymentMethod.id,
      ),
    ).then((paymentIntent) {
      print(paymentIntent.toJson());
      if (paymentIntent.status == 'succeeded') {
        print('succeeded');
        scaffoldstate.currentContext!
            .read<OfferingBloc>()
            .add(const OfferingEvent.updatedServer());
        // toast('Payment received successfully');
        // FlushbarHelper.createSuccess(message: 'Payment received successfully')
        //     .show(context);
        // formkey.currentState?.reset();
      } else {
        print('not succ');
        // toast('There was an error making your payment. Please try again');
        NotificationHelper.showError(context, 'There was an error making your payment. Please try again');
        // FlushbarHelper.createError(
        //         message:
        //             'There was an error making your payment. Please try again')
        //     .show(scaffoldstate.currentContext);
      }
    }).catchError(
      (e) {
        print(e);
        // if(flushbar.value!=null){
        //   flushbar.value?.dismiss();
        // }
        NotificationHelper.showError(context, 'There was an error making your payment. Please try again');
        // FlushbarHelper.createError(
        //         message:
        //             'There was an error making your payment. Please try again')
        //     .show(scaffoldstate.currentContext);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final paymentMethod = useState<PaymentMethod?>(null);
    final cvvFocused = useState(false);
    useEffect(() {
      StripePayment.setOptions(StripeOptions(
        publishableKey: 'pk_live_51IfbL8H7Q5xmchdALXNdgb6omwZYSWpLiEJhsPOouHdY6nla391K1Ny30ItMCbumca52svhbmFuCXUHbVrEZbjIM00P3Znmwjo',
          // publishableKey:
          //     "pk_test_51IfbL8H7Q5xmchdAspkntwkZsWo8uVGIWHpcM36VO1TgqBzqHat9VtdMJ06GeYGhC6tzKoXfxrijWD4m1PGHgWoi00KtTMYnrM",
          merchantId: "Test",
          androidPayMode: 'test'));
    }, const []);
    return BlocConsumer<OfferingBloc, OfferingState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (failure) async {
                NotificationHelper.showError(context, 'There was an error making your payment. Please try again');
                // FlushbarHelper.createError(
                //         message:
                //             'There was an error making your payment. Please try again')
                //     .show(scaffoldstate.currentContext);
              },
              (secret) {
                showConfirmDialog(context, secret, paymentMethod.value!, state);
              },
            );
          },
        );
        state.updateFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                NotificationHelper.showError(context, 'There was an error making your payment. Please try again.');
                // toast(
                //     'There was an error making your payment. Please try again.');
                // FlushbarHelper.createError(
                //         message:
                //             'There was an error making your payment. Please try again')
                //     .show(context);
              },
              (_) {
                // toast('Payment received successfully');
                NotificationHelper.showInfo(context, 'Payment received successfully');
                // FlushbarHelper.createSuccess(
                //         message: 'Payment received successfully')
                //     .show(scaffoldstate.currentContext);
                formkey.currentState?.reset();
              },
            );
          },
        );
      },
      builder: (context, state) {
        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Form(
            key: formkey,
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CreditCardWidget(
                    // width: 0.8.sw,
                    // height: 0.28.sh,
                    isHolderNameVisible: true ,
                    cardNumber: state.cardNumber.getOrElse(''),
                    expiryDate: state.expirationDate.isValid()
                        ? '${DateTime.parse(state.expirationDate.getOrElse('')).month}/${DateTime.parse(state.expirationDate.getOrElse('')).year}'
                        : '',

                    cardHolderName: state.name.getOrElse(''),
                    cvvCode: state.cvc.getOrElse(''),
                    showBackView: cvvFocused.value,
                    onCreditCardWidgetChange: (creditCardBrand) {
                    },
                    //isCvvFocused, //true when you want to show cvv(back) view
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextInput(
                    // maxlength: 16,
                    enabled: !state.isSubmitting,
                    title: 'Name',
                    showError: !state.name.isValid(),
                    textInputaction: TextInputAction.next,
                    onChanged: (value) {
                      cvvFocused.value = false;
                      context
                          .read<OfferingBloc>()
                          .add(OfferingEvent.nameChanged(value ?? ''));
                    },
                    validator: (_) =>
                        context.read<OfferingBloc>().state.name.value.fold(
                              (f) => f.maybeMap(
                                fieldEmpty: (_) => Strings.requiredError,
                                orElse: () => '',
                              ),
                              (_) => null,
                            ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextInput(
                    keyboardType: TextInputType.number,
                    maxlength: 16,
                    enabled: !state.isSubmitting,
                    title: 'Card Number',
                    showError: !state.cardNumber.isValid(),
                    textInputaction: TextInputAction.next,
                    onChanged: (value) {
                      cvvFocused.value = false;
                      context
                          .read<OfferingBloc>()
                          .add(OfferingEvent.cardNumberChanged(value ?? ''));
                    },
                    validator: (_) => context
                        .read<OfferingBloc>()
                        .state
                        .cardNumber
                        .value
                        .fold(
                          (f) => f.maybeMap(
                            fieldEmpty: (_) => Strings.requiredError,
                            orElse: () => '',
                          ),
                          (_) => null,
                        ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: DateInput(
                          dateFormat: [M, ' ', yyyy],
                          lastDate: DateTime(2050),
                          title: 'Expiration Date',
                          next: true,
                          showError: !state.expirationDate.isValid(),
                          onUpdateBloc: (String? date) {
                            cvvFocused.value = false;
                            context.read<OfferingBloc>().add(
                                OfferingEvent.expirationDateChanged(
                                    date ?? ''));
                          },
                          validator: (_) => context
                              .read<OfferingBloc>()
                              .state
                              .expirationDate
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  fieldEmpty: (_) => Strings.requiredError,
                                  orElse: () => '',
                                ),
                                (_) => null,
                              ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextInput(
                          keyboardType: TextInputType.number,
                          maxlength: 3,
                          obscureText: true,
                          obscuringChar: 'x',
                          enabled: !state.isSubmitting,
                          title: 'Cvc',
                          showError: !state.cvc.isValid(),
                          textInputaction: TextInputAction.next,
                          onChanged: (value) {
                            cvvFocused.value = true;
                            context
                                .read<OfferingBloc>()
                                .add(OfferingEvent.cvcChanged(value ?? ''));
                            // cvvFocused.value = false;
                          },
                          validator: (_) =>
                              context.read<OfferingBloc>().state.cvc.value.fold(
                                    (f) => f.maybeMap(
                                      fieldEmpty: (_) => Strings.requiredError,
                                      orElse: () => '',
                                    ),
                                    (_) => null,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextInput(
                    prefix: '\$',
                    keyboardType: TextInputType.number,
                    enabled: !state.isSubmitting,
                    title: 'Amount',
                    showError: !state.cvc.isValid(),
                    textInputaction: TextInputAction.go,
                    onChanged: (value) => context
                        .read<OfferingBloc>()
                        .add(OfferingEvent.amountChanged(value ?? '')),
                    validator: (_) =>
                        context.read<OfferingBloc>().state.amount.value.fold(
                              (f) => f.maybeMap(
                                fieldEmpty: (_) => Strings.requiredError,
                                orElse: () => '',
                              ),
                              (_) => null,
                            ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
                  width: 1.sw,
                  child: ElevatedButton(
                    child: state.isSubmitting
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.white,
                            ),
                          )
                        : Text(
                            'Make Payment',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(color: AppColors.white),
                          ),
                    onPressed: state.isSubmitting
                        ? null
                        : () {
                            makePayment(context, state, paymentMethod);
                          },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
