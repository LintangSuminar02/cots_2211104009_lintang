import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/login_controller.dart';

class LoginTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Login",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          "Enter your registered phone number to log in",
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}

class PhoneNumberInput extends StatelessWidget {
  final LoginController controller;

  PhoneNumberInput({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            children: [
              Text("+62", style: TextStyle(fontSize: 16)),
              Icon(Icons.keyboard_arrow_down),
            ],
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: TextField(
            keyboardType: TextInputType.phone,
            onChanged: controller.updatePhoneNumber,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your phone number",
              isDense: true,
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            controller.updatePhoneNumber('');
          },
        ),
      ],
    );
  }
}

class IssueWithNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        "Issue with number?",
        style: TextStyle(
          fontSize: 14,
          color: Colors.green,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
