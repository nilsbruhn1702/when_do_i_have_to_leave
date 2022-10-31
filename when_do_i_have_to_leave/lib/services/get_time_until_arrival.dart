import 'package:when_do_i_have_to_leave/services/network_handler.dart';
import 'package:html/parser.dart' as parser;

Future<void> getTimeUntilArrival() async {
  String url =
      'https://www.google.de/maps/dir/Bergstra%C3%9Fe,+Bonn/Bonn+Hauptbahnhof,+Am+Hauptbahnhof+1,+53111+Bonn/@50.7208175,7.0851877,14z/data=!3m1!4b1!4m14!4m13!1m5!1m1!1s0x47bee3d7728a43f5:0x3e9d953c310c66c3!2m2!1d7.1083127!2d50.7091855!1m5!1m1!1s0x47bee19f34aeca3f:0x807cef916a3d536f!2m2!1d7.0959382!2d50.7324522!3e3';
  NetworkHandler networkhandler = NetworkHandler();
  await networkhandler.getResponse(url);
  var document = parser.parse(networkhandler.response.body);
  var time = document.querySelectorAll('head').map((e) => e.innerHtml.trim());
  print(time);
}
