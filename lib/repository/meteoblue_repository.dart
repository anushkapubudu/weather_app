import 'package:weather_app/model/meteoblue_query_param.dart';
import 'package:weather_app/model/meteoblue_response_model.dart';
import 'package:weather_app/network/api_provider.dart';

class MeteoblueRepository {
  Future<MeteoBlueResponseModel> fetchWeatherData(
      {required MeteoblueQueryParam queryParams}) async {
    final qyery = queryParams.toMap();
    String queryString = Uri(queryParameters: qyery).query;
    var requestUrl = 'basic-3h_basic-day' + '?' + queryString;
    final response = await ApiProvider().get(requestUrl);
   
    return meteoBlueResponseModelFromJson(response);
  }
}
