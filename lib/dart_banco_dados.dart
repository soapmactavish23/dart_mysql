import 'package:dart_banco_dados/database.dart';

void main() async {
  final database = Database();
  var mySqlConnection = await database.openConnection();

  print(mySqlConnection.toString());
}
