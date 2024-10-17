import 'package:flutter/material.dart';
import 'shina.dart';

class Cart extends ChangeNotifier{
  List<Shina> shinaShop = [
    Shina(
      name:"Mirage",
      price:"963000",
      imagePath:"assets/images/1.jpg",
      description:"Ushbu model qiyin vaziyatlarda ishonchli xatti-harakatlari, yumshoq haydash, past shovqin va yuqori yurish bilan ajralib turadi",
    ),
    Shina(
        name: "Kinforest",
        price: "850000",
        imagePath: "assets/images/2.jpg",
        description:
        "To'liq maydonli neylon qoplamasi, bozordagi boshqa ko'plab mahsulotlarga nisbatan sezilarli yaxshilanishga ega"),
    Shina(
        name: "Rotalla",
        price: "951000",
        imagePath: "assets/images/3.jpg",
        description:
        "Shina og'ir sharoitlarda oldindan aytib bo'ladigan xatti-harakatlari, quruq va ho'l sirtlarda barqarorligi, tinch va yumshoq haydash bilan ajralib turadi.")
  ];
  List<Shina> userCart =[];
  List<Shina> getShinaList(){
    return shinaShop;
  }
  List<Shina> getUserCart(){
    return userCart;
  }
  void addItemToCart(Shina shina){
    userCart.add(shina);
    notifyListeners();
  }
  void removeItemFromCart(Shina shina){
    userCart.remove(shina);
    notifyListeners();
  }
}
