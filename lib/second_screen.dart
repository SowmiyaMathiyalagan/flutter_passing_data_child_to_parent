
import 'package:flutter/material.dart';

import 'first_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  final enterNameTxtCnt =TextEditingController();
  final enterMobileNumberTxtCnt =TextEditingController();

  void navigateNextPage(BuildContext ctx) {
    print('--------------->userName: ${enterNameTxtCnt.text}');
    print('--------------->mobileNo:${enterMobileNumberTxtCnt.text}');
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return FirstScreen(EnterName:enterNameTxtCnt.text,EnterMobileNumber:enterMobileNumberTxtCnt.text);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen',),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:  EdgeInsets.all(20.0),
                child: TextField(controller: enterNameTxtCnt,
                  decoration: InputDecoration(labelText: ' Enter Name'),
                ),
              ),
              Container(
                padding:  EdgeInsets.all(20.0),
                child: TextField(controller: enterMobileNumberTxtCnt,
                  decoration: InputDecoration(labelText: ' Enter Mobile Number'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {

                    navigateNextPage(context);
                  },
                  child:  Text(
                    'Send Data',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}