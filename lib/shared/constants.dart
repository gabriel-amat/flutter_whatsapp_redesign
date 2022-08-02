import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_redesign/models/chat_model.dart';
import 'package:flutter_whatsapp_redesign/models/group_chat_model.dart';
import 'package:flutter_whatsapp_redesign/models/story_model.dart';

const primaryColor = Color(0xFF1E1E1E);
const secondColor = Color(0xFF1E443C);

final groups = [
  GroupModel(
    qtUsers: 15,
    qtMessage: 200,
    lastMessageTime: "10:00",
    imageUrl: "https://3.bp.blogspot.com/-tJyhFrITT20/XalNlRGaVhI/AAAAAAAA33s/cDkH-fMzrdsmrgzsraVdpUhD95hNivpNwCLcBGAsYHQ/s1600/0c2b4809600e23fd5220d930d515a955.jpg",
    lastMessage: "Hello",
    title: "Group",
  ),
  GroupModel(
    qtUsers: 15,
    qtMessage: 200,
    lastMessageTime: "10:00",
    imageUrl:
        "https://3.bp.blogspot.com/-tJyhFrITT20/XalNlRGaVhI/AAAAAAAA33s/cDkH-fMzrdsmrgzsraVdpUhD95hNivpNwCLcBGAsYHQ/s1600/0c2b4809600e23fd5220d930d515a955.jpg",
    lastMessage: "Hello",
    title: "Group",
  ),
  GroupModel(
    qtUsers: 15,
    qtMessage: 200,
    lastMessageTime: "10:00",
    imageUrl:
        "https://3.bp.blogspot.com/-tJyhFrITT20/XalNlRGaVhI/AAAAAAAA33s/cDkH-fMzrdsmrgzsraVdpUhD95hNivpNwCLcBGAsYHQ/s1600/0c2b4809600e23fd5220d930d515a955.jpg",
    lastMessage: "Hello",
    title: "Group",
  ),

];

final chats = [
  ChatModel(
    qtMessage: 5,
    isOnline: true,
    lastMessageTime: "09:30",
    imageUrl:
        "https://images.generated.photos/ZJTfoR6RdphRygHCsSjt_BVGuaPTRTHWZgwnFolVAN8/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/czM6Ly9pY29uczgu/Z3Bob3Rvcy1wcm9k/LnBob3Rvcy92M18w/Njg1NzkzLmpwZw.jpg",
    lastMessage: "Hello World",
    name: "Rodrigo",
  ),
  ChatModel(
    qtMessage: 5,
    isOnline: true,
    lastMessageTime: "09:30",
    imageUrl:
        "https://images.generated.photos/ZJTfoR6RdphRygHCsSjt_BVGuaPTRTHWZgwnFolVAN8/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/czM6Ly9pY29uczgu/Z3Bob3Rvcy1wcm9k/LnBob3Rvcy92M18w/Njg1NzkzLmpwZw.jpg",
    lastMessage: "Hello World",
    name: "Roberto",
  ),
  ChatModel(
    storyModel: StoryModel(
      firstImage: "https://wallpaper.dog/large/17164661.jpg",
    ),
    isOnline: true,
    qtMessage: 5,
    lastMessageTime: "09:30",
    imageUrl:
        "https://images.generated.photos/ZJTfoR6RdphRygHCsSjt_BVGuaPTRTHWZgwnFolVAN8/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/czM6Ly9pY29uczgu/Z3Bob3Rvcy1wcm9k/LnBob3Rvcy92M18w/Njg1NzkzLmpwZw.jpg",
    lastMessage: "Hello World",
    name: "James",
  ),
  ChatModel(
    qtMessage: 5,
    lastMessageTime: "09:30",
    imageUrl:
        "https://images.generated.photos/ZJTfoR6RdphRygHCsSjt_BVGuaPTRTHWZgwnFolVAN8/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/czM6Ly9pY29uczgu/Z3Bob3Rvcy1wcm9k/LnBob3Rvcy92M18w/Njg1NzkzLmpwZw.jpg",
    lastMessage: "Hello World",
    name: "Bob",
  ),
  ChatModel(
    storyModel: StoryModel(
      firstImage: "https://wallpaper.dog/large/17164661.jpg",
    ),
    qtMessage: 5,
    lastMessageTime: "09:30",
    imageUrl:
        "https://images.generated.photos/ZJTfoR6RdphRygHCsSjt_BVGuaPTRTHWZgwnFolVAN8/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/czM6Ly9pY29uczgu/Z3Bob3Rvcy1wcm9k/LnBob3Rvcy92M18w/Njg1NzkzLmpwZw.jpg",
    lastMessage: "Hello World",
    name: "Pedro",
  ),
  ChatModel(
    storyModel: StoryModel(
      firstImage: "https://wallpaper.dog/large/17164661.jpg",
    ),
    qtMessage: 5,
    lastMessageTime: "09:30",
    isOnline: true,
    imageUrl:
        "https://images.generated.photos/ZJTfoR6RdphRygHCsSjt_BVGuaPTRTHWZgwnFolVAN8/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/czM6Ly9pY29uczgu/Z3Bob3Rvcy1wcm9k/LnBob3Rvcy92M18w/Njg1NzkzLmpwZw.jpg",
    lastMessage: "Hello World",
    name: "Alfredo",
  ),
  ChatModel(
    storyModel: StoryModel(
      firstImage: "https://wallpaper.dog/large/17164661.jpg",
    ),
    isOnline: true,
    qtMessage: 5,
    lastMessageTime: "09:30",
    imageUrl:
        "https://images.generated.photos/ZJTfoR6RdphRygHCsSjt_BVGuaPTRTHWZgwnFolVAN8/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/czM6Ly9pY29uczgu/Z3Bob3Rvcy1wcm9k/LnBob3Rvcy92M18w/Njg1NzkzLmpwZw.jpg",
    lastMessage: "Hello World",
    name: "Willam",
  ),
  ChatModel(
    storyModel: StoryModel(
      firstImage: "https://wallpaper.dog/large/17164661.jpg",
    ),
    qtMessage: 5,
    lastMessageTime: "09:30",
    imageUrl:
        "https://images.generated.photos/ZJTfoR6RdphRygHCsSjt_BVGuaPTRTHWZgwnFolVAN8/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/czM6Ly9pY29uczgu/Z3Bob3Rvcy1wcm9k/LnBob3Rvcy92M18w/Njg1NzkzLmpwZw.jpg",
    lastMessage: "Hello World",
    name: "Gabriel",
  ),
  ChatModel(
    storyModel: StoryModel(
      firstImage: "https://wallpaper.dog/large/17164661.jpg",
    ),
    qtMessage: 5,
    lastMessageTime: "09:30",
    imageUrl:
        "https://images.generated.photos/ZJTfoR6RdphRygHCsSjt_BVGuaPTRTHWZgwnFolVAN8/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/czM6Ly9pY29uczgu/Z3Bob3Rvcy1wcm9k/LnBob3Rvcy92M18w/Njg1NzkzLmpwZw.jpg",
    lastMessage: "Hello World",
    name: "Rafael",
  ),
];
