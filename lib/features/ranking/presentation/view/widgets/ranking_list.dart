import 'package:elfakh/core/widgets/back_ground.dart';
import 'package:elfakh/core/widgets/bordered_text.dart';
import 'package:elfakh/core/widgets/close_icon.dart';
import 'package:elfakh/features/ranking/presentation/view/widgets/user_rank.dart';
import 'package:flutter/material.dart';

class RankingList extends StatelessWidget {
  const RankingList({
    super.key,
    required this.rankingType
  });
  final String rankingType;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackGround(),
        Padding(
          padding:
              const EdgeInsets.only(top: 68, left: 28, right: 28, bottom: 20),
          child: Column(
            children: [
              const CloseIcon(),
              const SizedBox(height: 20),
               BorderdText(
                text: rankingType,
                fontSize: 24,
              ),
              const SizedBox(height: 20),
              Container(
                width: 387,
                height: 690,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFDA8E41)),
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFFFF5C3).withOpacity(0.3),
                      Color(0xFF9452A5).withOpacity(0.2),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BorderdText(text: "الترتيب", fontSize: 13),
                            BorderdText(text: "الاسم", fontSize: 13),
                            BorderdText(text: "المكسب", fontSize: 13),
                          ],
                        ),
                      ),
                      // 👇 This works now inside fixed height container

                      Expanded(
                        child: ListView.builder(
                          itemCount: 15,
                          itemBuilder: (context, index) {
                            return UserRank(userRank: index + 1);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
