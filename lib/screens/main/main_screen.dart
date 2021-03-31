import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news/constants.dart';
import 'package:news/screens/main/components/web_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      color: kDarkBlackColor,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/logo.svg'),
                  Spacer(),
                  WebMenu(),
                  Spacer(),
                  SvgPicture.asset('assets/icons/behance-alt.svg'),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding / 2),
                    child:
                        SvgPicture.asset('assets/icons/feather_dribbble.svg'),
                  ),
                  SvgPicture.asset('assets/icons/feather_twitter.svg'),
                  SizedBox(
                    width: kDefaultPadding,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 1.5,
                          vertical: kDefaultPadding),
                    ),
                    child: Text('Let\'s Talk'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
