import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/utils/constants.dart';
import 'package:weather_app/utils/weather_icon_mapper.dart';

class MainWeatherCard extends StatelessWidget {
  const MainWeatherCard({
    Key? key,
    required this.time,
    required this.pictocode,
    required this.temperature,
    required this.isDayLight,
    required this.windSpeed,
  }) : super(key: key);

  final String time;
  final int pictocode;
  final String temperature;
  final String windSpeed;
  final bool isDayLight;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(seconds: 2),
      opacity: 1,
      curve: Curves.elasticInOut,
      child: SizedBox(
        width: double.infinity,
        child: Card(
          borderOnForeground: true,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "${temperature.split(".")[0]} ${Constants.TEMPERATURE_UNIT}",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "$time | $windSpeed km/h",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Versailles, France",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SvgPicture.asset(
                WeatherIconMapper().getDayAndNightPictogram(
                    pictocode: pictocode, isdaylight: isDayLight),
                width: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
