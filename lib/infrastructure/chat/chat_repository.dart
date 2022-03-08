import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:tech_in_church/domain/chats/chat.dart';
import 'package:tech_in_church/domain/chats/chat_category.dart';
import 'package:tech_in_church/domain/chats/chat_failure.dart';
import 'package:tech_in_church/domain/chats/chat_message.dart';
import 'package:tech_in_church/domain/chats/counsellor_chatee.dart';
import 'package:tech_in_church/domain/chats/i_chat_remote_datasource.dart';
import 'package:tech_in_church/domain/chats/i_chat_repository.dart';
import 'package:tech_in_church/domain/core/i_network_info.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IChatRepository)
class ChatRepository extends IChatRepository {
  final IChatRemoteDataSource chatRemoteDataSource;
  final INetworkInfo networkInfo;
  ChatRepository(
      {required this.chatRemoteDataSource, required this.networkInfo});

  @override
  Future<Either<ChatFailure, List<ChatCategory>>> getChatCategories() async {
    late Either<ChatFailure, List<ChatCategory>> result =
        left(const ChatFailure.initial());

    try {
      if (await networkInfo.isConnected) {
        final response = await chatRemoteDataSource.getChatCategories();
        switch (response?.statusCode) {
          case 200:
            final chatResponse = (response?.data?['data'] as List)
                .map((e) => ChatCategory.fromJson(e as Map<String, dynamic>))
                .toList();
            result = right(chatResponse);
            break;
        }
      } else {
        result = left(const ChatFailure.noNetwork());
      }
    } catch (e) {
      debugPrint(e.toString());
      result = left(const ChatFailure.serverError());
    }
    return result;
  }

  @override
  Future<Either<ChatFailure, List<ChatMessage>>> sendMessage(
      String message, int receipientId) async {
    late Either<ChatFailure, List<ChatMessage>> result =
        left(const ChatFailure.initial());

    try {
      if (await networkInfo.isConnected) {
        final response =
            await chatRemoteDataSource.sendMessage(message, receipientId);
        switch (response?.statusCode) {
          case 200:
            final chatResponse =
                (response?.data?['data']['conversation']['messages'] as List)
                    .map((e) => ChatMessage.fromJson(e as Map<String, dynamic>))
                    .toList();
            result = right(chatResponse);
            break;
        }
      } else {
        result = left(const ChatFailure.noNetwork());
      }
    } catch (e) {
      debugPrint(e.toString());
      result = left(const ChatFailure.serverError());
    }
    return result;
  }

  @override
  Future<Either<ChatFailure, Chat>> getChats(int conversationId) async {
    late Either<ChatFailure, Chat> result = left(const ChatFailure.initial());

    try {
      if (await networkInfo.isConnected) {
        final response = await chatRemoteDataSource.getChats(conversationId);
        switch (response?.statusCode) {
          case 200:
            final chatResponse = Chat.fromJson(response?.data['data']);
            result = right(chatResponse);
            break;
        }
      } else {
        result = left(const ChatFailure.noNetwork());
      }
    } catch (e) {
      debugPrint(e.toString());
      result = left(const ChatFailure.serverError());
    }
    return result;
  }

  @override
  Future<Either<ChatFailure, List<CounsellorChatee>>>
      getCounsellorChats() async {
    late Either<ChatFailure, List<CounsellorChatee>> result =
        left(const ChatFailure.initial());

    try {
      if (await networkInfo.isConnected) {
        final response = await chatRemoteDataSource.getCounsellorChats();
        switch (response?.statusCode) {
          case 200:
            final chatResponse = (response?.data?['data'] as List)
                .map(
                    (e) => CounsellorChatee.fromJson(e as Map<String, dynamic>))
                .toList();
            result = right(chatResponse);
            break;
        }
      } else {
        result = left(const ChatFailure.noNetwork());
      }
    } catch (e) {
      debugPrint(e.toString());
      result = left(const ChatFailure.serverError());
    }
    return result;
  }
}
