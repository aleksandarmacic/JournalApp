import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:journal_app/bloc/elements/error.dart';
import 'package:journal_app/bloc/elements/loading.dart';
import 'package:journal_app/bloc/elements/news_list.dart';
import 'package:journal_app/bloc/news_bloc.dart';
import 'package:journal_app/bloc/news_state.dart';
import 'package:journal_app/config/values/colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
      ),
      body: BlocBuilder<NewsBloc, NewsState>(
        builder: (context, state) {
          if (state is NewsInitialState) {
            return buildLoading();
          } else if (state is NewsLoadingState) {
            return buildLoading();
          } else if (state is NewsLoadedState) {
            return buildResultsList(state.news);
          } else if (state is NewsErrorState) {
            return buildError(state.message);
          } else {
            return buildError(tr("error"));
          }
        },
      ),
    );
  }
}
