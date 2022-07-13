import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class splash_Screen extends StatelessWidget {
  const splash_Screen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.network(
          'https://images.vexels.com/media/users/3/154437/isolated/preview/4010169e415f3b72254ff19fd275ec29-dark-cloud-weather-icon.png'),
      title: const Text(
        "طقس العراق ",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      loaderColor: Colors.blue,
      showLoader: true,
      loadingText: const Text("..تحميل"),
      navigator: Home(),
      durationInSeconds: 2,
    );
  }
}
