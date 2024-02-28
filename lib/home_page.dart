import 'package:flutter/material.dart';
import 'package:flutter_environment/const.dart';
import 'package:flutter_environment/endpoint.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  getData() {
    var url = Uri.parse(EndPoints.baseUrl + EndPoints.getInfo);
    var header = {'api_key': Consts.apiKey};

    //Http call here
    debugPrint('Details: $url \nHeader: $header');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Flutter ENV",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {
                    getData();
                  },
                  child: const Text(
                    "Test",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
