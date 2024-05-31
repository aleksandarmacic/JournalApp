import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:journal_app/ui/home/home_screen.dart';

import 'bloc/news_bloc.dart';
import 'bloc/news_event.dart';
import 'config/navigation/app_router.dart';
import 'config/values/colors.dart';
import 'data/graphql_queries.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      child: MyApp(),
      supportedLocales: const [
        Locale("en", "US"),
      ],
      path: 'assets/languages',
    ),
  );
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LastFM App",
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: BlocProvider<NewsBloc>(
          create: (BuildContext context) =>
              NewsBloc()..add(FetchNewsEvent(query: getNewsQuery)),
          child: HomeScreen()),
      theme: ThemeData(
        primaryColor: primaryColor,
        appBarTheme: AppBarTheme(
          color: primaryColor,
        ),
      ),
      onGenerateRoute: _appRouter.onGenerateRoute,
      initialRoute: rootPath,
    );
  }

  @override
  void dispose() {
    _appRouter.dispose();
  }
}
