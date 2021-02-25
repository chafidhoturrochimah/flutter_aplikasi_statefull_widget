import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Konverter Suhu"),
          ),
          body: Container(
            margin: EdgeInsets.all(8),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    // ignore: deprecated_member_use
                    WhitelistingTextInputFormatter.digitsOnly
                  ],//Only numbers can be entered
                  decoration: InputDecoration(
                    hintText: 'Masukkan Suhu Dalam Celcius',
                  ),
                ),

                Expanded(
                  child: Row (
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget> [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          Text('Suhu dalam Kelvin',
                          style: TextStyle(height: 1.5)
                          ),
                          //Text('$_kelvin', style: TextStyle(fontSize: 20)),
                        ],
                      ),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          Text('Suhu dalam Reamur',
                          style: TextStyle(height: 1.5)
                          ),
                          //Text('$_reamur', style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  width: 420,
                  height: 50,
                  child: (
                    // ignore: deprecated_member_use
                    RaisedButton(
                      onPressed: (){},
                      color: Colors.blue,
                      hoverColor: Colors.blueGrey,
                      textColor: Colors.white,
                      child: const Text('Konversi Suhu'),
                    )
                  ),
                )  
            ],
          ),
        ),
      )
    );
  }
}
