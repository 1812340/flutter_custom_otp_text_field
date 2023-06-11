import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Helper widget to show OTP Text field
class OtpTextField extends ConsumerWidget {
  const OtpTextField({super.key, required this.autoFocus, this.controller});

  final TextEditingController? controller;
  final bool autoFocus;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: MediaQuery.of(context).size.shortestSide * 0.13,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
        // color: currentTheme.cardColor,
        shape: BoxShape.rectangle,
      ),
      child: AspectRatio(
        aspectRatio: 1,
        child: TextField(
          controller: controller,
          autofocus: autoFocus,
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          style:  TextStyle(
                        // fontFamily:currentTheme.textTheme.bodyText1!.fontFamily ,

            fontSize: 20.0,
            // color: currentTheme.textTheme.bodyText2!.color
          ),
          maxLines: 1,
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
        ),
      ),
    );
  }
}

class ClinicianCodeField extends ConsumerWidget {
  const ClinicianCodeField(
      {super.key, required this.autoFocus, this.controller});

  final TextEditingController? controller;
  final bool autoFocus;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final currentTheme = ref.watch(themeNotifierProvider);
    return Container(
      height: MediaQuery.of(context).size.shortestSide * 0.13,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
        // color: currentTheme.cardColor,
        shape: BoxShape.rectangle,
      ),
      child: AspectRatio(
        aspectRatio: 1,
        child: TextFormField(
          controller: controller,
          autofocus: autoFocus, 
          validator: (value) {
            if (value!.isEmpty) {
              return null;
            }
            return null;
          },

          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
          textAlign: TextAlign.center,
          keyboardType: TextInputType.text,
          style:  TextStyle(
                        // fontFamily:currentTheme.textTheme.bodyText1!.fontFamily ,

            fontSize: 20.0,
            // color: currentTheme.textTheme.bodyText2!.color
          ),

          maxLines: 1,
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
        ),
      ),
    );
  }
}
