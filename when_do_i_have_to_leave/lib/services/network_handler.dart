import 'package:http/http.dart' as http;

class NetworkHandler {
  late http.Response response;

  Future<void> getResponse(String link) async {
    var responseBuffer = await http.get(Uri.parse(link));
    if (responseBuffer.statusCode == 200) {
      print(responseBuffer.statusCode);
      response = responseBuffer;
    }
  }
}
