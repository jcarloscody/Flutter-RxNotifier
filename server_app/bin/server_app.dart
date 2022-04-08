import 'dart:io';

import 'package:socket_io/socket_io.dart';

void main(List<String> arguments) {
  final server = Server();

  server.on('connection', (cliente) {
    onConnection(cliente);
  });

  server.listen(Platform.environment['PORT'] ?? 3000);
}

void onConnection(Socket s) {
  //vamos conectar todos a uma sala
  //o socket vai escutar um evento
  s.on('entrar_quarto', (data) {
    //quando alguem se conectar, entendemos que ele esta enviando o nome e a sala que q entrar
    final name = data['name'];
    final room = data['room'];

    s.join(
        room); //vamos juntar ele na sala para que apenas um grupo de socket se conect
    s.to(room).broadcast.emit('message',
        '${name} chegou'); //envia uma mensagem para todos da sala que alguém entrou. broadcast enviar para todos menos ele
  });
}
