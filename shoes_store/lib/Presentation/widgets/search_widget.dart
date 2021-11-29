import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 370,
      child: TextField(
        decoration: InputDecoration(
            suffixIcon: const Icon(Icons.search_outlined),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            enabledBorder: InputBorder.none,
            filled: true,
            hintStyle: TextStyle(color: Colors.grey[800]),
            hintText: "Type in your text",
            fillColor: Colors.white70),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17.0),
        color: const Color(0xffffffff),
        boxShadow: [
          BoxShadow(
            color: const Color(0x52b06dcc),
            offset: Offset(0, 50),
            blurRadius: 99,
          ),
        ],
      ),
    );
  }
}
