import 'package:hive/hive.dart';
part 'favorite_model.g.dart';

@HiveType(typeId: 1)
class FavoriteModel extends HiveObject {
  @HiveField(0)
  String? id;
  @HiveField(1)
  String? idKategori;
  @HiveField(2)
  String? nama;
  @HiveField(3)
  String? harga;
  @HiveField(4)
  String? diskon;
  @HiveField(5)
  String? status;
  @HiveField(6)
  String? foto;
  @HiveField(7)
  String? keterangan;
  @HiveField(8)
  String? path;
  FavoriteModel(this.id, this.idKategori, this.nama, this.harga, this.diskon,
      this.status, this.foto, this.keterangan, this.path);
}
