import 'package:flutter/material.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';

class VoiceMessageView extends StatelessWidget {
  VoiceMessageView({super.key});
  final List<Map<dynamic, String>> VoiceList = [
    {
      "title": "Lorem ipsum",
      "text":
          " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consequat semper orci, id laoreet nisl blandit at. Quisque consequat scelerisque aliquam. Maecenas odio metus, rhoncus quis scelerisque non, commodo ac sem. Donec vulputate lacinia nulla. Donec ullamcorper leo at metus vestibulum rutrum. Nullam dictum dolor at tristique posuere. Aenean suscipit, sapien quis mollis sodales, nibh nunc facilisis lectus, eu bibendum turpis risus nec nisl. In ullamcorper luctus lacus, eu laoreet augue accumsan a. In hac habitasse platea dictumst. Sed accumsan velit quis condimentum cursus. Sed viverra ligula nunc, laoreet consequat nunc lacinia id."
    },
    {
      "title": "Lorem ipsum",
      "text":
          " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consequat semper orci, id laoreet nisl blandit at. Quisque consequat scelerisque aliquam. Maecenas odio metus, rhoncus quis scelerisque non, commodo ac sem. Donec vulputate lacinia nulla. Donec ullamcorper leo at metus vestibulum rutrum. Nullam dictum dolor at tristique posuere. Aenean suscipit, sapien quis mollis sodales, nibh nunc facilisis lectus, eu bibendum turpis risus nec nisl. In ullamcorper luctus lacus, eu laoreet augue accumsan a. In hac habitasse platea dictumst. Sed accumsan velit quis condimentum cursus. Sed viverra ligula nunc, laoreet consequat nunc lacinia id."
    },
    {
      "title": "Lorem ipsum",
      "text":
          " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consequat semper orci, id laoreet nisl blandit at. Quisque consequat scelerisque aliquam. Maecenas odio metus, rhoncus quis scelerisque non, commodo ac sem. Donec vulputate lacinia nulla. Donec ullamcorper leo at metus vestibulum rutrum. Nullam dictum dolor at tristique posuere. Aenean suscipit, sapien quis mollis sodales, nibh nunc facilisis lectus, eu bibendum turpis risus nec nisl. In ullamcorper luctus lacus, eu laoreet augue accumsan a. In hac habitasse platea dictumst. Sed accumsan velit quis condimentum cursus. Sed viverra ligula nunc, laoreet consequat nunc lacinia id."
    },
    {
      "title": "Lorem ipsum",
      "text":
          " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consequat semper orci, id laoreet nisl blandit at. Quisque consequat scelerisque aliquam. Maecenas odio metus, rhoncus quis scelerisque non, commodo ac sem. Donec vulputate lacinia nulla. Donec ullamcorper leo at metus vestibulum rutrum. Nullam dictum dolor at tristique posuere. Aenean suscipit, sapien quis mollis sodales, nibh nunc facilisis lectus, eu bibendum turpis risus nec nisl. In ullamcorper luctus lacus, eu laoreet augue accumsan a. In hac habitasse platea dictumst. Sed accumsan velit quis condimentum cursus. Sed viverra ligula nunc, laoreet consequat nunc lacinia id."
    },
    {
      "title": "Lorem ipsum",
      "text":
          " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consequat semper orci, id laoreet nisl blandit at. Quisque consequat scelerisque aliquam. Maecenas odio metus, rhoncus quis scelerisque non, commodo ac sem. Donec vulputate lacinia nulla. Donec ullamcorper leo at metus vestibulum rutrum. Nullam dictum dolor at tristique posuere. Aenean suscipit, sapien quis mollis sodales, nibh nunc facilisis lectus, eu bibendum turpis risus nec nisl. In ullamcorper luctus lacus, eu laoreet augue accumsan a. In hac habitasse platea dictumst. Sed accumsan velit quis condimentum cursus. Sed viverra ligula nunc, laoreet consequat nunc lacinia id."
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: TopicColor.black,
      appBar: AppBar(
        leading: backIconButtonLeading(),
        title: HeadingTextAppBar(text: 'Voice Messages'),
        titleSpacing: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: VoiceList.length,
          itemBuilder: (context, index) {
            final callback = VoiceList[index];
            return VoiceMessageContainer(
                title: callback['title']!, text: callback['text']!);
          },
        ),
      ),
    ));
  }
}

class VoiceMessageContainer extends StatelessWidget {
  const VoiceMessageContainer({
    super.key,
    required this.title,
    required this.text,
  });
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //verticalGap(10),
        SimpleGreytextBold(
          text: title,
          size: 16,
        ),
        verticalGap(5),
        SimpleWhitetextBold(weight: FontWeight.w400, text: text),
        verticalGap(15),
      ],
    );
  }
}
