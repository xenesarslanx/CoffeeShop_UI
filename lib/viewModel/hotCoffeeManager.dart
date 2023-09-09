import 'package:coffe_ui/model/hotCoffeeModel.dart';

class HotCoffeeManager implements HotCoffeeModel{
  @override
  String? image;

  @override
  String? price;

  @override
  String? title;

List<HotCoffeeModel> coffeeList = [
    HotCoffeeModel(
      image: 'lib/assets/Espresso.png',
      title: 'Espresso',
      price: '59',
    ),
    HotCoffeeModel(
      image: 'lib/assets/Latte.png',
      title: 'Latte',
      price: '49',
    ),
    HotCoffeeModel(
      image: 'lib/assets/BlackCoffee.png',
      title: 'Americano',
      price: '69',
    ),
     HotCoffeeModel(
      image: 'lib/assets/BlackCoffee.png',
      title: 'Americano',
      price: '69',
    ),
     HotCoffeeModel(
      image: 'lib/assets/BlackCoffee.png',
      title: 'Americano',
      price: '69',
    ),
     HotCoffeeModel(
      image: 'lib/assets/BlackCoffee.png',
      title: 'Americano',
      price: '69',
    ),
     
  ];

}