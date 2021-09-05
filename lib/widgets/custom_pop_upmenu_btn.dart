import 'package:flutter/material.dart';
import 'package:weather_app/providers/home_provider.dart';
import 'package:weather_app/providers/theme_provider.dart';

class CustomPopUpmenuBtn extends StatelessWidget {
  const CustomPopUpmenuBtn({
    Key? key,
    required this.themeProvider,
    required this.provider,
  }) : super(key: key);

  final ThemeProvider themeProvider;
  final HomeProvider provider;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        onSelected: (val) {
          switch (val) {
            case 1:
              provider.loadWeatherData();
              break;
            case 2:
              provider.pressedChangeTheme(themeProvider: themeProvider);
              break;
          }
        },
        child: SizedBox(
          width: 50,
          child: Align(
            alignment: Alignment.centerRight,
            child: Icon(Icons.more_vert),
          ),
        ),
        itemBuilder: (context) => [
              PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: [
                      Icon(Icons.refresh),
                      SizedBox(
                        width: 4,
                      ),
                      Text("Refresh"),
                    ],
                  )),
              PopupMenuItem(
                  value: 2,
                  child: Row(
                    children: [
                      Icon(Icons.brightness_medium),
                      SizedBox(
                        width: 4,
                      ),
                      Text("Night Mode ON/OFF"),
                    ],
                  )),
            ]);
  }
}
