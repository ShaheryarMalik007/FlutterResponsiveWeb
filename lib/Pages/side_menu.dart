import 'package:flutter/material.dart';
import 'package:flutter_responsive_web_ui/Utilities/constants.dart';
import 'package:flutter_responsive_web_ui/Widgets/responsive.dart';
import 'package:flutter_responsive_web_ui/Widgets/side_menu_item.dart';
import 'package:flutter_svg/svg.dart';


import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:google_fonts/google_fonts.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: const EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
      color: kBgLightColor,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Muhammad",style: GoogleFonts.aBeeZee().copyWith(fontWeight: FontWeight.bold),),
                  Text(" Shaheryar"),
                  const Spacer(),
                  // We don't want to show this close button on Desktop mood
                  if (!Responsive.isDesktop(context)) const CloseButton(),
                ],
              ),
              const SizedBox(height: kDefaultPadding),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.edit, size: 16),
                label: const Text(
                  "New message",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: kDefaultPadding),
              TextButton.icon(

                onPressed: () {},
                icon: SvgPicture.asset("assets/Icons/Download.svg", width: 16),
                label: const Text(
                  "Get messages",
                  style: TextStyle(color: kTextColor),
                ),
              ),
              const SizedBox(height: kDefaultPadding * 2),
              // Menu Items
              SideMenuItem(
                press: () {},
                title: "Inbox",
                iconSrc: "assets/Icons/Inbox.svg",
                isActive: true,
                itemCount: 3,
              ),
              SideMenuItem(
                press: () {},
                title: "Sent",
                iconSrc: "assets/Icons/Send.svg",
                isActive: false,
              ),
              SideMenuItem(
                press: () {},
                title: "Drafts",
                iconSrc: "assets/Icons/File.svg",
                isActive: false,
              ),
              SideMenuItem(
                press: () {},
                title: "Deleted",
                iconSrc: "assets/Icons/Trash.svg",
                isActive: false,
                showBorder: false,
              ),

              const SizedBox(height: kDefaultPadding * 2),
              // Tags

            ],
          ),
        ),
      ),
    );
  }
}
