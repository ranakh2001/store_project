import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'controller/product_controller.dart';
import 'controller/search_controller.dart';
import 'controller/signI_controller.dart';
import 'view/mainPage.dart';
import 'view/search.dart';
import 'view/search_by_category.dart';
import 'view/signIn.dart';

SharedPreferences? sharedPref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();
  SigninController cont = Get.put(SigninController());
  SearchController scontroller = Get.put(SearchController());
  ProductController pcontrolller = Get.put(ProductController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        theme: ThemeData(
            fontFamily: 'Quicksand',
            appBarTheme: const AppBarTheme(
                backgroundColor: Color.fromARGB(255, 248, 238, 152))),
        debugShowCheckedModeBanner: false,
        getPages: [
          GetPage(name: "/signin", page: () => SignIn()),
          GetPage(name: "/", page: () => MainPage()),
          GetPage(name: "/search", page: ()=> Search()),
          GetPage(name: '/search_by_category',page: ()=> SearchByCategory())
        ],
      );
}
