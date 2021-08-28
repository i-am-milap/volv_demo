import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:volv_demo/components/introSlider.dart';
import 'package:volv_demo/images/images.dart';
import 'package:volv_demo/pagees/home.dart';
import 'package:volv_demo/theme/appColors.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  int _currentPage = 0;
  final _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    final double _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            onPageChanged: (int pageIndex) {
              setState(() {
                _currentPage = pageIndex;
              });
            },
            children: [
              IntroSlider(
                introBg: Images.intro1,
                introTitle: "Lorem Ipsum",
                introDescription:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
              ),
              IntroSlider(
                introBg: Images.intro2,
                introTitle: "dolor sit amet",
                introDescription:
                    "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
              ),
              IntroSlider(
                introBg: Images.intro3,
                introTitle: "consectetur adipisci velit",
                introDescription:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
              ),
            ],
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: _screenHeight / 3.18,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 6.0,
                  width: 6.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color:
                        (_currentPage == 0) ? AppColors.black : Colors.black26,
                  ),
                ),
                Container(
                  height: 6.0,
                  width: 6.0,
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color:
                        (_currentPage == 1) ? AppColors.black : Colors.black26,
                  ),
                ),
                Container(
                  height: 6.0,
                  width: 6.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color:
                        (_currentPage == 2) ? AppColors.black : Colors.black26,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 32.0,
            right: 32.0,
            bottom: 0.0,
            height: 180.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.white,
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: SvgPicture.asset(
                            Images.apple,
                            height: 28.0,
                            width: 28.0,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Sign in with Apple",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                            color: AppColors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.white,
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  onPressed: _signInWithGoogle,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: SvgPicture.asset(
                            Images.google,
                            height: 28.0,
                            width: 28.0,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Sign in with Google",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                            color: AppColors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future _signInWithGoogle() async {
    // Trigger the authentication flow
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: ['email'],
    );

    try {
      var res = await _googleSignIn.signIn();
      print(res);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    } catch (error) {
      print(error);
    }

    // // Obtain the auth details from the request
    // final GoogleSignInAuthentication googleAuth =
    //     await googleUser.authentication;

    // // Create a new credential
    // final credential = GoogleAuthProvider.credential(
    //   accessToken: googleAuth.accessToken,
    //   idToken: googleAuth.idToken,
    // );

    // // Once signed in, return the UserCredential
    // UserCredential _credential =
    //     await FirebaseAuth.instance.signInWithCredential(credential);
    // print(_credential);
    // return _credential;
  }
}
