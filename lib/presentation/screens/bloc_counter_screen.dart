import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_app/presentation/blocs/counter_cubit/counter_bloc/counter_bloc.dart';

class BlocCounterScreen extends StatelessWidget {
  const BlocCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: BlocCounterView(),
    );
  }
}

class BlocCounterView extends StatelessWidget {
  const BlocCounterView({super.key});

  void increaseCounterBy(BuildContext context, [int value = 1]) {
    // context.read<CounterBloc>().add(CounterIncreased(value: value));
    context.read<CounterBloc>().increaseBy(value); //forma mejorada
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: context.select(
          (CounterBloc bloc) => Text('Bloc counter: ${bloc.state.transactionCount}')),
        actions: [
          IconButton(
            // onPressed: () => context.read<CounterBloc>().add(CounterReset()), //forma antigua
            onPressed: () => context.read<CounterBloc>().resetCounter(), 
            icon: Icon(Icons.refresh_outlined))
        ],
      ),
      body: Center(child: context.select(
        (CounterBloc counterBloc) => Text('Counter value: ${counterBloc.state.counter}')
      )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: '1', //indicamos boton por defecto entre scaffolds
            child: Text('+3'),
            onPressed: () => increaseCounterBy(context, 3),
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            heroTag: '2', //indicamos boton por defecto entre scaffolds
            child: Text('+2'),
            onPressed: () => increaseCounterBy(context, 2),
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
            heroTag: '3', //indicamos boton por defecto entre scaffolds
            child: Text('+1'),
            onPressed: () => increaseCounterBy(context, 1),
          ),
        ],
      ),
    );
  }
}
