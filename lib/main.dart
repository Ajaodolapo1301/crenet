
import 'package:crenet/provider/appState.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth/splashPage.dart';


Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
//  final appDocumentDirectory = await  path_provider.getApplicationDocumentsDirectory();
//  Hive.init(appDocumentDirectory.path);
//  Hive.registerAdapter(DriverAdapter());

//  await Hive.openBox("driver");
//  final box = Hive.box("driver");
//  Driver driver = box.get('driver', defaultValue: null);
//  setupLocator();
  runApp(MultiProvider(
      providers: [
//        ChangeNotifierProvider(create: (_)=>OtherState()),
//        ChangeNotifierProvider(create: (_)=>LogState(driver)),
//        ChangeNotifierProvider(create: (_)=>PaymentState()),
        ChangeNotifierProvider(create: (_)=>AppState()),
      ],
      child: MyApp()));
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'runDriver',
      theme: ThemeData(

        fontFamily: 'SFPro',
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
    );
  }
}
