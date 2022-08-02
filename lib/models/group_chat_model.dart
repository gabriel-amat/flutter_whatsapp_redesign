class GroupModel {
  String title;
  String lastMessage;
  String lastMessageTime;
  int qtMessage;
  int qtUsers;
  String imageUrl;

  GroupModel({
    required this.qtUsers,
    required this.qtMessage,
    required this.lastMessageTime,
    required this.imageUrl,
    required this.lastMessage,
    required this.title,
  });
}
