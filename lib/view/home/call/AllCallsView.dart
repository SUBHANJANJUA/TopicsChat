import 'package:flutter/material.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_text_field.dart';
import 'package:topics/widget/CallsViewWidgets/ListTileCallsView.dart';

class AllCallsView extends StatelessWidget {
  AllCallsView({super.key});
  final List<Map<String, dynamic>> allCallsData = [
    {
      "dp": "assets/images/dp1.png",
      "title": "Anne Wilson",
      "subtitle": "Incoming",
      "subIcon": Icons.call,
      "trailing": "12:44",
      "trailingIcon": Icons.info_outline,
    },
    {
      "dp": "assets/images/dp2.png",
      "title": "Amelie Smith",
      "subtitle": "Incoming",
      "subIcon": Icons.call,
      "trailing": "09:01",
      "trailingIcon": Icons.info_outline,
    },
    {
      "dp": "assets/images/dp3.png",
      "title": "Bob Mills",
      "subtitle": "Outcoming",
      "subIcon": Icons.videocam_outlined,
      "trailing": "yesterday",
      "trailingIcon": Icons.info_outline,
    },
    {
      "dp": "assets/images/dp4.png",
      "title": "Friendzzz",
      "subtitle": "Missed",
      "subIcon": Icons.call,
      "trailing": "yesterday",
      "trailingIcon": Icons.info_outline,
    },
    {
      "dp": "assets/images/dp_default.png",
      "title": "Joy Bright, William Malt +4",
      "subtitle": "Incoming",
      "subIcon": Icons.call,
      "trailing": "Friday",
      "trailingIcon": Icons.info_outline,
    },
    {
      "dp": "assets/images/dp5.png",
      "title": "John Travis",
      "subtitle": "Missed",
      "subIcon": Icons.call,
      "trailing": "Tuesday",
      "trailingIcon": Icons.info_outline,
    },
    {
      "dp": "assets/images/dp6.png",
      "title": "Joy Bright",
      "subtitle": "Outcoming",
      "subIcon": Icons.call,
      "trailing": "Tuesday",
      "trailingIcon": Icons.info_outline,
    },
    {
      "dp": "assets/images/dp7.png",
      "title": "Li Huan",
      "subtitle": "Missed",
      "subIcon": Icons.call,
      "trailing": "04/09/2023",
      "trailingIcon": Icons.info_outline,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalGap(20),
        TopicTextField(
          prefixIcon: Icons.search,
          hintText: 'Search...',
        ),
        verticalGap(20),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Recent calls',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        //verticalGap(10),
        Expanded(
          child: ListView.builder(
              itemCount: allCallsData.length,
              itemBuilder: (context, index) {
                final callData = allCallsData[index];
                return ListTileCallView(
                  dp: callData['dp'],
                  title: callData['title'],
                  subtitle: callData['subtitle'],
                  subIcon: callData['subIcon'],
                  trailing: callData['trailing'],
                  trailingIcon: callData['trailingIcon'],
                );
              }),
        ),
      ],
    );
  }
}
