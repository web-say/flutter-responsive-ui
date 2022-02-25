import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Dashboard",
          style: Theme.of(context).textTheme.headline6,
        ),
        const Spacer(),
        const Expanded(
          child: SearchField(),
        ),
        const ProfileCard()
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 2),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.white10)),
      child: Row(
        children: [
          Image.asset(
            "assets/images/user.jpg",
            height: 38,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            child: Text('User Name'),
          ),
          const Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        fillColor: secondaryColor,
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        // suffix: InkWell(
        //   onTap: () {},
        //   child: Container(
        //     padding: const EdgeInsets.all(defaultPadding * 0.75),
        //     margin: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
        //     decoration: const BoxDecoration(
        //       color: primaryColor,
        //       borderRadius: BorderRadius.all(
        //         Radius.circular(10),
        //       ),
        //     ),
        //     child: SvgPicture.asset(
        //       'assets/icons/search.svg',
        //       height: 20.0,
        //       width: 20.0,
        //       color: Colors.white54,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
