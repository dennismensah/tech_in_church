import 'package:dartz/dartz.dart';
import 'package:tech_in_church/domain/chats/chat.dart';
import 'package:tech_in_church/domain/chats/chat_category.dart';
import 'package:tech_in_church/domain/chats/chat_failure.dart';
import 'package:tech_in_church/domain/chats/chat_message.dart';
import 'package:tech_in_church/domain/chats/counsellor_chatee.dart';

abstract class IChatRepository {
  Future<Either<ChatFailure, List<ChatCategory>>> getChatCategories();
  Future<Either<ChatFailure, Chat>> getChats(int conversationId);
  Future<Either<ChatFailure, List<CounsellorChatee>>> getCounsellorChats();
  Future<Either<ChatFailure, List<ChatMessage>>> sendMessage(String message,int receipientId);
}