import 'package:flutter/material.dart';
import 'package:movieapp/constant.dart';
import 'body.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar(){
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        padding: const EdgeInsets.only(left: kDefaultPadding),
        onPressed: (){},
        icon: const Icon(Icons.menu, color: Colors.black,),
      ),
      actions: <Widget>[
        IconButton(
            padding: const EdgeInsets.only(right: kDefaultPadding),
            onPressed: (){}, icon: const Icon(Icons.search, color: Colors.black,)
        )
      ],
    );
  }
}

