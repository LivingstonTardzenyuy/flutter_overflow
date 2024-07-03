import 'package:flutter/material.dart';
class TextFieldss extends StatelessWidget {
  const TextFieldss({super.key, required this.textEditingController});

  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        labelText: 'Enter your name', // Placeholder text
        labelStyle: TextStyle(color: Colors.grey[600]), // Color of the placeholder text
        hintText: 'John Doe', // Hint text shown when no text is entered
        hintStyle: TextStyle(color: Colors.grey[400]), // Color of the hint text
        prefixIcon: Icon(Icons.person), // Icon before the input field
        suffixIcon: IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            // Clear input field logic
          },
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0), // Border radius
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue), // Border color when focused
          borderRadius: BorderRadius.circular(10.0), // Border radius
        ),
        filled: true, // Fill the input field background
        fillColor: Colors.grey[200], // Fill color of the input field background
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0), // Padding around the input field content
      ),
      style: TextStyle(color: Colors.black87), // Text color of the input field
      cursorColor: Colors.blue, // Cursor color
      keyboardType: TextInputType.text, // Keyboard type (text, number, email, etc.)
      textInputAction: TextInputAction.done, // Action button on the keyboard (e.g., done, next)
      onChanged: (value) {
        // Handle input changes
      },
    );
  }
}
