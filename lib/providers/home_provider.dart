import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:weather_app/model/meteoblue_query_param.dart';
import 'package:weather_app/model/meteoblue_response_model.dart';
import 'package:weather_app/providers/theme_provider.dart';
import 'package:weather_app/repository/meteoblue_repository.dart';
import 'package:weather_app/theme/app_theme.dart';
import 'package:weather_app/utils/api_key.dart';

class HomeProvider extends ChangeNotifier {
  late MeteoBlueResponseModel weatherData;
  bool _isLoading = false;
  bool _isMainWeatherCardShow = true;
  bool _isConnectionFail = false;
  bool _isSomethingWentWrong = true;

  setWeatherData(MeteoBlueResponseModel model) {
    weatherData = model;
    notifyListeners();
  }

  MeteoBlueResponseModel? get getWeatherData => weatherData;

  setIsLoading(bool event) {
    _isLoading = event;
    notifyListeners();
  }

  bool get getIsLoading => _isLoading;

  setIsMainWeatherCardShow(bool event) {
    _isMainWeatherCardShow = event;
    notifyListeners();
  }

  bool get getIsConnectionFail => _isConnectionFail;

  setIsConnectionFail(bool event) {
    _isConnectionFail = event;
    notifyListeners();
  }

  bool get getIsSomethingWentWrong => _isSomethingWentWrong;

  setIsSomethingWentWrong(bool event) {
    _isSomethingWentWrong = event;
    notifyListeners();
  }

  bool get getIsMainWeatherCardShow => _isMainWeatherCardShow;

  loadWeatherData() async {
    setIsLoading(true);
    _isConnectionFail = false;
    _isSomethingWentWrong = false;
    final queryParams = MeteoblueQueryParam(
      apikey: ApiKey.METEOBLUE_API_KEY,
      lat: "48.8036",
      lon: "2.13424",
      asl: "130",
      format: "json",
      tz: "Europe%2FParis",
    );
    try {
      final weatherData = await MeteoblueRepository()
          .fetchWeatherData(queryParams: queryParams);
      setWeatherData(weatherData);
      setIsLoading(false);
    } catch (e) {
      if (e == SocketException) {
        _isConnectionFail = true;
      } else {
        _isSomethingWentWrong = true;
      }

      setIsLoading(false);
    }
  }

  HomeProvider() {
    loadWeatherData();
  }

  pressedChangeTheme({required ThemeProvider themeProvider}) {
    themeProvider.setTheme(themeProvider.getTheme != AppTheme.lightTheme);
  }
}
