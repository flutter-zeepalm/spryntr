// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';


// class ImagePickerService {
//   static final picker = ImagePicker();
//   static Future<File?> getImageFromGallery() async {
//     try {
//       final pickedFile = await picker.pickImage(source: ImageSource.gallery);
//       if (pickedFile != null) {
//         return File(pickedFile.path);
//       } else {
//         return null;
//       }
//     } on PlatformException catch (e) {

//       return null;
//     }
//   }

//   static Future<File?> getImageFromCamera() async {
//     try {
//       final pickedFile = await picker.pickImage(source: ImageSource.camera);
//       if (pickedFile != null) {
//         return File(pickedFile.path);
//       } else {
//         return null;
//       }
//     } on PlatformException catch (e) {
//       return null;
//     }
//   }
// }