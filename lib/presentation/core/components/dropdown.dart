import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tech_in_church/presentation/core/colors.dart';

typedef Validator = String Function(String? value);
typedef OnUpdateBloc = void Function(String? value);

class Dropdown extends HookWidget {
  final List<String> items;
  // final String? value;
  final String? hint;
  final String title;
  final Validator? validator;
  final String? initialValue;
  // final OnChanged? onChanged;
  final OnUpdateBloc onUpdateBloc;
  final bool? showError;
  const Dropdown({
    Key? key,
    required this.items,
    required this.title,
    required this.onUpdateBloc,
    this.initialValue,
    this.validator,
    this.showError,
    this.hint,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ValueNotifier<String?> val = useState(initialValue);
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
          child: FormField(
            builder: (state) {
              return Padding(
                padding: EdgeInsets.only(bottom: showError == null ? 0.00 : 7.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InputDecorator(
                      decoration: InputDecoration(hintText: hint,
                        contentPadding: EdgeInsets.only(left: 15, right: 15),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.white),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        // focusedBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(color: Colors.black),
                        // ),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          hint: Center(child: Text(hint ?? '')),
                          style: const TextStyle(color: Colors.black),
                          value: val.value,
                          elevation: 16,
                          icon: const Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: FaIcon(
                              FontAwesomeIcons.chevronDown,
                              size: 14,
                              color: AppColors.lightGray,
                            ),
                          ),
                          isExpanded: true,
                          items: items.map((e) {
                            return DropdownMenuItem(
                              value: e,
                              child: Text(
                                e,
                                style: const TextStyle(fontSize: 17),
                              ),
                            );
                          }).toList(),
                          // validator: validator,
                          // onChanged: onChanged,
                          onChanged: (v) {
                            FocusScope.of(context).requestFocus(FocusNode());
                            val.value = v;
                            onUpdateBloc(v);
                          },
                        ),
                      ),
                    ),
                    if (state.hasError) Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(state.errorText!,style: TextStyle(color: Colors.red,fontSize: 12),),
                    ) else const SizedBox.shrink()
                  ],
                ),
              );
            },
            validator: validator,

          ),
        ),
      ],
    );
  }
}
