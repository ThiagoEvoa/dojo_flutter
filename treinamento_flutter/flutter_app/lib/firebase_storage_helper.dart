import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_app/firebasd_store_helper.dart';

class FirebaseStorageHelper {
  StorageReference _storage;

  FirebaseStorageHelper() : _storage = FirebaseStorage.instance.ref();

  Future<StorageTaskSnapshot> upload({@required File image}) async {
    var name = DateTime.now();
    final result = await _storage
        .child('image/$name')
        .putFile(image)
        .onComplete;
    final url = await result.ref.getDownloadURL();
    FirebaseStoreHelper().save(name: name.toString(), url: url);
    return result;
  }

  Future<void> delete({@required String name, @required String id}) async {
    await _storage.child('image/$name').delete();
    FirebaseStoreHelper().delete(id: id);
  }
}
