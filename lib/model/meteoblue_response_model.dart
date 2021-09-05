// To parse this JSON data, do
//
//     final meteoBlueResponseModel = meteoBlueResponseModelFromJson(jsonString);

import 'dart:convert';

MeteoBlueResponseModel meteoBlueResponseModelFromJson(String str) =>
    MeteoBlueResponseModel.fromJson(json.decode(str));

String meteoBlueResponseModelToJson(MeteoBlueResponseModel data) =>
    json.encode(data.toJson());

class MeteoBlueResponseModel {
  MeteoBlueResponseModel({
    required this.data3H,
    required this.dataDay,
  });

  final Data3H data3H;
  final DataDay dataDay;

  factory MeteoBlueResponseModel.fromJson(Map<String, dynamic> json) =>
      MeteoBlueResponseModel(
        data3H: Data3H.fromJson(json["data_3h"]),
        dataDay: DataDay.fromJson(json["data_day"]),
      );

  Map<String, dynamic> toJson() => {
        "data_3h": data3H.toJson(),
        "data_day": dataDay.toJson(),
      };
}

class Data3H {
  Data3H({
    // required this.rainspot,
    required this.time,
    required this.pictocode,
    required this.precipitation,
    // required this.snowfraction,
    // required this.precipitationProbability,
    required this.temperature,
    required this.felttemperature,
    required this.windspeed,
    required this.winddirection,
    // required this.relativehumidity,
    // required this.sealevelpressure,
    // required this.convectivePrecipitation,
    required this.isdaylight,
    required this.uvindex,
  });

  // final List<String> rainspot;
  final List<String> time;
  final List<int> pictocode;
  final List<double> precipitation;
  // final List<double> snowfraction;
  // final List<int> precipitationProbability;
  final List<double> temperature;
  final List<double> felttemperature;
  final List<double> windspeed;
  final List<int> winddirection;
  // final List<int> relativehumidity;
  // final List<double> sealevelpressure;
  // final List<double> convectivePrecipitation;
  final List<int> isdaylight;
  final List<int> uvindex;

  factory Data3H.fromJson(Map<String, dynamic> json) => Data3H(
        // rainspot: List<String>.from(json["rainspot"].map((x) => x)),
        time: List<String>.from(json["time"].map((x) => x)),
        pictocode: List<int>.from(json["pictocode"].map((x) => x)),
        precipitation:
            List<double>.from(json["precipitation"].map((x) => x.toDouble())),
        // snowfraction: List<double>.from(json["snowfraction"].map((x) => x)),
        // precipitationProbability:
        //     List<int>.from(json["precipitation_probability"].map((x) => x)),
        temperature:
            List<double>.from(json["temperature"].map((x) => x.toDouble())),
        felttemperature:
            List<double>.from(json["felttemperature"].map((x) => x.toDouble())),
        windspeed:
            List<double>.from(json["windspeed"].map((x) => x.toDouble())),
        winddirection: List<int>.from(json["winddirection"].map((x) => x)),
        // relativehumidity:
        //     List<int>.from(json["relativehumidity"].map((x) => x)),
        // sealevelpressure: List<double>.from(
        //     json["sealevelpressure"].map((x) => x.toDouble())),
        // convectivePrecipitation: List<double>.from(
        //     json["convective_precipitation"].map((x) => x.toDouble())),
        isdaylight: List<int>.from(json["isdaylight"].map((x) => x)),
        uvindex: List<int>.from(json["uvindex"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        // "rainspot": List<dynamic>.from(rainspot.map((x) => x)),
        "time": List<dynamic>.from(time.map((x) => x)),
        "pictocode": List<dynamic>.from(pictocode.map((x) => x)),
        "precipitation": List<dynamic>.from(precipitation.map((x) => x)),
        // "snowfraction": List<dynamic>.from(snowfraction.map((x) => x)),
        // "precipitation_probability":
        //     List<dynamic>.from(precipitationProbability.map((x) => x)),
        "temperature": List<dynamic>.from(temperature.map((x) => x)),
        "felttemperature": List<dynamic>.from(felttemperature.map((x) => x)),
        "windspeed": List<dynamic>.from(windspeed.map((x) => x)),
        "winddirection": List<dynamic>.from(winddirection.map((x) => x)),
        // "relativehumidity": List<dynamic>.from(relativehumidity.map((x) => x)),
        // "sealevelpressure": List<dynamic>.from(sealevelpressure.map((x) => x)),
        // "convective_precipitation":
        //     List<dynamic>.from(convectivePrecipitation.map((x) => x)),
        "isdaylight": List<dynamic>.from(isdaylight.map((x) => x)),
        "uvindex": List<dynamic>.from(uvindex.map((x) => x)),
      };
}

class DataDay {
  DataDay({
    required this.time,
    required this.pictocode,
    required this.uvindex,
    required this.temperatureMax,
    required this.temperatureMin,
    required this.temperatureMean,
    // required this.felttemperatureMax,
    // required this.felttemperatureMin,
    required this.winddirection,
    // required this.precipitationProbability,
    // required this.rainspot,
    // required this.predictabilityClass,
    // required this.predictability,
    required this.precipitation,
    // required this.snowfraction,
    // required this.sealevelpressureMax,
    // required this.sealevelpressureMin,
    // required this.sealevelpressureMean,
    // required this.windspeedMax,
    required this.windspeedMean,
    // required this.windspeedMin,
    // required this.relativehumidityMax,
    // required this.relativehumidityMin,
    // required this.relativehumidityMean,
    // required this.convectivePrecipitation,
    // required this.precipitationHours,
    // required this.humiditygreater90Hours,
    // required this.indexto3HvaluesStart,
    // required this.indexto3HvaluesEnd,
  });

  final List<DateTime> time;
  final List<int> pictocode;
  final List<int> uvindex;
  final List<double> temperatureMax;
  final List<double> temperatureMin;
  final List<double> temperatureMean;
  // final List<double> felttemperatureMax;
  // final List<double> felttemperatureMin;
  final List<int> winddirection;
  // final List<int> precipitationProbability;
  // final List<String> rainspot;
  // final List<int> predictabilityClass;
  // final List<int> predictability;
  final List<double> precipitation;
  // final List<double> snowfraction;
  // final List<int> sealevelpressureMax;
  // final List<int> sealevelpressureMin;
  // final List<int> sealevelpressureMean;
  // final List<double> windspeedMax;
  final List<double> windspeedMean;
  // final List<double> windspeedMin;
  // final List<int> relativehumidityMax;
  // final List<int> relativehumidityMin;
  // final List<int> relativehumidityMean;
  // final List<double> convectivePrecipitation;
  // final List<double> precipitationHours;
  // final List<double> humiditygreater90Hours;
  // final List<int> indexto3HvaluesStart;
  // final List<int> indexto3HvaluesEnd;

  factory DataDay.fromJson(Map<String, dynamic> json) => DataDay(
        time: List<DateTime>.from(json["time"].map((x) => DateTime.parse(x))),
        pictocode: List<int>.from(json["pictocode"].map((x) => x)),
        uvindex: List<int>.from(json["uvindex"].map((x) => x)),
        temperatureMax:
            List<double>.from(json["temperature_max"].map((x) => x.toDouble())),
        temperatureMin:
            List<double>.from(json["temperature_min"].map((x) => x.toDouble())),
        temperatureMean: List<double>.from(
            json["temperature_mean"].map((x) => x.toDouble())),
        // felttemperatureMax: List<double>.from(
        //     json["felttemperature_max"].map((x) => x.toDouble())),
        // felttemperatureMin: List<double>.from(
        //     json["felttemperature_min"].map((x) => x.toDouble())),
        winddirection: List<int>.from(json["winddirection"].map((x) => x)),
        // precipitationProbability:
        //     List<int>.from(json["precipitation_probability"].map((x) => x)),
        // rainspot: List<String>.from(json["rainspot"].map((x) => x)),
        // predictabilityClass:
        //     List<int>.from(json["predictability_class"].map((x) => x)),
        // predictability: List<int>.from(json["predictability"].map((x) => x)),
        precipitation:
            List<double>.from(json["precipitation"].map((x) => x.toDouble())),
        // snowfraction: List<double>.from(json["snowfraction"].map((x) => x)),
        // sealevelpressureMax:
        //     List<int>.from(json["sealevelpressure_max"].map((x) => x)),
        // sealevelpressureMin:
        //     List<int>.from(json["sealevelpressure_min"].map((x) => x)),
        // sealevelpressureMean:
        //     List<int>.from(json["sealevelpressure_mean"].map((x) => x)),
        // windspeedMax:
        //     List<double>.from(json["windspeed_max"].map((x) => x.toDouble())),
        windspeedMean:
            List<double>.from(json["windspeed_mean"].map((x) => x.toDouble())),
        // windspeedMin:
        //     List<double>.from(json["windspeed_min"].map((x) => x.toDouble())),
        // relativehumidityMax:
        //     List<int>.from(json["relativehumidity_max"].map((x) => x)),
        // relativehumidityMin:
        //     List<int>.from(json["relativehumidity_min"].map((x) => x)),
        // relativehumidityMean:
        //     List<int>.from(json["relativehumidity_mean"].map((x) => x)),
        // convectivePrecipitation: List<double>.from(
        //     json["convective_precipitation"].map((x) => x.toDouble())),
        // precipitationHours:
        //     List<double>.from(json["precipitation_hours"].map((x) => x)),
        // humiditygreater90Hours:
        //     List<double>.from(json["humiditygreater90_hours"].map((x) => x)),
        // indexto3HvaluesStart:
        //     List<int>.from(json["indexto3hvalues_start"].map((x) => x)),
        // indexto3HvaluesEnd:
        //     List<int>.from(json["indexto3hvalues_end"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "time": List<dynamic>.from(time.map((x) =>
            "${x.year.toString().padLeft(4, '0')}-${x.month.toString().padLeft(2, '0')}-${x.day.toString().padLeft(2, '0')}")),
        "pictocode": List<dynamic>.from(pictocode.map((x) => x)),
        "uvindex": List<dynamic>.from(uvindex.map((x) => x)),
        "temperature_max": List<dynamic>.from(temperatureMax.map((x) => x)),
        "temperature_min": List<dynamic>.from(temperatureMin.map((x) => x)),
        "temperature_mean": List<dynamic>.from(temperatureMean.map((x) => x)),
        // "felttemperature_max":
        //     List<dynamic>.from(felttemperatureMax.map((x) => x)),
        // "felttemperature_min":
        //     List<dynamic>.from(felttemperatureMin.map((x) => x)),
        "winddirection": List<dynamic>.from(winddirection.map((x) => x)),
        // "precipitation_probability":
        //     List<dynamic>.from(precipitationProbability.map((x) => x)),
        // "rainspot": List<dynamic>.from(rainspot.map((x) => x)),
        // "predictability_class":
        //     List<dynamic>.from(predictabilityClass.map((x) => x)),
        // "predictability": List<dynamic>.from(predictability.map((x) => x)),
        "precipitation": List<dynamic>.from(precipitation.map((x) => x)),
        // "snowfraction": List<dynamic>.from(snowfraction.map((x) => x)),
        // "sealevelpressure_max":
        //     List<dynamic>.from(sealevelpressureMax.map((x) => x)),
        // "sealevelpressure_min":
        //     List<dynamic>.from(sealevelpressureMin.map((x) => x)),
        // "sealevelpressure_mean":
        //     List<dynamic>.from(sealevelpressureMean.map((x) => x)),
        // "windspeed_max": List<dynamic>.from(windspeedMax.map((x) => x)),
        "windspeed_mean": List<dynamic>.from(windspeedMean.map((x) => x)),
        // "windspeed_min": List<dynamic>.from(windspeedMin.map((x) => x)),
        // "relativehumidity_max":
        //     List<dynamic>.from(relativehumidityMax.map((x) => x)),
        // "relativehumidity_min":
        //     List<dynamic>.from(relativehumidityMin.map((x) => x)),
        // "relativehumidity_mean":
        //     List<dynamic>.from(relativehumidityMean.map((x) => x)),
        // "convective_precipitation":
        //     List<dynamic>.from(convectivePrecipitation.map((x) => x)),
        // "precipitation_hours":
        //     List<dynamic>.from(precipitationHours.map((x) => x)),
        // "humiditygreater90_hours":
        //     List<dynamic>.from(humiditygreater90Hours.map((x) => x)),
        // "indexto3hvalues_start":
        //     List<dynamic>.from(indexto3HvaluesStart.map((x) => x)),
        // "indexto3hvalues_end":
        //     List<dynamic>.from(indexto3HvaluesEnd.map((x) => x)),
      };
}

class Metadata {
  Metadata({
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.height,
    required this.timezoneAbbrevation,
    required this.utcTimeoffset,
    required this.modelrunUtc,
    required this.modelrunUpdatetimeUtc,
  });

  final String name;
  final double latitude;
  final double longitude;
  final int height;
  final String timezoneAbbrevation;
  final double utcTimeoffset;
  final String modelrunUtc;
  final String modelrunUpdatetimeUtc;

  factory Metadata.fromJson(Map<String, dynamic> json) => Metadata(
        name: json["name"],
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
        height: json["height"],
        timezoneAbbrevation: json["timezone_abbrevation"],
        utcTimeoffset: json["utc_timeoffset"],
        modelrunUtc: json["modelrun_utc"],
        modelrunUpdatetimeUtc: json["modelrun_updatetime_utc"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "latitude": latitude,
        "longitude": longitude,
        "height": height,
        "timezone_abbrevation": timezoneAbbrevation,
        "utc_timeoffset": utcTimeoffset,
        "modelrun_utc": modelrunUtc,
        "modelrun_updatetime_utc": modelrunUpdatetimeUtc,
      };
}

class Units {
  Units({
    required this.time,
    required this.precipitationProbability,
    required this.pressure,
    required this.relativehumidity,
    required this.co,
    required this.precipitation,
    required this.temperature,
    required this.windspeed,
    required this.winddirection,
    required this.predictability,
  });

  final String time;
  final String precipitationProbability;
  final String pressure;
  final String relativehumidity;
  final String co;
  final String precipitation;
  final String temperature;
  final String windspeed;
  final String winddirection;
  final String predictability;

  factory Units.fromJson(Map<String, dynamic> json) => Units(
        time: json["time"],
        precipitationProbability: json["precipitation_probability"],
        pressure: json["pressure"],
        relativehumidity: json["relativehumidity"],
        co: json["co"],
        precipitation: json["precipitation"],
        temperature: json["temperature"],
        windspeed: json["windspeed"],
        winddirection: json["winddirection"],
        predictability: json["predictability"],
      );

  Map<String, dynamic> toJson() => {
        "time": time,
        "precipitation_probability": precipitationProbability,
        "pressure": pressure,
        "relativehumidity": relativehumidity,
        "co": co,
        "precipitation": precipitation,
        "temperature": temperature,
        "windspeed": windspeed,
        "winddirection": winddirection,
        "predictability": predictability,
      };
}
