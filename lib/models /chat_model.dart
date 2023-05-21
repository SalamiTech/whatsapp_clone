class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({
    required this.name,
    required this.message,
    required this.time,
    required this.avatarUrl,
  });
}

List<ChatModel> chatList = [
  ChatModel(
      name: "Gideon Salami",
      message: "How are you?",
      time: "10:30 AM",
      avatarUrl:
          'https://drive.google.com/uc?export=view&id=1wNYSI6O9Qm9zSoej9MUcPk-SNmikGNLQ'),
  ChatModel(
      name: "Babie Linda",
      message: "I miss you!",
      time: "11:45 AM",
      avatarUrl: 'https://randomuser.me/api/portraits/women/44.jpg'),
  ChatModel(
      name: "Kweku Mensah",
      message: "I'll be there soon.",
      time: "1:15 PM",
      avatarUrl: 'https://randomuser.me/api/portraits/men/42.jpg'),
  ChatModel(
      name: "Grace Salami",
      message: "Let's meet tomorrow.",
      time: "3:20 PM",
      avatarUrl: 'https://randomuser.me/api/portraits/men/47.jpg'),
  ChatModel(
      name: "David Aganya",
      message: "Can you call me?",
      time: "5:55 PM",
      avatarUrl: 'https://randomuser.me/api/portraits/men/94.jpg'),
];
