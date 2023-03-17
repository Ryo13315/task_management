import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management/pages/top/top_page.dart';
import 'package:task_management/provider/page_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => PageProvider()),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'タスク管理',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const TopPage()
        ),
    );
  }
}