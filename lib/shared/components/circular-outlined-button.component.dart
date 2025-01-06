import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:xtyle/dist/main.dart';
import 'package:xtyle/main.dart';

class CircularOutlinedButton extends StatefulWidget {
  final IconData icon;
  final double size;
  final Color borderColor;
  final Color iconColor;
  final VoidCallback onPressed;
  final String title;
  final bool autoFocus; // New property to enable autofocus

  const CircularOutlinedButton({
    Key? key,
    required this.icon,
    required this.size,
    required this.borderColor,
    required this.iconColor,
    required this.onPressed,
    required this.title,
    this.autoFocus = false, // Default is false
  }) : super(key: key);

  @override
  _CircularOutlinedButtonState createState() => _CircularOutlinedButtonState();
}

class _CircularOutlinedButtonState extends State<CircularOutlinedButton> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    if (widget.autoFocus) {
      _focusNode.requestFocus();
    }
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Focus(
          focusNode: _focusNode,
          autofocus: widget.autoFocus, // Enable autofocus
          child: GestureDetector(
            onTap: () {
              widget.onPressed();
              _focusNode.requestFocus();
            },
            child: OutlinedButton(
              onPressed: widget.onPressed,
              style: OutlinedButton.styleFrom(
                shape: const CircleBorder(),
                side: BorderSide(
                  color: _focusNode.hasFocus ? XColors.obsuccess : widget.borderColor,
                  width: 2,
                ),
                padding: EdgeInsets.all(widget.size * 0.3),
              ),
              child: Icon(
                widget.icon,
                color: widget.iconColor,
                size: widget.size * 0.8,
              ),
            ),
          ),
        ),
        Text(
          widget.title,
          style: TypographyBuilder().textObneutral100.textXs.build(),
        ),
      ],
    );
  }
}
