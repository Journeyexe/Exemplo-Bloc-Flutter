import 'package:bloc/data/blocs/tarefa_bloc.dart';
import 'package:bloc/data/blocs/tarefa_event.dart';
import 'package:bloc/data/blocs/tarefa_state.dart';
import 'package:bloc/data/models/tarefa_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final TarefaBloc _tarefaBloc;
  @override
  void initState() {
    super.initState();
    _tarefaBloc = TarefaBloc();
    _tarefaBloc.inputTarefa.add(GetTarefas());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: StreamBuilder<TarefaState>(
        stream: _tarefaBloc.outputTarefa,
        builder: (context, state) {
          if (state.data is TarefaLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.data is TarefaLoadedState) {
            final list = state.data?.tarefas ?? [];
            return ListView.separated(
              separatorBuilder: (context, index) =>
                  const Divider(color: Colors.teal),
              itemCount: list.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(child: Text('${index + 1}')),
                  trailing: IconButton(
                    onPressed: () => _tarefaBloc.inputTarefa
                        .add(DeleteTarefa(tarefa: list[index])),
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                  title: Text(list[index].nome),
                );
              },
            );
          } else {
            return const Center();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _tarefaBloc.inputTarefa
              .add(PostTarefas(tarefa: TarefaModel(nome: 'Fazer caminhada')));
        },
        child: const Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
}
