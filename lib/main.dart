import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_with_block/presentation/bloc/animation_bloc.dart';
import 'package:practice_with_block/presentation/pages/home_page.dart';
import 'package:practice_with_block/repository/animation_repository.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AnimationRepository(),
      child: BlocProvider(
        create: (context) => AnimationBloc(RepositoryProvider.of(context)),
        child: MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()),
      ),
    );
  }
}
