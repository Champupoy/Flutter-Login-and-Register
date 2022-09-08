import 'package:objectbox/objectbox.dart';

@Entity()
@Sync()
class User  {
  late int id;
  late String name;
  late String number;
  late String email;
  late String password;

  User({
    this.id = 0,
    required this.name,
    required this.number,
    required this.email,
    required this.password
  });
}


