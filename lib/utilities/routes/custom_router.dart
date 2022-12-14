import 'package:block_demo/data/models/item.dart';
import 'package:block_demo/logic/cubits/post/post_cubit.dart';
import 'package:block_demo/logic/cubits/post/post_detail_cubit.dart';
import 'package:block_demo/presentation/home/home_screen.dart';
import 'package:block_demo/presentation/home/post_detail_screen.dart';
import 'package:block_demo/presentation/home/post_screen.dart';
import 'package:block_demo/utilities/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomRouter {
  static Route<dynamic> allRoutes(RouteSettings routeSettings) {
    // print('settings ${routeSettings.name}');
    switch (routeSettings.name) {
      case homeRoute:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case postListRoute:
        return MaterialPageRoute(builder: (context) => BlocProvider(create: (context) => PostCubit(), child :const PostListScreen()));
      case postDetailRoute:
        Item item =  routeSettings.arguments as Item;
        // return MaterialPageRoute(
        //     builder: (_) => PostDetailScreen(item));
        return MaterialPageRoute(builder: (context) => BlocProvider(create: (context) => PostDetailCubit(), child :PostDetailScreen(item)));

    // case signInRoute:
      //   return MaterialPageRoute(builder: (_) => SignInScreen());
      // case signUpRoute:
      //   return MaterialPageRoute(builder: (_) => SignUpScreen());
      // case mobileRoute:
      //   // final Map<String,String> arguments = routeSettings.arguments as Map<String,String>;
      //   return MaterialPageRoute(builder: (_) => MobileScreen());
      // case otpRoute:
      //   final String mobileWithCode = routeSettings.arguments as String;
      //   return MaterialPageRoute(builder: (_) => OTPScreen(mobileWithCode));
      // case imageFullRoute:
      //   final Map<String,dynamic> arguments = routeSettings.arguments as Map<String,dynamic>;
      //   return MaterialPageRoute(builder: (_) => ImageFullScreen( arguments: arguments,));
    }
    return MaterialPageRoute(builder: (_) => const HomeScreen());
  }
}
