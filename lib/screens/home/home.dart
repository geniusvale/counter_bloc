import 'package:counter_bloc/screens/home/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  state.count.toString(),
                  style: const TextStyle(fontSize: 120, color: Colors.white),
                ),
              ),
              const SizedBox(height: 128),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    color: Colors.white,
                    onPressed: () =>
                        context.read<CounterBloc>().add(Decrement()),
                    icon: const Icon(Icons.remove),
                  ),
                  ElevatedButton(
                    onPressed: () => context.read<CounterBloc>().add(Reset()),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      minimumSize: const Size(120, 48),
                      side: const BorderSide(color: Colors.white),
                    ),
                    child: const Text('RESET'),
                  ),
                  IconButton(
                    color: Colors.white,
                    onPressed: () =>
                        context.read<CounterBloc>().add(Increment()),
                    icon: const Icon(Icons.add),
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
