import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeFeild extends StatelessWidget {
  const PinCodeFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      backgroundColor: Color(0xffF8F8FF),
      length: 6, // количество ячеек
      appContext: context,
      keyboardType: TextInputType.number,
      animationType: AnimationType.fade,

      cursorColor: Colors.black,
      enableActiveFill: true,

      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(12),
        fieldHeight: 55,
        fieldWidth: 50,

        activeFillColor: Colors.grey.shade200,
        inactiveFillColor: Colors.grey.shade200,
        selectedFillColor: Colors.white,

        activeColor: Colors.blue,
        inactiveColor: Colors.transparent,
        selectedColor: Colors.blue,
      ),

      onCompleted: (code) {
        print('OTP: $code');
        // 👉 тут отправляешь токен на сервер
      },

      onChanged: (value) {},
    );
  }
}
