import 'package:al_toolbox/core/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:introduction_screen/introduction_screen.dart';

class BadySplashView extends StatelessWidget {
  const BadySplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      curve: Curves.easeInBack,
      animationDuration: 500,
      pages: [
        PageViewModel(
          title: 'Importance of the Application',
          image: Image(
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
              image: const AssetImage(
                "assets/images/ai-chip-artificial-intelligence-future-technology-innovation.jpg",
              )), // image:ass,
          body:
              'In todays rapidly evolving technological landscape, the integration of artificial intelligence (AI) has become increasingly prevalent across various industries. As AI continues to revolutionize processes and enhance efficiency, the significance of having an application that encompasses all AI tools cannot be overstated.',
        ),
        PageViewModel(
          title: 'The Importance of Artificial Intelligence',
          image: Image(
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
            image: const AssetImage(
                "assets/images/pixlr-image-generator-b10a841a-8c7c-4fb5-a3f7-897344d2be0d.png"),
          ),
          body:
              'Enhancing Efficiency and Productivity: AI enables automation of tasks, processes, and decision-making, leading to increased efficiency and productivity across various sectors. From manufacturing to healthcare, AI streamlines operations, reduces human error, and optimizes resource utilization.',
        ),
        PageViewModel(
          image: Image(
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
              image: const AssetImage(
                  "assets/images/ai-nuclear-energy-future-innovation-disruptive-technology.jpg")),
          title: 'The Impact of Artificial Intelligence on Daily Life',
          // image: AssetImage('assets/images/bady_logo.png'),
          body:
              "In this topic, we will discuss the impact of artificial intelligence technologies on the daily lives of individuals and communities. We will explore the use of artificial intelligence in various fields such as healthcare, commerce, and entertainment, shedding light on the benefits and challenges that may arise as a result of this impact.",
        ),
      ],
      onDone: () {
        GoRouter.of(context).push(AppRouter.kHomeview);
      },
      showSkipButton: true,
      skip: const Text(
        "Skip",
        style: TextStyle(color: Colors.black),
      ),
      next: const Text(
        "Next",
        style: TextStyle(color: Colors.black),
      ),
      done: const Text(
        "Done",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
