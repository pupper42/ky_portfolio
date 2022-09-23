import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:js' as js;

void main() => runApp(MyApp());

class PortfolioCard extends StatelessWidget {
  const PortfolioCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              title: const Text('Final Year Project'),
              subtitle: Text(
                'Academic',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'For my surveying final year research project I worked with a telescope used for tracking objects in Earth orbit. The purpose of the research was to determine the tracking accuracy of the telescope. I will be presenting the results at the 20th Australian Space Research Conference in Sydney.',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  //textColor: const Color(0xFF6200EE),
                  onPressed: () {
                    // Perform some action
                  },
                  child: const Text('ACTION 1'),
                ),
                TextButton(
                  //textColor: const Color(0xFF6200EE),
                  onPressed: () {
                    // Perform some action
                  },
                  child: const Text('ACTION 2'),
                ),
              ],
            ),
            //Image.asset('assets/card-sample-image.jpg'),
            //Image.asset('assets/card-sample-image-2.jpg'),
          ],
        ),
      ),
    );
  }
}

Widget aboutMeTwo = SliverToBoxAdapter(
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 300.0),
    child: Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(50),
          child: Text(
            "About Me",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Image.asset('assets/images/rocket_500x500.png',
                  height: 200, width: 200),
            ),
            const Expanded(
              child: Text(
                  "Hello! My name is Kevin and I'm a 4th year surveying student at RMIT University. I am also working as a survey assistant at Webster Survey Group on a casual basis. On this website you can find my portfolio, my resume and my contact information. Feel free to look around!",
                  style: TextStyle(fontSize: 16),
                  maxLines: 40),
            ),
          ],
        ),
        const Divider(
          height: 100,
          thickness: 1,
        )
      ],
    ),
  ),
);

Widget portfolioTextTwo = SliverToBoxAdapter(
    child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 300.0),
        child: Column(children: const [
          Padding(
            padding: EdgeInsets.all(50),
            child: Text(
              "Portfolio",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ])));

Widget portfolioCards = SliverPadding(
    padding: const EdgeInsets.symmetric(horizontal: 300),
    sliver: SliverGrid.count(
      crossAxisCount: 3,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      childAspectRatio: 1,
      children: [
        Card(
          child: Column(
            children: [
              Image.asset('assets/images/rocket_500x500.png'),
              const Text("hi"),
            ],
          ),
        ),
        Card(
          clipBehavior: Clip.antiAlias,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListTile(
                  title: const Text('Final Year Project'),
                  subtitle: Text(
                    'Academic',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'For my surveying final year research project I worked with a telescope used for tracking objects in Earth orbit. The purpose of the research was to determine the tracking accuracy of the telescope. I will be presenting the results at the 20th Australian Space Research Conference in Sydney.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      //textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ACTION 1'),
                    ),
                    TextButton(
                      //textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ACTION 2'),
                    ),
                  ],
                ),
                //Image.asset('assets/card-sample-image.jpg'),
                //Image.asset('assets/card-sample-image-2.jpg'),
              ],
            ),
          ),
        ),
        Card(
          color: Colors.blue[600],
          child: Container(),
        ),
        Card(
          color: Colors.blue[100],
          child: Container(),
        ),
      ],
    ));
Widget contactTwo = SliverToBoxAdapter(
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 300.0),
    child: Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(50),
          child: Text(
            "Contact",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "Links",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 50,
                child: IconButton(
                    icon: Image.asset('assets/images/logo-linkedin.png'),
                    iconSize: 50,
                    onPressed: () {
                      js.context.callMethod('open', [
                        'https://www.linkedin.com/in/kevin-yang-059b56247/'
                      ]);
                    }),
              ),
              SizedBox(
                width: 50,
                child: IconButton(
                    icon: Image.asset('assets/images/logo-github.png'),
                    iconSize: 50,
                    onPressed: () {
                      js.context
                          .callMethod('open', ['https://github.com/pupper42']);
                    }),
              ),
            ]),
        const SizedBox(height: 20.0),
        const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "Contact Form",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Row(
          children: const [
            Flexible(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  hintText: 'Enter your name',
                ),
              ),
            ),
            SizedBox(width: 20.0),
            Flexible(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter your email',
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0),
        Row(
          children: const [
            Flexible(
              child: TextField(
                minLines: 4,
                maxLines: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Message',
                  hintText: 'Enter your message',
                ),
              ),
            ),
          ],
        ),
        Row(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              child: const Text('Submit'),
              onPressed: () {},
            ),
          )
        ]),
      ],
    ),
  ),
);

Widget resumeTwo = SliverToBoxAdapter(
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 300.0),
    child: Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(50),
          child: Text(
            "Resume",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(0),
          child: Text(
            "Work Experience",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child:
                  Image.asset('assets/images/wsg.jpg', height: 100, width: 100),
            ),
            Column(
              children: const [
                Text("Survey Assistant - Webster Survey Group (2021 - Present)",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 40),
                Text(
                    "At Webster Survey Group I have performed work for a wide variety of clients ranging from private homeowners to large construction companies. Some of my key responsibilities include:",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    maxLines: 40),
                Text(
                    "\u2022 Performing feature surveys, setouts, and boundary re-establishments",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    maxLines: 40),
                Text(
                    "\u2022 Using a variety of instruments such as the Leica TS16 and the Spectra Precision GNSS receiver",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    maxLines: 40),
                Text(
                    "\u2022 Using AutoCAD to draft plans such as Plans of Subdivision, Plans of Survey etc.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    maxLines: 40),
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(0),
          child: Text(
            "Education",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Image.asset('assets/images/rmit_logo.png',
                  height: 100, width: 100),
            ),
            Column(
              children: const [
                Text(
                    "Bachelor of Applied Science (Surveying) - RMIT University (2019 - Now)",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 40),
                Text(
                    "I am currently in the final year of this course. Some of my academic achievements include:",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    maxLines: 40),
                Text(
                    "\u2022 The Major Project - I am determining the accuracy of a telescope used for tracking space debris. I will present this at the Australian Space Research Conference.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    maxLines: 40),
                Text(
                    "\u2022 Mostly High Distinctions in my courses with the rest being Distinctions. I currently have a GPA of 3.8 and a WAM of 81.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    maxLines: 40),
                Text(
                    "\u2022 A solid understanding of survey computations and theory.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    maxLines: 40),
              ],
            ),
          ],
        ),
        const Divider(
          height: 100,
          thickness: 1,
        )
      ],
    ),
  ),
);

Widget justDivider = SliverToBoxAdapter(
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 300.0),
    child: Column(
      children: const [
        Divider(
          height: 100,
          thickness: 1,
        )
      ],
    ),
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.green),
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: 300.0,
              flexibleSpace: FlexibleSpaceBar(
                title: SizedBox(
                  height: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text("Kevin Yang's Geoportfolio", textScaleFactor: 1.0),
                    ],
                  ),
                ),
                background: Image.asset('assets/images/pegging_edit.jpg',
                    fit: BoxFit.cover),
              ),
            ),
            aboutMeTwo,
            portfolioTextTwo,
            portfolioCards,
            justDivider,
            resumeTwo,
            contactTwo,
          ],
        ),
      ),
    );
  }
}
