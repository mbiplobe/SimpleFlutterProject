import 'package:flutter/material.dart';

class CustomTextFiledWidget extends StatefulWidget {

  final String label;
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final Color? labelColor;

  const CustomTextFiledWidget({
    super.key,
    required this.label,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.labelColor,
  });

  @override
  State<CustomTextFiledWidget> createState() => _CustomTextFieldState();
  }


class _CustomTextFieldState extends State<CustomTextFiledWidget>
{
    bool _obscure = false;

    @override
  void initState() {
   
    super.initState();
     _obscure = widget.obscureText;
  }
   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.label, style: TextStyle(fontWeight: FontWeight.bold, color: widget.labelColor ?? Colors.black45)),
          
          const SizedBox(height: 8),
          
          TextFormField(
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            obscureText: _obscure,
            validator: widget.validator,
            decoration: InputDecoration(
              prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
              suffixIcon: widget.obscureText
                  ? IconButton(
                      icon: Icon(_obscure ? Icons.visibility_off : Icons.visibility),
                      onPressed: () => setState(() => _obscure = !_obscure),
                    )
                  : (widget.suffixIcon != null ? Icon(widget.suffixIcon) : null),
              hintText: widget.hintText,
              filled: true,
              fillColor: Colors.grey[100],
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

