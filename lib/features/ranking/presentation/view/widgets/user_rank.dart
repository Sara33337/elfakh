import 'package:elfakh/core/widgets/profile_pic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserRank extends StatelessWidget {
  const UserRank({
    super.key,
    required this.userRank
  });
  final int userRank;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            textDirection: TextDirection.rtl,
            children: [
              SvgPicture.asset("assets/images/silver_crown.svg"),
              const SizedBox(width: 4,),
               Text(
                userRank.toString(),
                style:const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              )
            ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              ProfilePic(
                borderHeight: 47.52,
                borderWidth: 42.54,
                imageWidth: 40,
                imageheight: 40,
              ),
              const SizedBox(width: 4,),
              const Column(
                children: [
                  Text(
                    "احمد فايز 80",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Text(
                    "ID: 239720",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              )
            ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Container(
                width: 43.33,
                height: 19.39,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Color(0xFF24252A), Color(0xFF3E4144)]),
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                  child: Text(
                    "LV. 3",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 8.83,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              const SizedBox(width: 4,),
              Stack(
                children: [
                  Container(
                  width: 73.07,
                  height: 21.65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(180),
                      border: Border.all(color: Color(0xFFDC7744))),
                      child:const Center(
                        child: Text(
                          
                        "15k",
                      
                        style: TextStyle(
                        
                            fontSize: 10.83,
                            fontWeight: FontWeight.w700),
                                            ),
                      ),
                ),
                Positioned(
                  left: 53,
                  bottom: 1,

                  child: Image.asset("assets/images/Coin.png",
                  width: 21.38,
                  height: 23.19,))
                ],
            
              )
            ],
          )
        ],
      ),
    );
  }
}
