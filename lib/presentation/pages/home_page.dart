import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_with_block/presentation/bloc/animation_bloc.dart';
import 'package:practice_with_block/presentation/bloc/animation_event.dart';
import 'package:practice_with_block/presentation/bloc/animation_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Animated Container Demo",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<AnimationBloc, AnimationState>(
              builder: (context, state) {
                if (state is SuccessState) {
                  return AnimatedContainer(
                    height: state.height.toDouble(),
                    width: state.width.toDouble(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: state.color,
                    ),
                    duration: Duration(seconds: 1),
                  );
                } else if (state is ErrorState) {
                  return Text(
                    state.errorText,
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  );
                }
                return Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<AnimationBloc>(context).add(ChangeEvent());
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
