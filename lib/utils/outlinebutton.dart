import 'package:flutter/material.dart';

class outlinebutton extends StatelessWidget {
  const outlinebutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Color(0xff177ff2), width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 65),
      ),
      child: Text(
        'Create an account',
        style: TextStyle(color: Color(0xff177ff2), fontSize: 24),
      ),
    );
  }
}