import 'package:common/common.dart';
import 'package:test/test.dart';

void main() {
  test("json to json", () {
    final json = {
      'name': 'jos',
      'room': 'sd',
      'text': '',
      'type': 'SocketEventEnum.enter_room',
    };

    final socketEventAReceber = SocketEventAReceber.fromJson(json);

    expect(socketEventAReceber.name, 'jos');
    expect(socketEventAReceber.type, SocketEventEnum.enter_room);
    expect(socketEventAReceber.toJson(), json);
  });

  // group('A group of tests', () {
  //   final awesome = ISocketEventAReceber(
  //     name: "JOSUE",
  //     room: "j",
  //     text: "kk",
  //     type: SocketEventEnum.enter_room,
  //   );

  //   setUp(() {
  //     // Additional setup goes here.
  //   });
  // });
}
