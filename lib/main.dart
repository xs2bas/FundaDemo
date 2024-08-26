import 'package:flutter/material.dart';
import 'package:fundademo/utils/ui_constants.dart';
import 'package:get/get.dart';
import 'package:fundademo/routes/pages.dart';
import 'package:fundademo/routes/routes.dart';

void main() {
  runApp(const FundaDemo());
}

class FundaDemo extends StatefulWidget {
  const FundaDemo({super.key});

  @override
  State<FundaDemo> createState() => _FundaDemoState();
}

class _FundaDemoState extends State<FundaDemo> {
  @override
  void initState() {
    // timeDilation = 50.0;
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Funda demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: UIConstants.defaultTextStyle,
        ),
        primarySwatch: Colors.deepOrange,
        fontFamily: 'Lora',
      ),
      getPages: AppPages.pages,
      initialRoute: Routes.SPLASH,
    );
  }
}
