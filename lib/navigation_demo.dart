import 'package:flutter/material.dart';

class NavigationDemo extends StatefulWidget {
  const NavigationDemo({Key? key}) : super(key: key);

  @override
  _NavigationDemoState createState() => _NavigationDemoState();
}


class _NavigationDemoState extends State<NavigationDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const MainScreen(),
        "/contacts": (context) => const SecondScreen(),
        "/comments": (context) => const ThirdScreen()
      },
    );
  }
}

Widget navDrawer(context) => Drawer(
  child: ListView(padding: EdgeInsets.zero, children: [
    DrawerHeader(
      decoration: const BoxDecoration(color: Colors.lightGreenAccent),
      child: Container(
        height: 100,
      ),
    ),
    ListTile(
      leading: const Icon(Icons.one_k),
      title: const Text("Главная"),
      onTap: () {
        Navigator.pushNamed(context, "/");
      },
    ),
    const Divider(
      color: Colors.black,
    ),
    ListTile(
      leading: const Icon(Icons.two_k),
      title: const Text("Контакты"),
      onTap: () {
        Navigator.pushNamed(context, "/contacts");
      },
    ),
    const Divider(color: Colors.black,),
    ListTile(
      leading: const Icon(Icons.three_k),
      title: const Text("Комментарии"),
      onTap: () {
        Navigator.pushNamed(context, "/comments");
      },
    ),
    const Divider(color: Colors.black,),
  ]),
);

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Главная"),
          actions: <Widget>[
          IconButton(
          tooltip: "Баланс",
          onPressed: () {},
          icon: const Icon(Icons.account_balance)),
        IconButton(
            onPressed: (){},
            icon: const Icon(Icons.settings)),
        TextButton(
          onPressed: () {Navigator.pushNamed(context, "/contacts");},
          child: const Text("Контакты"),
          style: TextButton.styleFrom(
              primary: Theme.of(context).colorScheme.onPrimary),
        )
        ]
      ),
      drawer: navDrawer(context),
      body: const Center(
        child: Text("Главная страница"),

      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Контакты"),
          actions: <Widget>[
          IconButton(
          tooltip: "Баланс",
          onPressed: () {},
          icon: const Icon(Icons.account_balance)),
        IconButton(
            onPressed: (){},
            icon: const Icon(Icons.settings)),
        ]
      ),
      drawer: navDrawer(context),
      body: const Center(
        child: Text("Контакты"),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Комментарии"),
          actions: <Widget>[
          IconButton(
          tooltip: "Баланс",
          onPressed: () {},
          icon: const Icon(Icons.account_balance)),
        IconButton(
            onPressed: (){},
            icon: const Icon(Icons.settings)),
        TextButton(
          onPressed: () {Navigator.pushNamed(context, "/contacts");},
          child: const Text("Контакты"),
          style: TextButton.styleFrom(
              primary: Theme.of(context).colorScheme.onPrimary),
                  )
      ]),
      drawer: navDrawer(context),
      body: const Center(
        child: Text("Комментарии"),
      ),
    );
  }
}
