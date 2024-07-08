import 'package:flutter/material.dart';

import 'account.dart';
import 'gmap.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SettingsLayout(),
  ));
}

class SettingsLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Settings"),
        ),
        body: userList(context),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 2,
            fixedColor: Colors.red,
            items: [
              BottomNavigationBarItem(
                label: 'Charge',
                icon: Icon(Icons.location_on),
              ),
              BottomNavigationBarItem(
                label: 'Account',
                icon: Icon(Icons.account_circle_sharp),
              ),
              BottomNavigationBarItem(
                label: 'Settings',
                icon: Icon(Icons.settings),
              )
            ],
            onTap: (int index) {
              // Use Navigator to navigate to different screens
              switch (index) {
                case 0:
                  // Handle 'Charge' button click
                  // You can add your logic here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GMap()),
                  );
                  break;
                case 1:
                  // Handle 'Account' button click
                  // You can add your logic here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Account()),
                  );
                  break;
                case 2:
                  // Handle 'Settings' button click
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsLayout()),
                  );
                  break;
              }
            }),
      ),
    );
  }

  Widget userList(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: const Icon(
            const IconData(0xe3ae, fontFamily: 'MaterialIcons'),
          ),
          title: Text("Change Password"),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => Password(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Support"),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => Support(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(
            const IconData(0xe33d, fontFamily: 'MaterialIcons'),
          ),
          title: Text("About"),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => About(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(
            const IconData(0xe1b9, fontFamily: 'MaterialIcons'),
          ),
          title: Text("Delete Account"),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => FooLayout(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
      ],
    );
  }
}

//Password

class Password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Change Password"),
          leading: new IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter a new Password',
                      ),
                    )),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter a confirm Password',
                      ),
                    )),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Submit'),
                ),
              ]),
        ),
      ),
    );
  }
}

//support hint

class Support extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Support"),
          leading: new IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Give us a call'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('send us an mail'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//About

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('About'),
        ),
        body: userList(context),
      ),
    );
  }

  Widget userList(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: const Icon(
            const IconData(0xe2eb, fontFamily: 'MaterialIcons'),
          ),
          title: Text("Terms & condition"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => FooLayout(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(
            const IconData(0xe4ed, fontFamily: 'MaterialIcons'),
          ),
          title: Text("Privacy & Policy"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => FooLayout(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.wb_sunny),
          title: Text("Software Licenses"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => FooLayout(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(
            const IconData(0xee86, fontFamily: 'MaterialIcons'),
          ),
          title: Text("App Version"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => FooLayout(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
      ],
    );
  }
}

//

class FooLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Title"),
          leading: new IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Text("Demo"),
        ),
      ),
    );
  }
}
