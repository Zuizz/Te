
import 'package:cybershop/data/phonecat.dart';
import 'package:cybershop/data/speakercat.dart';
import 'package:cybershop/pages/buypage.dart';
import 'package:cybershop/pages/buypages/speakerbuy.dart';
import 'package:cybershop/pages/drawer.dart';
import 'package:cybershop/pages/widgets/phonewidget.dart';
import 'package:cybershop/pages/widgets/speakerwidget.dart';
import 'package:cybershop/pages/widgets/theme.dart';
import 'package:flutter/material.dart';

class speakercatalog extends StatelessWidget {
  const speakercatalog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: MyTheme.creamColor,
        appBar: AppBar(title: const Text("Phones"),),
        drawer: const csdrawer(),
        body:
        Padding(padding: const EdgeInsets.all(15),
          child :ListView.builder(
              itemCount: speak.speakers.length,
              itemBuilder: (context , index)
              {
                final buy = speak.speakers[index];
                return InkWell(
                  child: speakerwidget(speaker: buy),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => speakerbuypage(buy: buy)));
                  },
                );
              }
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
