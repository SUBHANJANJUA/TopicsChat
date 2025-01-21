import 'package:flutter/material.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';

import '../../../constant/color_contant.dart';

class CommingsoonView extends StatelessWidget {
  const CommingsoonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TopicColor.black,
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Image.asset(
            'assets/images/bg_G.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo_simple.png',
                width: 74,
                height: 77,
              ),
              verticalGap(27),
              Container(
                width: 214,
                height: 32,
                decoration: BoxDecoration(
                  color: TopicColor.white,
                  borderRadius: BorderRadius.circular(41),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 124,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(41),
                        color: Colors.red,
                        gradient: const LinearGradient(
                          colors: [
                            TopicColor.logoGraidient1,
                            TopicColor.logoGraidient2,
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: const Center(
                        child: SimpleWhitetextBold(
                          text: 'C O M I N G',
                          size: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 90,
                      child: Center(
                        child: Text(
                          'S O O N',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              verticalGap(20),
              const SimpleWhitetextBold(
                size: 16,
                text: 'Soon you will be able to experience',
                weight: FontWeight.w300,
              ),
              const SimpleWhitetextBold(
                size: 16,
                text: 'our chat and start a whole new way',
                weight: FontWeight.w300,
              ),
              const SimpleWhitetextBold(
                size: 16,
                text: 'of communicating.',
                weight: FontWeight.w300,
              ),
              const SimpleWhitetextBold(
                size: 16,
                text: 'Stay tuned!',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
