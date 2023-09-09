import 'package:coffe_ui/model/allCoffee.dart';

class HotCoffeeModel implements Allcoffee{

 HotCoffeeModel({
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