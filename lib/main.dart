import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  /// 상태바와 네비게이션바 숨김 처리
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    /// 백버튼 기능 비활성화
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              SystemNavigator.pop();
            },
            child: const SizedBox(
              width: 200,
              height: 100,
              child: Center(
                child: Text(
                  "앱 종료",
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
