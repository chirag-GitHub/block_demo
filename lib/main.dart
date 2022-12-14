import 'package:block_demo/logic/cubits/home/home_cubit.dart';
import 'package:block_demo/logic/cubits/theme/theme_cubit.dart';
import 'package:block_demo/logic/cubits/theme/theme_state.dart';
import 'package:block_demo/presentation/home/home_screen.dart';
import 'package:block_demo/utilities/app_themes.dart';
import 'package:block_demo/utilities/routes/custom_router.dart';
import 'package:block_demo/utilities/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppThemes.lightAppTheme,
          darkTheme: AppThemes.darkAppTheme,
          themeMode: ThemeMode.light,
          onGenerateRoute: CustomRouter.allRoutes,
          initialRoute: homeRoute,
        );
      },
    );
  }
}
