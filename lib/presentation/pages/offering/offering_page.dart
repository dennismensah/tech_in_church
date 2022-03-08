import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_in_church/application/offering/offering_bloc.dart';
import 'package:tech_in_church/injection.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/pages/offering/widgets/offering_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferingPage extends StatelessWidget {
   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<OfferingBloc>(),
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: AppColors.appColor,
        appBar: AppBar(
          title: const Text(
            'Givings',
            style: TextStyle(color: Colors.white,fontFamily: 'Raleway'),
          ),
          backgroundColor: AppColors.appColor,
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0.0,
        ),
        body: Container(
          height: 1.sh,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            color: Colors.white,
          ),
          child: OfferingView(scaffoldstate: _scaffoldKey,),
        ),
      ),
    );
  }
}

// import 'dart:convert';
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:stripe_payment/stripe_payment.dart';
// import 'package:auto_route/auto_route.dart';

// class OfferingPage extends StatefulWidget {
//   @override
//   _OfferingPageState createState() => new _OfferingPageState();
// }

// class _OfferingPageState extends State<OfferingPage> {
//   late Token? _paymentToken =null;
//   late PaymentMethod? _paymentMethod=null;
//   late String? _error=null;

//   //this client secret is typically created by a backend system
//   //check https://stripe.com/docs/payments/payment-intents#passing-to-client
//   final String _paymentIntentClientSecret =
//       'sk_test_51IfbL8H7Q5xmchdALpwTMJjIkinLAdWPENSAuuj71oWAtixBV0JAKxxA5MwvrLrZ0pOzJSGiyudEBVvCMCpg1bzD00DWhcBWR1';

//   late PaymentIntentResult? _paymentIntent=null;
//   late Source? _source=null;

//   ScrollController _controller = ScrollController();

//   final CreditCard testCard = CreditCard(
//     number: '4000002760003184',
//     expMonth: 12,
//     expYear: 21,
//   );

//   GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

//   @override
//   initState() {
//     super.initState();

//     StripePayment.setOptions(StripeOptions(
//         publishableKey: "pk_test_51IfbL8H7Q5xmchdAspkntwkZsWo8uVGIWHpcM36VO1TgqBzqHat9VtdMJ06GeYGhC6tzKoXfxrijWD4m1PGHgWoi00KtTMYnrM",
//         merchantId: "Test",
//         androidPayMode: 'test'));
//   }

//   void setError(dynamic error) {
//     _scaffoldKey.currentState
//         ?.showSnackBar(SnackBar(content: Text(error.toString())));
//     setState(() {
//       _error = error.toString();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new Scaffold(
//         key: _scaffoldKey,
//         appBar: new AppBar(
//           title: new Text('Plugin example app'),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.clear),
//               onPressed: () {
//                 setState(() {
//                   _source = null;
//                   _paymentIntent = null;
//                   _paymentMethod = null;
//                   _paymentToken = null;
//                 });
//               },
//             )
//           ],
//         ),
//         body: ListView(
//           controller: _controller,
//           padding: const EdgeInsets.all(20),
//           children: <Widget>[
//             RaisedButton(
//               child: Text("Create Source"),
//               onPressed: () {
//                 StripePayment.createSourceWithParams(SourceParams(
//                   type: 'ideal',
//                   amount: 1099,
//                   currency: 'eur',
//                   returnURL: 'example://stripe-redirect',
//                 )).then((source) {
//                   _scaffoldKey.currentState?.showSnackBar(
//                       SnackBar(content: Text('Received ${source.sourceId}')));
//                   setState(() {
//                     _source = source;
//                   });
//                 }).catchError(setError);
//               },
//             ),
//             Divider(),
//             RaisedButton(
//               child: Text("Create Token with Card Form"),
//               onPressed: () {
//                 StripePayment.paymentRequestWithCardForm(
//                         CardFormPaymentRequest())
//                     .then((paymentMethod) {
//                   _scaffoldKey.currentState?.showSnackBar(
//                       SnackBar(content: Text('Received ${paymentMethod.id}')));
//                   setState(() {
//                     _paymentMethod = paymentMethod;
//                   });
//                 }).catchError(setError);
//               },
//             ),
//             RaisedButton(
//               child: Text("Create Token with Card"),
//               onPressed: () {
//                 StripePayment.createTokenWithCard(
//                   testCard,
//                 ).then((token) {
//                   _scaffoldKey.currentState?.showSnackBar(
//                       SnackBar(content: Text('Received ${token.tokenId}')));
//                   setState(() {
//                     _paymentToken = token;
//                   });
//                 }).catchError(setError);
//               },
//             ),
//             Divider(),
//             RaisedButton(
//               child: Text("Create Payment Method with Card"),
//               onPressed: () {
//                 StripePayment.createPaymentMethod(
//                   PaymentMethodRequest(
//                     card: testCard,
//                   ),
//                 ).then((paymentMethod) {
//                   _scaffoldKey.currentState?.showSnackBar(
//                       SnackBar(content: Text('Received ${paymentMethod.id}')));
//                   setState(() {
//                     _paymentMethod = paymentMethod;
//                   });
//                 }).catchError(setError);
//               },
//             ),
//             RaisedButton(
//               child: Text("Create Payment Method with existing token"),
//               onPressed: _paymentToken == null
//                   ? null
//                   : () {
//                       StripePayment.createPaymentMethod(
//                         PaymentMethodRequest(
//                           card: CreditCard(
//                             token: _paymentToken?.tokenId,
//                           ),
//                         ),
//                       ).then((paymentMethod) {
//                         _scaffoldKey.currentState?.showSnackBar(SnackBar(
//                             content: Text('Received ${paymentMethod.id}')));
//                         setState(() {
//                           _paymentMethod = paymentMethod;
//                         });
//                       }).catchError(setError);
//                     },
//             ),
//             Divider(),
//             RaisedButton(
//               child: Text("Confirm Payment Intent"),
//               onPressed:
//                   _paymentMethod == null || _paymentIntentClientSecret == null
//                       ? null
//                       : () {
//                           StripePayment.confirmPaymentIntent(
//                             PaymentIntent(
//                               clientSecret: _paymentIntentClientSecret,
//                               paymentMethodId: _paymentMethod?.id,
//                             ),
//                           ).then((paymentIntent) {
//                             _scaffoldKey.currentState?.showSnackBar(SnackBar(
//                                 content: Text(
//                                     'Received ${paymentIntent.paymentIntentId}')));
//                             setState(() {
//                               _paymentIntent = paymentIntent;
//                             });
//                           }).catchError(setError);
//                         },
//             ),
//             RaisedButton(
//               child: Text("Authenticate Payment Intent"),
//               onPressed: _paymentIntentClientSecret == null
//                   ? null
//                   : () {
//                       StripePayment.authenticatePaymentIntent(
//                               clientSecret: _paymentIntentClientSecret)
//                           .then((paymentIntent) {
//                         _scaffoldKey.currentState?.showSnackBar(SnackBar(
//                             content: Text(
//                                 'Received ${paymentIntent.paymentIntentId}')));
//                         setState(() {
//                           _paymentIntent = paymentIntent;
//                         });
//                       }).catchError(setError);
//                     },
//             ),
//             Divider(),
//             RaisedButton(
//               child: Text("Native payment"),
//               onPressed: () {
//                 if (Platform.isIOS) {
//                   _controller.jumpTo(450);
//                 }
//                 StripePayment.paymentRequestWithNativePay(
//                   androidPayOptions: AndroidPayPaymentRequest(
//                     totalPrice: "1.20",
//                     currencyCode: "EUR",
//                   ),
//                   applePayOptions: ApplePayPaymentOptions(
//                     countryCode: 'DE',
//                     currencyCode: 'EUR',
//                     items: [
//                       ApplePayItem(
//                         label: 'Test',
//                         amount: '13',
//                       )
//                     ],
//                   ),
//                 ).then((token) {
//                   setState(() {
//                     _scaffoldKey.currentState?.showSnackBar(
//                         SnackBar(content: Text('Received ${token.tokenId}')));
//                     _paymentToken = token;
//                   });
//                 }).catchError(setError);
//               },
//             ),
//             RaisedButton(
//               child: Text("Complete Native Payment"),
//               onPressed: () {
//                 StripePayment.completeNativePayRequest().then((_) {
//                   _scaffoldKey.currentState?.showSnackBar(
//                       SnackBar(content: Text('Completed successfully')));
//                 }).catchError(setError);
//               },
//             ),
//             Divider(),
//             Text('Current source:'),
//             Text(
//               JsonEncoder.withIndent('  ').convert(_source?.toJson() ?? {}),
//               style: TextStyle(fontFamily: "Monospace"),
//             ),
//             Divider(),
//             Text('Current token:'),
//             Text(
//               JsonEncoder.withIndent('  ')
//                   .convert(_paymentToken?.toJson() ?? {}),
//               style: TextStyle(fontFamily: "Monospace"),
//             ),
//             Divider(),
//             Text('Current payment method:'),
//             Text(
//               JsonEncoder.withIndent('  ')
//                   .convert(_paymentMethod?.toJson() ?? {}),
//               style: TextStyle(fontFamily: "Monospace"),
//             ),
//             Divider(),
//             Text('Current payment intent:'),
//             Text(
//               JsonEncoder.withIndent('  ')
//                   .convert(_paymentIntent?.toJson() ?? {}),
//               style: TextStyle(fontFamily: "Monospace"),
//             ),
//             Divider(),
//             Text('Current error: $_error'),
//           ],
//         ),
//       ),
//     );
//   }
// }
