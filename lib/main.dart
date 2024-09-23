import 'package:bokkly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:bokkly_app/Features/home/presentation/maneger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bokkly_app/Features/home/presentation/maneger/newest_books_cubit/newest_books_cubit.dart';
import 'package:bokkly_app/constants.dart';
import 'package:bokkly_app/core/utils/app_router.dart';
import 'package:bokkly_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupGetIt();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // alternatively we can use getIt
  // late ApiService apiService;
  // late HomeRepoImpl homeRepoImpl;
  //  BooklyApp({super.key}){
  //   homeRepoImpl = HomeRepoImpl(apiService);
  //   apiService = ApiService(Dio());
  // }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            // alternative way to get it
            // homeRepoImpl,
            getIt.get<HomeRepoImpl>(),
            //that means when we create the cubit it will fetch the data from the repo
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        title: 'Bookly App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: false,
          brightness: Brightness.dark,
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
