// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) =>
    ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    this.id,
    this.idKategori,
    this.nama,
    this.harga,
    this.diskon,
    this.status,
    this.foto,
    this.keterangan,
    this.path,
  });

  String? id;
  String? idKategori;
  String? nama;
  String? harga;
  String? diskon;
  String? status;
  String? foto;
  String? keterangan;
  String? path;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        idKategori: json["id_kategori"],
        nama: json["nama"],
        harga: json["harga"],
        diskon: json["diskon"],
        status: json["status"],
        foto: json["foto"],
        keterangan: json["keterangan"],
        path: json["path"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "id_kategori": idKategori,
        "nama": nama,
        "harga": harga,
        "diskon": diskon,
        "status": status,
        "foto": foto,
        "keterangan": keterangan,
        "path": path,
      };
}
