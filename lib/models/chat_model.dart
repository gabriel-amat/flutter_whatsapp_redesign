import 'package:flutter_whatsapp_redesign/models/story_model.dart';

class ChatModel{
  String name;
  String lastMessage;
  String lastMessageTime;
  int qtMessage;
  String imageUrl;
  StoryModel? storyModel;
  bool? isOnline;

  ChatModel({
    this.isOnline,
    this.storyModel,
    required this.qtMessage,
    required this.lastMessageTime,
    required this.imageUrl,
    required this.lastMessage,
    required this.name,
  });
}