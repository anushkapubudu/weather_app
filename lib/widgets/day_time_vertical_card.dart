import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/utils/constants.dart';
import 'package:weather_app/utils/weather_icon_mapper.dart';

class DayTimeVerticalCard extends StatelessWidget {
  const DayTimeVerticalCard({
    Key? key,
    required this.time,
    required this.temperature,
    required this.pictocode,
    required this.isdaylight,
  }) : super(key: key);

  final String time;
  final int pictocode;
  final bool isdaylight;
  final String temperature;

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      child: SizedBox(
        height: 150,
        width: 80,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(time),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 25,
              backgroundColor: isdaylight ? Colors.blueAccent : Colors.blueGrey,
              child: SvgPicture.asset(
                WeatherIconMapper().getDayAndNightPictogram(
                  pictocode: pictocode,
                  isdaylight: isdaylight,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              temperature + " " + Constants.TEMPERATURE_UNIT,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
