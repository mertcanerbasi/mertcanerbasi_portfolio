import 'package:flutter/material.dart';
import 'package:mertcanerbasi/utils/constants.dart';
import 'package:mertcanerbasi/utils/text_styles.dart';

class AppBorderedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const AppBorderedButton(
      {super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            return Constants.textColor; // Default text color
          },
        ),
        textStyle: WidgetStateProperty.resolveWith<TextStyle>(
          (Set<WidgetState> states) {
            return AppTextStyles.w200_16;
          },
        ),
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return Constants
                  .accentColor; // Change this to your desired hover color
            }
            return Colors.transparent; // Default button color
          },
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // No border radius
            side:
                BorderSide(color: Constants.textColor), // Default border color
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 16.0, vertical: 12.0), // Adjust the padding as needed
        child: Text(text),
      ),
    );
  }
}

class AppTextButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;
  const AppTextButton({super.key, required this.onPressed, required this.text});

  @override
  MyTextButtonState createState() => MyTextButtonState();
}

class MyTextButtonState extends State<AppTextButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.all(
            Colors.transparent), // Remove default splash color
      ),
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              style: AppTextStyles.w200_16,
            ),
            if (_isHovered)
              Container(
                height: 3.0,
                width: 20.0,
                color: Constants.accentColor, // Color of the underline
              ),
          ],
        ),
      ),
    );
  }
}
