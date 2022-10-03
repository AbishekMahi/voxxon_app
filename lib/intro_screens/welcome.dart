import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/constants.dart';
import 'login.dart';

final Uri _url = Uri.parse('https://abishekmahi.github.io/voxxon/');

class Welcome extends StatefulWidget {
  const Welcome({Key? key, required String title}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

void _launchUrl() async {
  if (!await launchUrl(_url)) throw 'Could not launch $_url';
}

class _WelcomeState extends State<Welcome> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      body: SafeArea(
        bottom: false,
        child: Container(
          decoration: const BoxDecoration(),
          child: Stack(
            children: [
              PageView(
                controller: _controller,
                children: const <Widget>[
                  // page1
                  WelcomePage(
                    lottie: 'assets/lottie/waves.json',
                    title: 'Welcome to Voxxon',
                    msgtxt: 'Search the songs by the sound waves.',
                  ),

                  // page 2
                  WelcomePage(
                    lottie: 'assets/lottie/waves.json',
                    title: 'Welcome to Voxxon',
                    msgtxt: 'Search the songs by the sound waves.',
                  ),

                  // page 3
                  WelcomePage(
                    lottie: 'assets/lottie/waves.json',
                    title: 'Welcome to Voxxon',
                    msgtxt: 'Search the songs by the sound waves.',
                  ),

                  // page 4
                  WelcomePage(
                    lottie: 'assets/lottie/waves.json',
                    title: 'Welcome to Voxxon',
                    msgtxt: 'Search the songs by the sound waves.',
                  ),
                ],
              ),
              Container(
                alignment: const Alignment(0, 0.65),
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 4,
                  effect: const WormEffect(
                      spacing: 10.0,
                      dotWidth: 10.0,
                      dotHeight: 10.0,
                      dotColor: Colors.grey,
                      activeDotColor: mainColor),
                ),
              ),

              // Get started button
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(mainColor),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      onPressed: _launchUrl,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 26,
                            color: Color(0xFF35332C),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Pure Thin',
                          ),
                        ),
                      ),
                      // onPressed: () {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const Login()),
                      //   );
                      // },
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomePage extends StatelessWidget {
  final String title;
  final String msgtxt;
  final String lottie;
  // final String? assetImg;
  const WelcomePage({
    Key? key,
    required this.title,
    required this.msgtxt,
    required this.lottie,
    // this.assetImg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset(lottie),
          // Image.asset(assetImg),
          const SizedBox(height: 10),
          Text(
            textAlign: TextAlign.center,
            title,
            style: const TextStyle(
              fontSize: 32,
              color: mainColor,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pure Thin',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            textAlign: TextAlign.center,
            msgtxt,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontFamily: 'Pure Thin',
            ),
          ),
          const SizedBox(height: 120),
        ],
      ),
    );
  }
}

// Widget welcomePage({
//   required String title,
//   required String msgtxt,
//   // required void Function() ontouch,
// }) {}
