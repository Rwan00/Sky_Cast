import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchField extends StatelessWidget {
  final String hint;
  final Function(String)? onChanged;
  final TextInputType? inputType;
  final TextEditingController? controller;
  final String? Function(String?) validator;
  final Widget? widget;

  const SearchField(
      {
      required this.hint,
      this.onChanged,
      this.inputType,
      this.controller,
      required this.validator,
      this.widget,
      super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(28, 27, 51, 1),
            Color.fromRGBO(46, 51, 90, 1),
             Color.fromRGBO(28, 27, 51, 1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
        margin: const EdgeInsets.only(top: 8),
        width: double.infinity,
        height: height * 0.04,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: TextFormField(
                  validator: validator,
                  controller: controller,
                  keyboardType: inputType,
                  onChanged: onChanged,
                  autofocus: false,
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                  cursorColor: Colors.blueGrey,
                  decoration: InputDecoration(
                    prefixIcon: widget,
                    hintText: hint,
                    hintStyle:
                        GoogleFonts.aBeeZee(color: const Color.fromRGBO(235, 235, 245, 0.6),fontSize: 17,fontWeight: FontWeight.w400),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
