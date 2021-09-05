class WeatherIconMapper {
  ///
  /// https://docs.meteoblue.com/en/meteo/variables/pictograms
  ///
  getDayAndNightPictogram({required int pictocode, required bool isdaylight}) {
    switch (pictocode) {
      case 1:
        return "assets/images/${isdaylight ? '01_day' : '01_night'}.svg";
      case 2:
        return "assets/images/${isdaylight ? '02_day' : '02_night'}.svg";
      case 3:
        return "assets/images/${isdaylight ? '03_day' : '03_night'}.svg";
      case 4:
        return "assets/images/${isdaylight ? '04_day' : '04_night'}.svg";
      case 5:
        return "assets/images/${isdaylight ? '05_day' : '05_night'}.svg";
      case 6:
        return "assets/images/${isdaylight ? '06_day' : '06_night'}.svg";
      case 7:
        return "assets/images/${isdaylight ? '07_day' : '07_night'}.svg";
      case 8:
        return "assets/images/${isdaylight ? '08_day' : '08_night'}.svg";
      case 9:
        return "assets/images/${isdaylight ? '09_day' : '09_night'}.svg";
      case 10:
        return "assets/images/${isdaylight ? '10_day' : '10_night'}.svg";
      case 11:
        return "assets/images/${isdaylight ? '11_day' : '11_night'}.svg";
      case 12:
        return "assets/images/${isdaylight ? '12_day' : '12_night'}.svg";
      case 13:
        return "assets/images/${isdaylight ? '13_day' : '13_night'}.svg";
      case 14:
        return "assets/images/${isdaylight ? '14_day' : '14_night'}.svg";
      case 15:
        return "assets/images/${isdaylight ? '15_day' : '15_night'}.svg";
      case 16:
        return "assets/images/${isdaylight ? '16_day' : '16_night'}.svg";
      case 17:
        return "assets/images/${isdaylight ? '17_day' : '17_night'}.svg";
      case 18:
        return "assets/images/${isdaylight ? '18_day' : '18_night'}.svg";
      case 19:
        return "assets/images/${isdaylight ? '19_day' : '19_night'}.svg";
      case 20:
        return "assets/images/${isdaylight ? '20_day' : '20_night'}.svg";
      case 21:
        return "assets/images/${isdaylight ? '21_day' : '21_night'}.svg";
      case 22:
        return "assets/images/${isdaylight ? '22_day' : '22_night'}.svg";
      case 23:
        return "assets/images/${isdaylight ? '23_day' : '23_night'}.svg";
      case 24:
        return "assets/images/${isdaylight ? '24_day' : '24_night'}.svg";
      case 25:
        return "assets/images/${isdaylight ? '25_day' : '25_night'}.svg";
      case 26:
        return "assets/images/${isdaylight ? '26_day' : '26_night'}.svg";
      case 27:
        return "assets/images/${isdaylight ? '27_day' : '27_night'}.svg";
      case 28:
        return "assets/images/${isdaylight ? '28_day' : '28_night'}.svg";
      case 29:
        return "assets/images/${isdaylight ? '29_day' : '29_night'}.svg";
      case 30:
        return "assets/images/${isdaylight ? '30_day' : '30_night'}.svg";
      case 31:
        return "assets/images/${isdaylight ? '31_day' : '31_night'}.svg";
      case 32:
        return "assets/images/${isdaylight ? '32_day' : '32_night'}.svg";
      case 33:
        return "assets/images/${isdaylight ? '33_day' : '33_night'}.svg";
      case 34:
        return "assets/images/${isdaylight ? '34_day' : '34_night'}.svg";
      case 35:
        return "assets/images/${isdaylight ? '35_day' : '3_night'}.svg";
    }
  }

  getIdayPictograms({
    required int pictocode,
  }) {
    switch (pictocode) {
      case 1:
        return "assets/images/01_iday.svg";
      case 2:
        return "assets/images/02_iday.svg";
      case 3:
        return "assets/images/03_iday.svg";
      case 4:
        return "assets/images/04_iday.svg";
      case 5:
        return "assets/images/05_iday.svg";
      case 6:
        return "assets/images/06_iday.svg";
      case 7:
        return "assets/images/07_iday.svg";
      case 8:
        return "assets/images/08_iday.svg";
      case 9:
        return "assets/images/09_iday.svg";
      case 10:
        return "assets/images/10_iday.svg";
      case 11:
        return "assets/images/11_iday.svg";
      case 12:
        return "assets/images/12_iday.svg";
      case 13:
        return "assets/images/13_iday.svg";
      case 14:
        return "assets/images/14_iday.svg";
      case 15:
        return "assets/images/15_iday.svg";
      case 16:
        return "assets/images/16_iday.svg";
      case 17:
        return "assets/images/17_iday.svg";
      case 18:
        return "assets/images/18_iday.svg";
      case 19:
        return "assets/images/19_iday.svg";
    }
  }

/// https://docs.meteoblue.com/en/weather-apis/packages-api/forecast-data#wind-speed-and-direction
 
  getWindArrow({required int winddirection}) {
    if (winddirection >= 0 && winddirection <= 30) {
      return "assets/images/wind_arrows_black/NNE.png";
    } else if (winddirection > 30 && winddirection <= 60) {
      return "assets/images/wind_arrows_black/NE.png";
    } else if (winddirection > 60 && winddirection < 90) {
      return "assets/images/wind_arrows_black/ENE.png";
    } else if (winddirection >= 90 && winddirection < 120) {
      return "assets/images/wind_arrows_black/ESE.png";
    } else if (winddirection > 120 && winddirection <= 150) {
      return "assets/images/wind_arrows_black/SE.png";
    } else if (winddirection > 150 && winddirection < 180) {
      return "assets/images/wind_arrows_black/SSE.png";
    } else if (winddirection >= 180 && winddirection < 210) {
      return "assets/images/wind_arrows_black/SSW.png";
    } else if (winddirection > 210 && winddirection <= 240) {
      return "assets/images/wind_arrows_black/SW.png";
    } else if (winddirection > 240 && winddirection < 270) {
      return "assets/images/wind_arrows_black/WSW.png";
    } else if (winddirection >= 270 && winddirection <= 300) {
      return "assets/images/wind_arrows_black/WNW.png";
    } else if (winddirection > 300 && winddirection < 330) {
      return "assets/images/wind_arrows_black/NW.png";
    } else if (winddirection >= 330) {
      return "assets/images/wind_arrows_black/NNW.png";
    }
  }
}
