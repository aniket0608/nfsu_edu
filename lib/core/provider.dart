import 'package:appwrite/appwrite.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nfsu/constants/appwrite_constants.dart';

final AppwriteClientProvider = Provider((ref) {
  final client = Client();
  client
      .setEndpoint(AppwriteConstants.endpoint)
      .setProject(AppwriteConstants.projectId)
      .setSelfSigned(status: true);
  return client;
});

final appwriteAccountProvider = Provider((ref) {
  final client = ref.watch(AppwriteClientProvider);
  return Account(client);
});
