import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/utils/constants.dart';
import 'package:weather_app/utils/weather_icon_mapper.dart';

class DayWeatherCard extends StatelessWidget {
  const DayWeatherCard({
    Key? key,
    required this.time,
    required this.pictocode,
    required this.temperature,
    required this.windSpeed,
    required this.windDir,
    required this.precipitation,
    required this.uvHours,
    this.isToday = false,
    this.isTomorrow = false,
  }) : super(key: key);

  final DateTime time;
  final int pictocode;
  final String temperature;
  final String windSpeed;
  final int windDir;
  final String precipitation;
  final String uvHours;
  final bool isToday;
  final bool isTomorrow;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.blueAccent,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: SvgPicture.asset(
              WeatherIconMapper().getIdayPictograms(pictocode: pictocode),
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              DateFormat('EEEE').format(time) +
                  " ${isToday ? "(Today)" : isTomorrow ? "(Tomorrow)" : ""}",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              "${temperature.split(".")[0]} ${Constants.TEMPERATURE_UNIT}",
              style: TextStyle(
                fontSize: 20,
              ),
            )
          ],
        ),
        subtitle: Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    WeatherIconMapper().getWindArrow(
                      winddirection: windDir,
                    ),
                    color: Theme.of(context).iconTheme.color,
                  ),
                  Text("$windSpeed ${Constants.WINDSPEED_UNIT}"),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/images/sun.png",
                    width: 20,
                  ),
                  Text("$uvHours ${Constants.SUNTIME_UNIT}"),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/images/water_drop.png",
                    width: 20,
                  ),
                  Text("$precipitation ${Constants.PRECIPITATION_UNIT}"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

