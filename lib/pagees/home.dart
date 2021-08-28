import 'package:flutter/material.dart';
import 'package:volv_demo/images/images.dart';
import 'package:volv_demo/theme/appColors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        fit: StackFit.passthrough,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Images.homeBg),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text("hello"),
            ),
          ),
          Positioned(
            left: 16.0,
            top: 32.0,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white60,
              ),
            ),
          ),
          Positioned(
            left: 16.0,
            right: 16.0,
            bottom: 16.0,
            child: Container(
              height: _screenHeight / 1.95,
              padding: const EdgeInsets.only(
                top: 16.0,
                right: 16.0,
                bottom: 8.0,
                left: 16.0,
              ),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.1,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.1,
                      height: 1.4,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.schedule_outlined,
                            size: 18.0,
                            color: AppColors.greyColor,
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            "Today",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: AppColors.greyColor,
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        child: Text(
                          "CHECK IT OUT",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: AppColors.secondaryColor,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.1,
                          ),
                        ),
                        onPressed: () {},
                        style: TextButton.styleFrom(),
                      ),
                      InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Share",
                              style: TextStyle(
                                fontSize: 14.0,
                                color: AppColors.greyColor,
                              ),
                            ),
                            SizedBox(width: 4.0),
                            Icon(
                              Icons.ios_share_rounded,
                              size: 18.0,
                              color: AppColors.greyColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
