import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  String nameCity;
  String wind;
  String weather;
  double temp;
  String image;
  String main;
  CardCustom({
    required this.nameCity,
    required this.main,
    required this.temp,
    required this.image,
    required this.weather,
    required this.wind,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFFFFCE5D),
      width: 210,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            nameCity,
            style: TextStyle(fontSize: 22),
          ),
          CachedNetworkImage(
            imageUrl: 'https://openweathermap.org/img/wn/$image',
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          Text('${(temp - 273.15).round()} درجة الحرارة '),
          Text(weather.toString()),
          SizedBox(height: 10),
          Text(main.toString()),
          Text(wind.toString()),
        ],
      ),
    );
  }
}
