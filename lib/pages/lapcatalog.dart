
import 'package:cybershop/data/lapcat.dart';
import 'package:cybershop/pages/buypages/lapbuy.dart';
import 'package:cybershop/pages/drawer.dart';
import 'package:cybershop/pages/widgets/lapwidget.dart';

import 'package:cybershop/pages/widgets/theme.dart';
import 'package:flutter/material.dart';



class lapcatalog extends StatelessWidget {
  const lapcatalog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: MyTheme.creamColor,
        appBar: AppBar(title: const Text("Laptops"),),
        drawer: const csdrawer(),
        body:
        Padding(padding: const EdgeInsets.all(15),
          child :ListView.builder(
              itemCount: lap.laptops.length,
              itemBuilder: (context , index)
              {
                final buy = lap.laptops[index];
                return InkWell(
                  child: lapwidget(laptop: buy),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => lapbuypage(buy: buy)));
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
