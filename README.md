# bloc

## Descrição

Este é um projeto Flutter que utiliza o padrão Bloc para gerenciar o estado de uma lista de tarefas. O aplicativo permite adicionar, listar e remover tarefas.

## Estrutura do Projeto

- [`lib/data/models/tarefa_model.dart`](lib/data/models/tarefa_model.dart): Define o modelo de dados `TarefaModel`.
- [`lib/data/blocs/tarefa_bloc.dart`](lib/data/blocs/tarefa_bloc.dart): Implementa a lógica de negócios usando o padrão Bloc.
- [`lib/data/blocs/tarefa_event.dart`](lib/data/blocs/tarefa_event.dart): Define os eventos que podem ser disparados no Bloc.
- [`lib/data/blocs/tarefa_state.dart`](lib/data/blocs/tarefa_state.dart): Define os diferentes estados que o Bloc pode ter.
- [`lib/data/repositories/tarefa_repository.dart`](lib/data/repositories/tarefa_repository.dart): Simula um repositório de dados para gerenciar as tarefas.
- [`lib/data/screens/home_screen.dart`](lib/data/screens/home_screen.dart): Tela principal do aplicativo que exibe a lista de tarefas.
- [`lib/main.dart`](lib/main.dart): Ponto de entrada do aplicativo.

## Funcionalidades

- Adicionar uma nova tarefa.
- Listar todas as tarefas.
- Remover uma tarefa existente.

## Como Executar

1. Certifique-se de ter o Flutter instalado em sua máquina. Para mais informações, consulte a [documentação oficial do Flutter](https://flutter.dev/docs/get-started/install).

2. Clone este repositório:
   ```sh
   git clone <URL_DO_REPOSITORIO>
```
# Exemplo-Bloc-Flutter
