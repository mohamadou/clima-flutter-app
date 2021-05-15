import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class NetworkHelper {
  final String url;

  NetworkHelper({this.url});

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      String data = response.body;
      return convert.jsonDecode(data);
    } else {
      print('Error, Status code : ${response.statusCode}');
    }
  }
}
