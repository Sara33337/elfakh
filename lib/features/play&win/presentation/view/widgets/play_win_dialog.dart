import 'package:elfakh/core/widgets/bordered_text.dart';
import 'package:elfakh/features/play&win/presentation/view/widgets/subscription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class PlayWinDialog extends StatefulWidget {
  const PlayWinDialog({super.key});

  @override
  State<PlayWinDialog> createState() => _PlayWinDialogState();
}

class _PlayWinDialogState extends State<PlayWinDialog> {
  bool showImage = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Dismiss when tapping outside
        if (!showImage) Navigator.pop(context);
      },
      child: Material(
        color: Color(0xFF2A2929).withOpacity(0.69),
        child: Center(
          child: showImage
              ? GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    GoRouter.of(context).push("/playAndWinScreen");
                  },
                  child: SvgPicture.asset("assets/images/playwing_dialog.svg"))
              : GestureDetector(
                  onTap: () {}, // Absorb tap inside dialog
                  child: Container(
                    width: 366,
                    height: 385,
                    padding: const EdgeInsets.only(
                        top: 15, left: 10, right: 10, bottom: 20),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFFEECE13), Color(0xFFB210FF)],
                      ),
                      borderRadius: BorderRadius.circular(20.08),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          textDirection: TextDirection.rtl,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  showImage = true;
                                });
                              },
                              icon: const Icon(Icons.close_rounded,
                                  color: Colors.white),
                            ),
                            const Expanded(
                              child: Center(
                                child: BorderdText(
                                  text: "إشتراك العب واكسب",
                                  fontSize: 14.6,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: 349,
                          height: 282,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF5EFEF),
                            borderRadius: BorderRadius.circular(20.08),
                          ),
                          child: const Column(
                            children: [
                              Subscription(),
                              Subscription(),
                              Subscription(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
