class CartModel {
  String img, title;
  int currentPrice, previousPrice, time;

  CartModel({
    this.img,
    this.title,
    this.previousPrice,
    this.time,
    this.currentPrice,
  });
}

List<CartModel> cart = [
  CartModel(
    img: 'asset/images/Images/OffersforYou/Waxdelight.jpg',
    title: 'Wax Delight',
    previousPrice: 899,
    time: 60,
    currentPrice: 400,
  ),
  CartModel(
    img: 'asset/images/Images/OffersforYou/HomeSalonGlow.jpg',
    title: 'Home Salon Glow',
    previousPrice: 500,
    currentPrice: 200,
    time: 50,
  ),
];
