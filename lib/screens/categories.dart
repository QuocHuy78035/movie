import 'package:flutter/material.dart';
import 'package:movieapp/constant.dart';
import 'package:movieapp/model/movies.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;
  List<String> categories = ['In Theater', 'Box Office', 'Coming Soon'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => buildCategory(context, index),
        itemCount: categories.length,
      ),
    );
  }

  Padding buildCategory(context, index){
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: GestureDetector(
          onTap: (){
            setState(() {
              selectedCategory = index;
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(categories[index],
                style: Theme.of(context).textTheme.headline5?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: index == selectedCategory ? kTextColor : Colors.black.withOpacity(0.4)
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
                height: 6,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == selectedCategory ? kSecondaryColor : Colors.transparent
                ),
              )
            ],
          ),
        )
    );
  }
}
