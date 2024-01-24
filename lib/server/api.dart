class ApiServer{
  static const String baseUrl = "https://api.api-ninjas.com";
  static const String apiGetAllData = "/v1/weather";
  static const Duration connectTimeout = Duration(seconds: 10);
  static const Duration receiveTimeout = Duration(seconds: 10);
  static const Map<String, String> headers = {"x-api-key": "pQXlktJXi7ibR4cyIchtfQ==uRQNyZQXwSCrnDmA"};
  /// Params
  static Map<String, dynamic> paramGetWeather(String city){
    return {
      "city":city,
    };
  }
}