import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/providers/home_provider.dart';
import 'package:weather_app/providers/theme_provider.dart';
import 'package:weather_app/widgets/custom_connection_error_ui.dart';
import 'package:weather_app/widgets/custom_error_ui.dart';
import 'package:weather_app/widgets/custom_loading_indicator.dart';
import 'package:weather_app/widgets/custom_pop_upmenu_btn.dart';
import 'package:weather_app/widgets/day_time_vertical_card.dart';
import 'package:weather_app/widgets/day_weather_card.dart';
import 'package:weather_app/widgets/main_weather_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ThemeProvider themeProvider;
  final ScrollController _weaterscrlController = ScrollController();

  @override
  void initState() {
    themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    listeningToScroll();
    super.initState();
  }

  listeningToScroll() {
    _weaterscrlController.addListener(() {
      final event = _weaterscrlController.position.userScrollDirection ==
          ScrollDirection.forward;
      Provider.of<HomeProvider>(context, listen: false)
          .setIsMainWeatherCardShow(event);
    });
  }

  _getIsCurrentTimeSlot({required int time}) {
    if (time >= 00 && time < 03) {
      return 0;
    } else if (time >= 03 && time < 06) {
      return 1;
    } else if (time >= 06 && time < 09) {
      return 2;
    } else if (time >= 09 && time < 12) {
      return 3;
    } else if (time >= 12 && time < 15) {
      return 4;
    } else if (time >= 15 && time < 18) {
      return 5;
    } else if (time >= 18 && time < 21) {
      return 6;
    } else if (time >= 21 && time < 24) {
      return 7;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Consumer<HomeProvider>(builder: (context, provider, child) {
            final time = DateFormat.Hm().format(DateTime.now()).split(":")[0];

            return provider.getIsLoading
                ? CustomLoadingIndicator()
                : provider.getIsConnectionFail
                    ? CustomConnectionErrorUI(
                        onRefresh: () => provider.loadWeatherData(),
                      )
                    : provider.getIsSomethingWentWrong
                        ? CustomErrorUI(
                            onRefresh: () => provider.loadWeatherData(),
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(" source : meteoblue"),
                                  CustomPopUpmenuBtn(
                                    themeProvider: themeProvider,
                                    provider: provider,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              provider.getIsMainWeatherCardShow
                                  ? MainWeatherCard(
                                      time: DateFormat.Hm()
                                          .format(DateTime.now()),
                                      pictocode: provider
                                              .getWeatherData!.data3H.pictocode[
                                          _getIsCurrentTimeSlot(
                                              time: int.parse(time))],
                                      temperature: provider
                                          .getWeatherData!
                                          .data3H
                                          .temperature[_getIsCurrentTimeSlot(
                                              time: int.parse(time))]
                                          .toString(),
                                      isDayLight: provider.getWeatherData!
                                                  .data3H.isdaylight[
                                              _getIsCurrentTimeSlot(
                                                  time: int.parse(time))] ==
                                          1,
                                      windSpeed: provider
                                          .getWeatherData!
                                          .data3H
                                          .windspeed[_getIsCurrentTimeSlot(
                                              time: int.parse(time))]
                                          .toString(),
                                    )
                                  : SizedBox(),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                " Today (${DateFormat('EEEE').format(DateTime.now())})",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 160,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: 8,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return DayTimeVerticalCard(
                                        isdaylight: provider.getWeatherData!
                                                .data3H.isdaylight[index + 1] ==
                                            1,
                                        pictocode: provider.getWeatherData!
                                            .data3H.pictocode[index + 1],
                                        temperature: provider.getWeatherData!
                                            .data3H.temperature[index + 1]
                                            .toString()
                                            .split(".")[0],
                                        time: provider.getWeatherData!.data3H
                                            .time[index + 1]
                                            .split(" ")[1],
                                      );
                                    }),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                " Next Week ...",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: ListView.builder(
                                    controller: _weaterscrlController,
                                    shrinkWrap: true,
                                    itemCount: provider
                                        .getWeatherData!.dataDay.time.length,
                                    itemBuilder: (ctx, idx) {
                                      final _list =
                                          provider.getWeatherData!.dataDay;
                                      return DayWeatherCard(
                                        isToday: idx == 0,
                                        isTomorrow: idx == 1,
                                        pictocode: _list.pictocode[idx],
                                        precipitation:
                                            _list.precipitation[idx].toString(),
                                        temperature: _list.temperatureMean[idx]
                                            .toString(),
                                        time: _list.time[idx],
                                        uvHours: _list.uvindex[idx].toString(),
                                        windDir: _list.winddirection[idx],
                                        windSpeed:
                                            _list.windspeedMean[idx].toString(),
                                      );
                                    }),
                              )
                            ],
                          );
          }),
        ),
      ),
    );
  }
}
