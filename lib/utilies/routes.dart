import 'package:elfakh/features/competitions/presentation/view/competitions_screen.dart';
import 'package:elfakh/features/competitions/presentation/view/starting_competition.dart';
import 'package:elfakh/features/four_competitors/presentation/view/four_competitors_screen.dart';
import 'package:elfakh/features/four_competitors/presentation/view/four_competitors_playing.dart';
import 'package:elfakh/features/game_home/presentation/view/game_home.dart';
import 'package:elfakh/features/play&win/presentation/view/play_win_screen.dart';
import 'package:elfakh/features/ranking/presentation/view/general_ranking.dart';
import 'package:elfakh/features/ranking/presentation/view/playAnd_win_ranking.dart';
import 'package:elfakh/features/ranking/presentation/view/ranking_screen.dart';
import 'package:elfakh/features/ranking/presentation/view/ranking_with_friends.dart';
import 'package:elfakh/features/splash/presentation/view/splashScreen.dart';
import 'package:elfakh/features/two_competitor/presentation/view/two_competitor_screen.dart';
import 'package:elfakh/utilies/bottom_nav_bar.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: "/homeSplash",
      builder: (context, state) => const GameHomeScreen(),
    ),
    GoRoute(
      path: "/bottomNavBar",
      builder: (context, state) => const BottomNavBar(),
    ),
    GoRoute(
      path: "/competitionsScreen",
      builder: (context, state) => const CompetitionsScreen(
        screenTitle: "مسابقات",
      ),
    ),

    GoRoute(
      path: "/startingCompetition",
      builder: (context, state) {
        final screenTitle = state.extra as String? ?? "Default Title";
        return StartingCompetition(screenTitle: screenTitle,);
      },
    ),

    GoRoute(
      path: "/twoCompetitors",
      builder: (context, state) => const TwoCompetitorScreen(),
    ),
    GoRoute(
      path: "/fourCompetitors",
      builder: (context, state) {
        final screenTitle = state.extra as String? ?? "Default Title";
        return FourCompetitorsScreen(screenTitle: screenTitle);
      },
    ),
    GoRoute(
      path: "/fourCompetitorsPlaying",
      builder: (context, state) => const FourCompetitorsPlaying(),
    ),
    GoRoute(
      path: "/playAndWinScreen",
      builder: (context, state) => const PlayAndWinScreen(screenTitle: "العب واكسب",),
    ),

    GoRoute(
      path: "/rankingScreen",
      builder: (context, state) => const RankingScreen(),
    ),

    
    GoRoute(
      path: "/generalRanking",
      builder: (context, state) => const GenralRanking(),
    ),

    GoRoute(
      path: "/friendsRanking",
      builder: (context, state) => const FriendsAmongFriends(),
    ),

    GoRoute(
      path: "/playAndWinRanking",
      builder: (context, state) => const PlayAndWinRanking(),
    ),
  ]);
}
