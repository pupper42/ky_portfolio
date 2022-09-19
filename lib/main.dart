import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kevin Yang's Geoportfolio",
      theme: ThemeData(
        //useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Welcome!"),
            centerTitle: true,
            titleSpacing: 0,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/banner.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            elevation: 20,
            bottom: const TabBar(
              indicatorColor: Colors.white,
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Home"),
                Tab(icon: Icon(Icons.person), text: "Portfolio"),
                Tab(icon: Icon(Icons.article), text: "Resume"),
                Tab(icon: Icon(Icons.chat), text: "Contact"),
              ],
            ),
          ),
          body: TabBarView(children: [
            home("Home"),
            portfolio("Portfolio"),
            resume("Resume"),
            contact("Contact"),
          ]),
        ),
      ),
    );
  }

  Widget home(String text) => Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              "About Me",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Hi! I'm Kevin. I'm a final year surveying student and currently working as a survey assistant at Webster Survey Group. This website contains my portfolio, my resume as well as my contact information, so feel free to look around by clicking the tabs above!",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Container(
            height: 500,
            child: FractionallySizedBox(
              widthFactor: 1,
              child: Image.asset('assets/images/pegging.jpg'),
            ),
          ),
        ],
      );

  Widget portfolio(String text) => Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              "Portfolio",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          portfolioCard("Rocket Science", "Academic", "We launched a rocket"),
        ],
      );
  Widget resume(String text) => Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              "Resume",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
        ],
      );
  Widget contact(String text) => Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              "Contact",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
        ],
      );

  Widget portfolioCard(String title, String sText, String desc) => SizedBox(
        height: 500,
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              ListTile(
                leading: const Icon(Icons.arrow_drop_down_circle),
                title: Text(title),
                subtitle: Text(
                  sText,
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  desc,
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      // Perform some action
                    },
                    child: const Text('ACTION 1'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Perform some action
                    },
                    child: const Text('ACTION 2'),
                  ),
                ],
              ),
              Image.asset('images/rocket_500x500.png'),
            ],
          ),
        ),
      );
}
