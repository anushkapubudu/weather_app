class MeteoblueQueryParam {
  MeteoblueQueryParam({
    required this.apikey,
    required this.lat,
    required this.lon,
    required this.asl,
    required this.format,
    required this.tz,
  });
  String apikey;
  String lat;
  String lon;
  String asl;
  String format;
  String tz;

  Map<String, dynamic> toMap() => {
        "apikey": apikey,
        "lat": lat,
        "lon": lon,
        "asl": asl,
        "format": format,
        "tz": tz,
      };
}
