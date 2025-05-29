import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart' show GetStorage;

import 'app/routes/app_pages.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  /// for status bar
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(

      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
  );

  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
