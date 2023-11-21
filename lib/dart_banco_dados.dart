import 'package:dart_banco_dados/database.dart';

void main() async {
  final database = Database();
  var mysqlConnection = await database.openConnection();
  // final result = await mysqlConnection
  //     .query("insert into aluno (nome) values (?)", ['Henrick']);
  // print(result);
  var result = await mysqlConnection.query('SELECT * FROM aluno');
  for (var element in result) {
    print(element);
  }
}
