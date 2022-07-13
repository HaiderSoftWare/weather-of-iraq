import 'package:flutter/material.dart';

import '../Api/getData.dart';

import '../Api/links.dart';
import '../Model/weather.dart';
import '../components/cardWeather.dart';
import '../constnat.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: const Center(
          child: Text(
            'طقس العراق ',
            style: TextStyle(fontSize: 20, color: Colors.black87),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: FutureBuilder<Weather>(
                      future: GetDataFromApi(WeatherBaghdad),
                      builder: (context, snapshot) {
                        return CardCustom(
                          nameCity: 'بغداد',
                          image: '${snapshot.data?.weather[0]["icon"]}.png',
                          temp: snapshot.data?.main['temp'] ?? 0.0,
                          weather:
                              '${snapshot.data?.weather[0]['description']}',
                          main: '${snapshot.data?.main['humidity']} الرطوبة',
                          wind:
                              '${snapshot.data?.wind['speed'].toString()} سرعة الرياح',
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 2),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: FutureBuilder<Weather>(
                      future: GetDataFromApi(WeatherBasra),
                      builder: (context, snapshot) {
                        return CardCustom(
                          nameCity: 'بصرة',
                          image: '${snapshot.data?.weather[0]["icon"]}.png',
                          temp: snapshot.data?.main['temp'] ?? 0.0,
                          weather:
                              '${snapshot.data?.weather[0]['description']}',
                          main: '${snapshot.data?.main['humidity']} الرطوبة',

                          wind:
                              '${snapshot.data?.wind['speed'].toString()} سرعة الرياح',
                          // temp: snapshot.data?.wind.toString(),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 2),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: FutureBuilder<Weather>(
                      future: GetDataFromApi(WeatherMosul),
                      builder: (context, snapshot) {
                        return CardCustom(
                          nameCity: 'موصل',
                          image: '${snapshot.data?.weather[0]['icon']}.png',
                          temp: snapshot.data?.main['temp'] ?? 0.0,
                          weather:
                              '${snapshot.data?.weather[0]['description']}',
                          main: '${snapshot.data?.main['humidity']} الرطوبة',

                          wind:
                              '${snapshot.data?.wind['speed'].toString()} سرعة الرياح',
                          // temp: snapshot.data?.wind.toString(),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 2),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: FutureBuilder<Weather>(
                      future: GetDataFromApi(WeatherErbial),
                      builder: (context, snapshot) {
                        return CardCustom(
                          nameCity: 'أربيل',
                          image: '${snapshot.data?.weather[0]['icon']}.png',
                          temp: snapshot.data?.main['temp'] ?? 0.0,
                          weather:
                              '${snapshot.data?.weather[0]['description']}',
                          main: '${snapshot.data?.main['humidity']} الرطوبة',

                          wind:
                              '${snapshot.data?.wind['speed'].toString()} سرعة الرياح',
                          // temp: snapshot.data?.wind.toString(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: FutureBuilder<Weather>(
                      future: GetDataFromApi(WeatherDuhok),
                      builder: (context, snapshot) {
                        return CardCustom(
                          nameCity: 'دهوك',
                          image: '${snapshot.data?.weather[0]['icon']}.png',
                          temp: snapshot.data?.main['temp'] ?? 0.0,
                          weather:
                              '${snapshot.data?.weather[0]['description']}',
                          main: '${snapshot.data?.main['humidity']} الرطوبة',
                          wind:
                              '${snapshot.data?.wind['speed'].toString()} سرعة الرياح',
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 2),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: FutureBuilder<Weather>(
                      future: GetDataFromApi(WeatherSulaymaniyah),
                      builder: (context, snapshot) {
                        return CardCustom(
                          nameCity: 'السليمانية',
                          image: '${snapshot.data?.weather[0]['icon']}.png',
                          temp: snapshot.data?.main['temp'] ?? 0.0,
                          weather:
                              '${snapshot.data?.weather[0]['description']}',
                          main: '${snapshot.data?.main['humidity']} الرطوبة',

                          wind:
                              '${snapshot.data?.wind['speed'].toString()} سرعة الرياح',
                          // temp: snapshot.data?.wind.toString(),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 2),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: FutureBuilder<Weather>(
                      future: GetDataFromApi(WeatherKirkuk),
                      builder: (context, snapshot) {
                        return CardCustom(
                          nameCity: 'كركوك',
                          image: '${snapshot.data?.weather[0]['icon']}@.png',
                          temp: snapshot.data?.main['temp'] ?? 0.0,
                          weather:
                              '${snapshot.data?.weather[0]['description']}',
                          main: '${snapshot.data?.main['humidity']} الرطوبة',

                          wind:
                              '${snapshot.data?.wind['speed'].toString()} سرعة الرياح',
                          // temp: snapshot.data?.wind.toString(),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 2),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: FutureBuilder<Weather>(
                      future: GetDataFromApi(WeatherAnbar),
                      builder: (context, snapshot) {
                        return CardCustom(
                          nameCity: 'أنبار',
                          image: '${snapshot.data?.weather[0]['icon']}.png',
                          temp: snapshot.data?.main['temp'] ?? 0.0,
                          weather:
                              '${snapshot.data?.weather[0]['description']}',
                          main: '${snapshot.data?.main['humidity']} الرطوبة',

                          wind:
                              '${snapshot.data?.wind['speed'].toString()} سرعة الرياح',
                          // temp: snapshot.data?.wind.toString(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: FutureBuilder<Weather>(
                      future: GetDataFromApi(WeatherTikrit),
                      builder: (context, snapshot) {
                        return CardCustom(
                          nameCity: 'تكريت',
                          image: '${snapshot.data?.weather[0]['icon']}.png',
                          temp: snapshot.data?.main['temp'] ?? 0.0,
                          weather:
                              '${snapshot.data?.weather[0]['description']}',
                          main: '${snapshot.data?.main['humidity']} الرطوبة',
                          wind:
                              '${snapshot.data?.wind['speed'].toString()} سرعة الرياح',
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 2),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: FutureBuilder<Weather>(
                      future: GetDataFromApi(WeatherNasiriyah),
                      builder: (context, snapshot) {
                        return CardCustom(
                          nameCity: 'الناصرية',
                          image: '${snapshot.data?.weather[0]['icon']}.png',
                          temp: snapshot.data?.main['temp'] ?? 0.0,
                          weather:
                              '${snapshot.data?.weather[0]['description']}',
                          main: '${snapshot.data?.main['humidity']} الرطوبة',

                          wind:
                              '${snapshot.data?.wind['speed'].toString()} سرعة الرياح',
                          // temp: snapshot.data?.wind.toString(),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 2),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: FutureBuilder<Weather>(
                      future: GetDataFromApi(WeatherSamawa),
                      builder: (context, snapshot) {
                        return CardCustom(
                          nameCity: 'السماوة',
                          image: '${snapshot.data?.weather[0]['icon']}.png',
                          temp: snapshot.data?.main['temp'] ?? 0.0,
                          weather:
                              '${snapshot.data?.weather[0]['description']}',
                          main: '${snapshot.data?.main['humidity']} الرطوبة',

                          wind:
                              '${snapshot.data?.wind['speed'].toString()} سرعة الرياح',
                          // temp: snapshot.data?.wind.toString(),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 2),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: FutureBuilder<Weather>(
                      future: GetDataFromApi(WeatherAmarah),
                      builder: (context, snapshot) {
                        return CardCustom(
                          nameCity: 'ميسان',
                          image: '${snapshot.data?.weather[0]['icon']}.png',
                          temp: snapshot.data?.main['temp'] ?? 0.0,
                          weather:
                              '${snapshot.data?.weather[0]['description']}',
                          main: '${snapshot.data?.main['humidity']} الرطوبة',

                          wind:
                              '${snapshot.data?.wind['speed'].toString()} سرعة الرياح',
                          // temp: snapshot.data?.wind.toString(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: FutureBuilder<Weather>(
                      future: GetDataFromApi(WeatherDiwaniyah),
                      builder: (context, snapshot) {
                        return CardCustom(
                          nameCity: 'الديوانية',
                          image: '${snapshot.data?.weather[0]['icon']}.png',
                          temp: snapshot.data?.main['temp'] ?? 0.0,
                          weather:
                              '${snapshot.data?.weather[0]['description']}',
                          main: '${snapshot.data?.main['humidity']} الرطوبة',
                          wind:
                              '${snapshot.data?.wind['speed'].toString()} سرعة الرياح',
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 2),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: FutureBuilder<Weather>(
                      future: GetDataFromApi(WeatherKut),
                      builder: (context, snapshot) {
                        return CardCustom(
                          nameCity: 'الكوت',
                          image: '${snapshot.data?.weather[0]['icon']}.png',
                          temp: snapshot.data?.main['temp'] ?? 0.0,
                          weather:
                              '${snapshot.data?.weather[0]['description']}',
                          main: '${snapshot.data?.main['humidity']} الرطوبة',

                          wind:
                              '${snapshot.data?.wind['speed'].toString()} سرعة الرياح',
                          // temp: snapshot.data?.wind.toString(),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 2),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: FutureBuilder<Weather>(
                      future: GetDataFromApi(WeatherKarbala),
                      builder: (context, snapshot) {
                        return CardCustom(
                          nameCity: 'كربلاء',
                          image: '${snapshot.data?.weather[0]['icon']}.png',
                          temp: snapshot.data?.main['temp'] ?? 0.0,
                          weather:
                              '${snapshot.data?.weather[0]['description']}',
                          main: '${snapshot.data?.main['humidity']} الرطوبة',

                          wind:
                              '${snapshot.data?.wind['speed'].toString()} سرعة الرياح',
                          // temp: snapshot.data?.wind.toString(),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 2),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: FutureBuilder<Weather>(
                      future: GetDataFromApi(WeatherNajaf),
                      builder: (context, snapshot) {
                        return CardCustom(
                          nameCity: 'النجف',
                          image: '${snapshot.data?.weather[0]["icon"]}.png',
                          temp: snapshot.data?.main['temp'] ?? 0.0,
                          weather:
                              '${snapshot.data?.weather[0]['description']}',
                          main: '${snapshot.data?.main['humidity']} الرطوبة',

                          wind:
                              '${snapshot.data?.wind['speed'].toString()} سرعة الرياح',
                          // temp: snapshot.data?.wind.toString(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: FutureBuilder<Weather>(
                      future: GetDataFromApi(WeatherSamarra),
                      builder: (context, snapshot) {
                        return CardCustom(
                          nameCity: 'سامراء',
                          image: '${snapshot.data?.weather[0]['icon']}.png',
                          temp: snapshot.data?.main['temp'] ?? 0.0,
                          weather:
                              '${snapshot.data?.weather[0]['description']}',
                          main: '${snapshot.data?.main['humidity']} الرطوبة',
                          wind:
                              '${snapshot.data?.wind['speed'].toString()} سرعة الرياح',
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 2),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: FutureBuilder<Weather>(
                      future: GetDataFromApi(WeatherBabylon),
                      builder: (context, snapshot) {
                        return CardCustom(
                          nameCity: 'بابل',
                          image: '${snapshot.data?.weather[0]['icon']}.png',
                          temp: snapshot.data?.main['temp'] ?? 0.0,
                          weather:
                              '${snapshot.data?.weather[0]['description']}',
                          main: '${snapshot.data?.main['humidity']} الرطوبة',

                          wind:
                              '${snapshot.data?.wind['speed'].toString()} سرعة الرياح',
                          // temp: snapshot.data?.wind.toString(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
