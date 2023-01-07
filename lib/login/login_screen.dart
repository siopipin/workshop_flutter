import 'package:flutter/material.dart';
import 'package:flutter_workshop/login/widgets/custom_text.dart';

//https://pastebin.com/RRGpbn44

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _nameState();
}

class _nameState extends State<Login> {
  String? title;

  String? nama;

  @override
  void initState() {
    // TODO: implement initState
    title = "News";
    ecek();
    super.initState();
  }

  ecek() {
    Future.delayed(Duration(seconds: 5), () {
      print('Hallo');
      setState(() {
        nama = "Hallo2";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title!,
        ),
        centerTitle: true,
      ),
      body: kartu(),
    );
  }

  kartu() {
    if (nama != null) {
      return Container(
          margin: EdgeInsets.all(20),
          height: 120,
          color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Image.network(
                  'https://awsimages.detik.net.id/community/media/visual/2021/04/22/5-makanan-enak-dari-indonesia-dan-malaysia-yang-terkenal-enak-5.jpeg?w=700&q=90',
                  height: 300,
                  width: 100,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Title'),
                      CustomText(
                        text: "Date",
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2,
                        ),
                      ),
                      CustomText(
                        text: nama == null ? "Ecek" : nama!,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
              )
            ],
          ));
    } else {
      return CircularProgressIndicator();
    }
  }
}
