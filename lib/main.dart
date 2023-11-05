import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project_base/features/bottomNavBar/bottom_nav_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'core/basic_features.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize GetStorage.
  await GetStorage.init();

  orientations();

  runApp(const MyApp());
}

void orientations() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  void initState() {
    // Permission.notification.request();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (_, widget) {
        return GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: GetMaterialApp(
              localizationsDelegates: const [
                /// THIS IS FOR COUNTRY CODE PICKER
                CountryLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale("en"),
              ],
              builder: EasyLoading.init(
                builder: (context, child) {
                  return MediaQuery(
                    data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                    child: child!,
                  );
                },
              ),
              theme: ThemeData(
                  appBarTheme: const AppBarTheme(
                    elevation: 0.0,
                    color: ColorConst.backgroundColor,
                    systemOverlayStyle: SystemUiOverlayStyle(
                        statusBarColor: ColorConst.backgroundColor,
                        statusBarIconBrightness: Brightness.dark),
                    centerTitle: true,
                  ),
                  scaffoldBackgroundColor: ColorConst.backgroundColor),
              debugShowCheckedModeBanner: false,
              title: AppString.appName,
              // onGenerateRoute: Routers.generateRoute,
              routes: const <String, WidgetBuilder>{},
              home: BottomNavBar(),
            ));
      },
    );
  }
}
