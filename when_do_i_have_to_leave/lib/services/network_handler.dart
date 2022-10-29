import 'package:http/http.dart' as http;

class NetworkHandler {
  late http.Response? response;

  NetworkHandler(this.response);

  Future<void> getResponse(String link) async {
    response = await http.get(Uri.parse(link));
  }
}
