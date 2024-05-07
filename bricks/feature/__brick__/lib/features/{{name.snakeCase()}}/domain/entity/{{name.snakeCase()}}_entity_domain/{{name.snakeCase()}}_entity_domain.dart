

import 'package:freezed_annotation/freezed_annotation.dart';
part '{{name.snakeCase()}}_entity_domain.freezed.dart';
part '{{name.snakeCase()}}_entity_domain.g.dart';

@freezed
class {{name.pascalCase()}}EntityDomain with _${{name.pascalCase()}}EntityDomain{
   const factory {{name.pascalCase()}}EntityDomain ({
        required String title,
        required String description,
      }) = _NoteEntity;
      
  // fromentity
  factory {{name.pascalCase()}}EntityDomain.fromEntity(NoteEntity data) {
     return {{name.pascalCase()}}EntityDomain(
       title: data.title,
       description: data.description
     );
   }
  factory {{name.pascalCase()}}EntityDomain.fromJson(Map<String, dynamic> json) =>
      _${{name.pascalCase()}}EntityDomainFromJson(json);
  factory {{name.pascalCase()}}EntityDomain.toEntity() {
     return NoteEntity(
       title: this.title,
       description: this.description
     );
   }
}