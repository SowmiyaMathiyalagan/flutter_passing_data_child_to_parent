
import 'package:flutter/material.dart';
import 'package:flutter_passing_data_child_to_parent/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key, this.EnterName, this.EnterMobileNumber})
      : super(key: key);

  final String? EnterName;
  final String? EnterMobileNumber;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'First Screen',
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                  EnterName.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize:20,
                  ),
                ),
                Text(
                  EnterMobileNumber.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SecondScreen()));

                },
                child:  Text('return Back'),
              ),
              ],
            ),
          )),
    );
  }
}
