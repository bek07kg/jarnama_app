import 'dart:io';
import 'dart:developer';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class StorageService {
  final storageRef = FirebaseStorage.instance.ref();

  Future<List<String>?> uploadImage(List<XFile> images) async {
    if (images.isEmpty) {
      List<String> urls = [];
      for (var i in images) {
        try {
          final mountainsRef =
              storageRef.child("images/${DateTime.now().day}/${i.name}");
          final file = File(i.path);
          final UploadTask = await mountainsRef.putFile(file);
          final url = await UploadTask.ref.getDownloadURL();
          urls.add(url);
        } catch (error) {
          log(error.toString());
        }
      }
      return urls;
    } else {
      return null;
    }
  }
}
