import 'package:coffe_ui/model/allCoffee.dart';

class ColdCoffeeModel implements Allcoffee{
  

 ColdCoffeeModel({
    this.image,
    this.title,
    this.price,
  });
  
  @override
  String? image;
  
  @override
  String? price;
  
  @override
  String? title;
}