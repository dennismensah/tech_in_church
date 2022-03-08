import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tech_in_church/presentation/core/colors.dart';

typedef OnUpdateBloc = void Function(String? value);
typedef Validator = String Function(String? value);

class DateInput extends HookWidget {
  final Widget? suffix;
  final String title;
  final bool? obscureText;
  final String? initialValue;
  final bool next;
  final DateTime? lastDate;
  final OnUpdateBloc onUpdateBloc;
  final Validator? validator;
  final bool? showError;
  final List<String>? dateFormat;
  const DateInput({
    Key? key,
    this.obscureText,
    required this.title,
    required this.next,
    required this.onUpdateBloc,
    this.initialValue,
    this.validator,
    this.lastDate,
    this.suffix,
    this.dateFormat,
    this.showError,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: initialValue);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: AppColors.appColor),
        ),
        const SizedBox(
          height: 10,
        ),
        Material(
          color: Colors.white,
          elevation: 5,
          borderRadius: BorderRadius.circular(25),
          child: Padding(
            padding: EdgeInsets.only(bottom: showError == null ? 0.00 : 7.0),
            child: TextFormField(
              // onFieldSubmitted: onSubmit,
              // enabled: enabled ?? true,
              controller: controller,
              validator: validator,
              readOnly: true,
              onTap: () async {
                final datePicked = await DatePicker.showSimpleDatePicker(
                  context,
                  initialDate: DateTime(2000),
                  firstDate: DateTime(1930),
                  lastDate: lastDate ?? DateTime.now(),
                  dateFormat: "dd-MMMM-yyyy",
                  looping: true,
                );
                controller.text = formatDate(datePicked,[dd, ' ', M, ' ', yyyy]);
                    // formatDate(datePicked,dateFormat!.isEmpty ? [dd, ' ', M, ' ', yyyy]: dateFormat!);
                onUpdateBloc(datePicked.toString());
              },

              // onChanged: onChanged,
              obscureText: obscureText ?? false,
              style: Theme.of(context).textTheme.subtitle1,
              // textInputAction: textInputaction,
              decoration: InputDecoration(
                // errorStyle: TextStyle(height: 1),
                // hintText: hint,
                hintStyle: TextStyle(color: Colors.grey.shade500),
                contentPadding: const EdgeInsets.all(15),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(color: AppColors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(color: AppColors.white),
                ),
                errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.white),
                ),
                focusedErrorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.white),
                ),
                disabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.white),
                ),
                suffixIcon: suffix,
              ),
            ),
          ),
        ),
        // Material(
        //   elevation: 5,
        //   borderRadius: BorderRadius.circular(25),
        //   child: Padding(
        //     padding: EdgeInsets.only(bottom: showError == null ? 0.00 : 7.0),
        //     child: TextFormField(
        //       controller: controller,
        //       validator: validator,
        //       readOnly: true,
        //       onTap: () async {
        //         final datePicked = await DatePicker.showSimpleDatePicker(
        //           context,
        //           initialDate: DateTime(2000),
        //           firstDate: DateTime(1930),
        //           lastDate: DateTime.now(),
        //           dateFormat: "dd-MMMM-yyyy",
        //           looping: true,
        //         );
        //         controller.text = formatDate(datePicked, [dd, ' ', M, ' ', yyyy]);
        //         onUpdateBloc(datePicked.toString());
        //       },
        //       obscureText: obscureText ?? false,
        //       style: Theme.of(context).textTheme.subtitle1,
        //       textInputAction: next ? TextInputAction.next : TextInputAction.done,
        //       decoration: InputDecoration(
        //         contentPadding: const EdgeInsets.all(15),
        //         enabledBorder: OutlineInputBorder(
        //           borderRadius: BorderRadius.circular(25),
        //           borderSide: const BorderSide(color: AppColors.white),
        //         ),
        //         focusedBorder: OutlineInputBorder(
        //           borderRadius: BorderRadius.circular(25),
        //           borderSide: const BorderSide(color: AppColors.white),
        //         ),
        //         suffix: suffix,
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
