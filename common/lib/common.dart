library common;

class SocketEventAReceber {
  final String name;
  final String room;
  String text;
  final SocketEventEnum type;

  SocketEventAReceber({
    required this.name,
    required this.room,
    this.text = '',
    required this.type,
  });

  @override
  Map toJson() {
    return {
      'name': name,
      'room': room,
      'text': text,
      'type': type.toString(),
    };
  }

  factory SocketEventAReceber.fromJson(Map json) {
    //List<SocketEventEnum> socketEnumList;

    return SocketEventAReceber(
      name: json['name'],
      room: json['room'],
      text: json['text'],
      type: SocketEventEnum.values.firstWhere((socketEnum) {
        return socketEnum.toString() == json['type'];
      }),
    );
  }
}

enum SocketEventEnum {
  enter_room,
  leave_room,
  message,
}
