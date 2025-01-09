# README

## Descrição
Este é um projeto Flutter que utiliza o padrão Bloc para gerenciar o estado de uma lista de tarefas. O aplicativo permite adicionar, listar e remover tarefas.

## Estrutura do Projeto
- `tarefa_model.dart`: Define o modelo de dados `TarefaModel`.
- `tarefa_bloc.dart`: Implementa a lógica de negócios usando o padrão Bloc.
- `tarefa_event.dart`: Define os eventos que podem ser disparados no Bloc.
- `tarefa_state.dart`: Define os diferentes estados que o Bloc pode ter.
- `tarefa_repository.dart`: Simula um repositório de dados para gerenciar as tarefas.
- `home_screen.dart`: Tela principal do aplicativo que exibe a lista de tarefas.

## Funcionalidades
- **Adicionar uma nova tarefa.**
- **Listar todas as tarefas.**
- **Remover uma tarefa existente.**

## Como Executar
1. Certifique-se de ter o Flutter instalado em sua máquina. Para mais informações, consulte a [documentação oficial do Flutter](https://flutter.dev/docs).
2. Clone este repositório:
   ```
   git clone https://github.com/Journeyexe/Exemplo-Padrao-Bloc-Flutter
   ```
3. Navegue até o diretório do projeto:
   ```
   cd Exemplo-Padrao-Bloc-Flutter
   ```
4. Instale as dependências:
   ```
   flutter pub get
   ```
5. Execute o aplicativo:
   ```
   flutter run
   ```

## Contribuição
Contribuições são bem-vindas! Sinta-se à vontade para abrir uma issue ou enviar um pull request.

