import 'package:coffe_ui/model/coldCoffeeModel.dart';

class ColdCoffeeManager implements ColdCoffeeModel{
  @override
  String? image;

  @override
  String? price;

  @override
  String? title;

List<ColdCoffeeModel> coffeeList = [
   ColdCoffeeModel(
      image: 'lib/assets/BlackCoffee.png',
      title: 'Americano',
      price: '-69',
    ),
    ColdCoffeeModel(
      image: 'lib/assets/Espresso.png',
      title: 'Espresso',
      price: '-59',
    ),
     ColdCoffeeModel(
      image: 'lib/assets/Latte.png',
      title: 'Latte',
      price: '-49',
    ),
    ColdCoffeeModel(
      image: 'lib/assets/BlackCoffee.png',
      title: 'Americano',
      price: '-69',
    ),
     ColdCoffeeModel(
      image: 'lib/assets/BlackCoffee.png',
      title: 'Americano',
      price: '-69',
    ),
     ColdCoffeeModel(
      image: 'lib/assets/BlackCoffee.png',
      title: 'Americano',
      price: '-69',
    ),
     ColdCoffeeModel(
      image: 'lib/assets/BlackCoffee.png',
      title: 'Americano',
      price: '-69',
    ),
];
}