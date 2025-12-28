import 'package:ecommerce_firebase/features/login/domain/auth_entity/auth_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part "auth_model.g.dart";




@freezed


abstract class AuthModel with _$AuthModel{
  const factory AuthModel({
    required String uid,
    required String email,
    required String name,
  
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);

  
}
extension AuthModelX on AuthModel {
 AuthEntity toEntity() {
    return AuthEntity( 
      uid: uid,
      email: email,
      name: name,
    );
  }
  static AuthModel fromEntity(AuthEntity entity) {
      return AuthModel(
        uid: entity.uid,
        email: entity.email,
        name: entity.name,
      );
    }
}