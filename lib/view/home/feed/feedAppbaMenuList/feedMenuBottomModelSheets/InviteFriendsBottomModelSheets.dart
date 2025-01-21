import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class InviteFriendsModalSheet extends StatelessWidget {
  const InviteFriendsModalSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SimpleWhitetextBold(text: 'Invite friends'),
              crossIcon(),
            ],
          ),
        ),
        GeneralTextwhite2(
          text: 'WhatsApp',
          icon: SvgPicture.asset(
            'assets/images/whatspp_icon.svg',
            width: 20,
            height: 20,
          ),
        ),
        horizontalDivider(),
        GeneralTextwhite2(
          gap: 22,
          text: 'Contacts',
          icon: SvgPicture.asset(
            'assets/images/contact_icon.svg',
            width: 16,
            height: 20,
          ),
        ),
        horizontalDivider(),
        GeneralTextwhite2(
          text: 'Copy link',
          icon: SvgPicture.asset(
            'assets/images/link_icon.svg',
            // width: 20,
            height: 12,
          ),
        ),
      ],
    );
  }
}
