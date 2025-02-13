// main.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_screens/toDo_item.dart';
import 'app_screens/toDo.dart';
import 'app_screens/commercialization.dart'; // New screen for commercialization features
import 'app_screens/sustainability.dart'; // New screen for sustainability features

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todosList = ToDo.todoList();
  List<ToDo> _foundToDo = [];
  final _todoController = TextEditingController();

  @override
  void initState() {
    _foundToDo = todosList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "To Do List",
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 233, 230, 230),
        appBar: _buildAppBar(),
        body: Stack(
          children: [
            _buildBody(),
            _buildAddToDoField(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            color: Color.fromARGB(255, 17, 17, 17),
            size: 40,
          ),
          PopupMenuButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: const Text("Sustainability"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SustainabilityScreen(),
                    ),
                  );
                },
              ),
              PopupMenuItem(
                child: const Text("Commercialization"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CommercializationScreen(),
                    ),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
      child: Column(
        children: [
          searchBox(),
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50.0, bottom: 20.0),
                  child: const Text(
                    "All ToDos",
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                for (ToDo todoo in _foundToDo)
                  ToDoItem(
                    todo: todoo,
                    onToDoChanged: _handleToDoChange,
                    onDeleteItem: _deleteToDoItem,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddToDoField() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin:
                  const EdgeInsets.only(bottom: 20.0, right: 20.0, left: 20.0),
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                controller: _todoController,
                decoration: const InputDecoration(
                  hintText: "Add a new todo item",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20.0, right: 20.0),
            child: ElevatedButton(
              onPressed: () {
                _addToDoItem(_todoController.text);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(60, 60),
                elevation: 10,
              ),
              child: const Text(
                "+",
                style: TextStyle(
                  fontSize: 40.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: TextField(
        onChanged: (value) => _runFilter(value),
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 10.0),
          prefixIcon: Icon(
            Icons.search,
            color: Color.fromARGB(255, 111, 105, 112),
            size: 20.0,
          ),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
          hintText: "Search",
          border: InputBorder.none,
        ),
      ),
    );
  }

  void _handleToDoChange(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _deleteToDoItem(String id) {
    setState(() {
      todosList.removeWhere((item) => item.id == id);
    });
  }

  void _addToDoItem(String toDo) {
    setState(() {
      todosList.add(ToDo(
        id: DateTime.now().microsecondsSinceEpoch.toString(),
        todoText: toDo,
      ));
    });
    _todoController.clear();
  }

  void _runFilter(String enteredKeyword) {
    List<ToDo> results = [];
    if (enteredKeyword.isEmpty) {
      results = todosList;
    } else {
      results = todosList
          .where((item) => item.todoText!
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundToDo = results;
    });
  }
}

