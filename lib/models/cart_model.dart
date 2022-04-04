class CartModel {
  String? name;
  String? harga;
  String? image;
  bool? select;
  int? jumlah;

  CartModel({this.name, this.harga, this.image, this.select, this.jumlah});
}

var mapCartData = dataCart
    .map((e) => CartModel(
        name: e['name'] as String,
        harga: e['harga'] as String,
        image: e['image'] as String,
        select: e['select'] as bool,
        jumlah: e['jumlah'] as int))
    .toList();

var dataCart = [
  {
    'name': 'Ayam Bakar',
    'harga': 'Rp. 10.000',
    'image': 'assets/images/foods.png',
    'select': false,
    'jumlah': 1,
  },
  {
    'name': 'Es Tes',
    'harga': 'Rp. 2.000',
    'image': 'assets/images/tea.png',
    'select': false,
    'jumlah': 1,
  },
];
