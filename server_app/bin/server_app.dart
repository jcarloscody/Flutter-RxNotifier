import 'dart:io';

import 'package:common/common.dart';
import 'package:socket_io/socket_io.dart';

void main(List<String> arguments) {
  final server = Server();

  server.on('connection', (cliente) {
    onConnection(cliente);
  });

  server.listen(Platform.environment['PORT'] ?? 3000);
}

void onConnection(Socket s) {
  //vamos conectar todos a uma sala //o socket vai escutar um evento
  //quando alguem se conectar, entendemos que ele esta enviando o nome e a sala que q entrar

  s.on(
    'entrar_quarto',
    (data) {
      final name = data['name'];
      final room = data['room'];

      s.join(room);
      //vamos juntar ele na sala para que apenas um grupo de socket se conect

      s.to(room).broadcast.emit(
            'message',
            SocketEventAReceber(
              name: name,
              room: room,
              type: SocketEventEnum.enter_room,
            ).toJson(),
          ); //envia uma mensagem para todos da sala que alguém entrou. broadcast enviar para todos menos ele

      s.on(
        "disconnect",
        (data) {
          s.to(room).broadcast.emit(
                "message",
                SocketEventAReceber(
                  name: name,
                  room: room,
                  type: SocketEventEnum.leave_room,
                ).toJson(),
              );
        },
      );

      s.on("message", (data) => s.to(room).broadcast.emit("message", data));
    },
  );
}
