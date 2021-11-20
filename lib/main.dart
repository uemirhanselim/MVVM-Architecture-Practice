import 'package:flutter/material.dart';
import 'package:mvvmpractice/view/home_page.dart';
import 'package:mvvmpractice/view_model/home_view_model.dart';
import 'package:mvvmpractice/view_model/other_view_model.dart';
import 'package:provider/provider.dart';

import 'helper/locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeViewModel()),
        ChangeNotifierProvider(create: (context) => OtherViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
