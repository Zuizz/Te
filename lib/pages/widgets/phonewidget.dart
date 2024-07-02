import 'package:cybershop/pages/Homepage.dart';
import 'package:cybershop/pages/phonecatalog.dart';
import 'package:cybershop/pages/widgets/phonecat.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class phonewidget extends StatelessWidget {
  final Item item;

  const phonewidget({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return VxBox(

      child: Row(
        children: [
          Image.network(item.image,height: 100,),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(item.name),
              ButtonBar(
                children: [
                  "\$${item.price}".text.make(),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
                  }, child: Text("Buy"))
                ],
              )
            ],
          ))
        ],
      )
    ).red50.square(150).make().py16();
  }
}
