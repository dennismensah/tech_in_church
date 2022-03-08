import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tech_in_church/presentation/core/colors.dart';

typedef Validator = String Function(String? value);
typedef OnChanged = void Function(String? value);
typedef OnSubmitted = void Function(String? value);
typedef IsFocused = void Function(bool value);

class TextInput extends HookWidget {
  final Widget? suffix;
  final String title;
  final bool? obscureText;
  final String? initialValue;
  final TextInputAction textInputaction;
  final Validator? validator;
  final OnChanged? onChanged;
  final bool? showError;
  final bool? enabled;
  final int? maxlength;
  final bool? readonly;
  final OnSubmitted? onSubmit;
  final String? hint;
  final String? obscuringChar;
  final String? prefix;
  final TextInputType? keyboardType;
  final bool? hasFocusNode;
  final IsFocused? isFocused;

  const TextInput({
    Key? key,
    this.initialValue,
    this.obscureText,
    required this.title,
    this.maxlength,
    required this.textInputaction,
    this.onSubmit,
    this.prefix,
    this.isFocused,
    this.validator,
    this.onChanged,
    this.suffix,
    this.enabled,
    this.readonly,
    this.obscuringChar,
    this.hasFocusNode,
    this.hint,
    this.keyboardType,
    this.showError,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: initialValue);
    final focusNode = useFocusNode();
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
              focusNode: hasFocusNode == true ? focusNode : null,
              keyboardType: keyboardType ?? TextInputType.text,
              obscuringCharacter: obscuringChar ?? '.',
              onFieldSubmitted: onSubmit,
              enabled: enabled ?? true,
              readOnly: readonly ?? false,
              controller: controller,
              validator: validator,
              onChanged: onChanged,
              inputFormatters: maxlength == null
                  ? []
                  : [LengthLimitingTextInputFormatter(maxlength)],
              obscureText: obscureText ?? false,
              style: Theme.of(context).textTheme.subtitle1,
              textInputAction: textInputaction,
              decoration: InputDecoration(
                // errorStyle: TextStyle(height: 1),
                prefixIcon: prefix == null
                    ? null
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.dollarSign,
                            color: AppColors.appColor,
                          ),
                        ],
                      ), //Text(prefix?? ''),
                hintText: hint,
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
      ],
    );
  }
}
