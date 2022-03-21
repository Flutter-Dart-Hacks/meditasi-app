import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29.5),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search here',
          icon: SvgPicture.asset('assets/icons/search.svg'),
          border: InputBorder.none,
          hintStyle: const TextStyle().copyWith(color: Colors.black54),
        ),
        onChanged: (stringkey) {
          print('$stringkey');
        },
      ),
    );
  }
}
