import 'package:flutter/material.dart';
import 'package:hyperev/settings.dart';

import 'account.dart';
import 'gmap.dart';

void main() {
  runApp(MaterialApp(
    home: Filter(),
  ));
}

class Filter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Filter"),
        ),
        body: userList(context),
        bottomNavigationBar: BottomNavigationBar(
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
          leading:
              const Icon(const IconData(0xf3b4, fontFamily: 'MaterialIcons')),
          title: Text("By distance"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => Distance(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading:
              const Icon(const IconData(0xe4e0, fontFamily: 'MaterialIcons')),
          title: Text("Connection Type"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => connectiontype(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading:
              const Icon(const IconData(0xe1d7, fontFamily: 'MaterialIcons')),
          title: Text("By vehicle Type"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => vehicletype(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading:
              const Icon(const IconData(0xe4e0, fontFamily: 'MaterialIcons')),
          title: Text("Voltage Speed"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => voltagespeed(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
      ],
    );
  }
}

class voltagespeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('Voltage Speed'),
        ),
        body: userList(context),
      ),
    );
  }

  Widget userList(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("Standard(3.7kw)"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => GMap(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          title: Text("Semi fast (3.7-20kw)"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => GMap(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          title: Text("Fast(20-73kw)"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => GMap(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          title: Text("ultraFast(20-73kw)"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => GMap(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
      ],
    );
  }
}

//vehicletype

class vehicletype extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('By VehicleType'),
        ),
        body: userList(context),
      ),
    );
  }

  Widget userList(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("Two Wheeler"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => GMap(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          title: Text("Four Wheeler"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => GMap(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
      ],
    );
  }
}

//connection type

class connectiontype extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('Connection Type'),
        ),
        body: userList(context),
      ),
    );
  }

  Widget userList(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("CCS"),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => GMap(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          title: Text("J-1772"),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => GMap(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          title: Text("Type2"),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => GMap(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          title: Text("Type3"),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => GMap(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          title: Text("GB/T"),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => GMap(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
      ],
    );
  }
}

class Distance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('By Distance'),
        ),
        body: userList(context),
      ),
    );
  }

  Widget userList(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("1km"),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => GMap(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          title: Text("3km"),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => GMap(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          title: Text("5km"),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => GMap(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
      ],
    );
  }
}

//Booking

class FooLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Select Type"),
          leading: new IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Text("foo"),
        ),
      ),
    );
  }
}
