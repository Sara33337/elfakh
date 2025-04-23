import 'package:elfakh/core/widgets/colored_bordered_text.dart';
import 'package:elfakh/core/widgets/profile_pic.dart';
import 'package:elfakh/features/game_home/presentation/view/widgets/game_home_background.dart';
import 'package:elfakh/features/game_home/presentation/view/widgets/play_category.dart';
import 'package:elfakh/features/game_home/presentation/view/widgets/home_score.dart';
import 'package:elfakh/features/play&win/presentation/view/widgets/play_win_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class GameHomeScreenBody extends StatefulWidget {
  const GameHomeScreenBody({super.key});

  @override
  State<GameHomeScreenBody> createState() => _GameHomeScreenBodyState();
}

class _GameHomeScreenBodyState extends State<GameHomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const GameHomeBackGround(),
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 347,
                    child: Row(
                      children: [
                        const HomeScore(),
                        const SizedBox(
                          width: 15,
                        ),
                        const HomeScore(),
                        const SizedBox(
                          width: 72,
                        ),
                        ProfilePic()
                      ],
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/images/settings.svg', // renamed for safety
                    width: 56,
                    height: 64,
                    placeholderBuilder: (BuildContext context) =>
                        const CircularProgressIndicator(),
                    semanticsLabel: 'settings icon',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/images/cardstime.svg',
                        width: 70,
                        height: 67.51,
                        placeholderBuilder: (BuildContext context) =>
                            const CircularProgressIndicator(),
                        semanticsLabel: 'cardTime icon',
                      ),
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push( "/rankingScreen");
                        },
                        child: SvgPicture.asset(
                          'assets/images/ranking.svg', // renamed for safety
                          width: 41,
                          height: 54.47,

                          semanticsLabel: 'ranking icon',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: ColoredBorderdText(
                      text: 'لعبة الفخ',
                      fontSize: 31.44,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          PlayCategory(
                            image: "assets/images/competitions.svg",
                            label: "competitions icon",
                            icon: "assets/images/competitionicon.png",
                            onTap: () {
                              GoRouter.of(context).push("/competitionsScreen");
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          PlayCategory(
                            image: "assets/images/palyandwin.svg",
                            label: "palyandwin icon",
                            icon: "assets/images/competitionicon.png",
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => const PlayWinDialog(),
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          PlayCategory(
                            image: "assets/images/playwithfriends.svg",
                            label: "playwithfriends icon",
                            icon: "assets/images/playwithfriendicon.png",
                            onTap: () {},
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          PlayCategory(
                            image: "assets/images/specialtabel.svg",
                            label: "specialtabel icon'",
                            icon: "assets/images/competitionicon.png",
                            onTap: () {},
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
