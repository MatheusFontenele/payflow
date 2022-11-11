import 'dart:convert';

class UserModel {
  final String? email;
  final String name;
  final String? profilePhoto;

  UserModel({
    this.email,
    required this.name,
    this.profilePhoto,
  });

  //transforma os dados vindos do map para user model
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'],
      name: map['name'],
      profilePhoto: map['profilePhoto'],
    );
  }

  //transforma os dados vindos do json para o model
  factory UserModel.fromJson(String json) => UserModel.fromMap(
        jsonDecode(json),
      );

  //metodo para retornar os dados do model
  Map<String, dynamic> toMap() => {"name": name, "profilePhoto": profilePhoto};

  //tranforma os dados vindos do map em um json
  //essa funcao foi criado porque ao salvar os dados no shared preference esta pra aceitar uma string
  String toJson() => jsonEncode(toMap());
}
