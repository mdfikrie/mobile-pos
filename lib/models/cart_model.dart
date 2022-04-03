class CartModel {
  String? name;
  String? harga;
  String? image;
  int? jumlah;

  CartModel({this.name, this.harga, this.image, this.jumlah});
}

var mapCartData = dataCart
    .map((e) => CartModel(
        name: e['name'] as String,
        harga: e['harga'] as String,
        image: e['image'] as String,
        jumlah: e['jumlah'] as int))
    .toList();

var dataCart = [
  {
    'name': 'Ayam Bakar',
    'harga': 'Rp. 10.000',
    'image': 'assets/images/foods.png',
    'jumlah': 1,
  },
  {
    'name': 'Es Tes',
    'harga': 'Rp. 2.000',
    'image': 'assets/images/tea.png',
    'jumlah': 1,
  },
];
