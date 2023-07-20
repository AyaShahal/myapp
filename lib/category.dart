import 'package:flutter/material.dart';

class Category {
  final String name;
  final List<String> items;
  Category(this.name, this.items);
}

List<Category> categories = [
  Category('Health', [
    'Lorem ipsum dolor sit amet consectetur elit Cras molestlo,https://as2.ftcdn.net/v2/jpg/02/05/33/73/1000_F_205337387_aqWDwNbSHJi640ECX1JAox7BbJ7bbgu2.jpg,19 hours ago,1903 views',
    'Lorem ipsum dolor sit amet consectetur elit Cras molestlo ,https://as2.ftcdn.net/v2/jpg/02/05/33/73/1000_F_205337387_aqWDwNbSHJi640ECX1JAox7BbJ7bbgu2.jpg,22 hours ago,1903 views',
    'Lorem ipsum dolor sit amet consectetur elit Cras molestlo ,https://as2.ftcdn.net/v2/jpg/02/05/33/73/1000_F_205337387_aqWDwNbSHJi640ECX1JAox7BbJ7bbgu2.jpg,20 hours ago,1903 views',
    'Lorem ipsum dolor sit amet consectetur elit Cras molestlo ,https://as2.ftcdn.net/v2/jpg/02/05/33/73/1000_F_205337387_aqWDwNbSHJi640ECX1JAox7BbJ7bbgu2.jpg,25 hours ago,1903 views',
  ]),
   Category('Politics', [
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry,https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI5MZ4dszHam7KX4U8B_OvpOuodlX124xppg&usqp=CAU,25 hours ago,1903 views',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry,https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI5MZ4dszHam7KX4U8B_OvpOuodlX124xppg&usqp=CAU,25 hours ago,1903 views',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry,https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI5MZ4dszHam7KX4U8B_OvpOuodlX124xppg&usqp=CAU,25 hours ago,1903 views',
  ]),
   Category('Art', [
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry,https://as2.ftcdn.net/v2/jpg/02/05/33/73/1000_F_205337387_aqWDwNbSHJi640ECX1JAox7BbJ7bbgu2.jpg,25 hours ago,1903 views',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry,https://as2.ftcdn.net/v2/jpg/02/05/33/73/1000_F_205337387_aqWDwNbSHJi640ECX1JAox7BbJ7bbgu2.jpg,25 hours ago,1903 views',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry,https://as2.ftcdn.net/v2/jpg/02/05/33/73/1000_F_205337387_aqWDwNbSHJi640ECX1JAox7BbJ7bbgu2.jpg,25 hours ago,1903 views',
  ]),
   Category('Food', [
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry,https://as2.ftcdn.net/v2/jpg/02/05/33/73/1000_F_205337387_aqWDwNbSHJi640ECX1JAox7BbJ7bbgu2.jpg,25 hours ago,1903 views',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry,https://as2.ftcdn.net/v2/jpg/02/05/33/73/1000_F_205337387_aqWDwNbSHJi640ECX1JAox7BbJ7bbgu2.jpg,25 hours ago,1903 views',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry,https://as2.ftcdn.net/v2/jpg/02/05/33/73/1000_F_205337387_aqWDwNbSHJi640ECX1JAox7BbJ7bbgu2.jpg,25 hours ago,1903 views',
  ]),
  // Add more categories here
];

class CategoryPage extends StatelessWidget {
  final Category category;

  CategoryPage({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
      ),
    
    );
 
  }
}
