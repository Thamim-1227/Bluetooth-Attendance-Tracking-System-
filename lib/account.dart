import 'package:flutter/material.dart';
import 'package:hyperev/settings.dart';

import 'gmap.dart';

void main() {
  runApp(MaterialApp(
    home: Account(),
  ));
}

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Account Details"),
        ),
        body: userList(context),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 1,
            fixedColor: Colors.red,
            items: [
              BottomNavigationBarItem(
                label: 'Charge',
                icon: const Icon(Icons.location_on),
              ),
              BottomNavigationBarItem(
                label: 'Account',
                icon: const Icon(Icons.account_circle_sharp),
              ),
              BottomNavigationBarItem(
                label: 'Settings',
                icon: const Icon(Icons.settings),
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
              const Icon(const IconData(0xe482, fontFamily: 'MaterialIcons')),
          title: Text("Payment"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => Payment(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading:
              const Icon(const IconData(0xf06bd, fontFamily: 'MaterialIcons')),
          title: Text("Vouchers"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => Vouchers(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading:
              const Icon(const IconData(0xe0ef, fontFamily: 'MaterialIcons')),
          title: Text("Booking"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => Booking(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading:
              const Icon(const IconData(0xe491, fontFamily: 'MaterialIcons')),
          title: Text("Personal Details"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => PersonalDetails(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading:
              const Icon(const IconData(0xe1d7, fontFamily: 'MaterialIcons')),
          title: Text("My vehicle"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => Myvehicle(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
      ],
    );
  }
}

class Vouchers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Vouchers"),
          leading: new IconButton(
            icon: const Icon(Icons.arrow_back),
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
                        hintText: 'Enter Your Voucher Code',
                      ),
                    )),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Redeem Voucher'),
                ),
              ]),
        ),
      ),
    );
  }
}

class Booking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('Booking'),
        ),
        body: userList(context),
      ),
    );
  }

  Widget userList(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading:
              const Icon(const IconData(0xe0a0, fontFamily: 'MaterialIcons')),
          title: Text("Upcoming"),
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
          leading:
              const Icon(const IconData(0xe1f6, fontFamily: 'MaterialIcons')),
          title: Text("Completed"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => Vouchers(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading:
              const Icon(const IconData(0xe139, fontFamily: 'MaterialIcons')),
          title: Text("Cancelled"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => Booking(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
      ],
    );
  }
}

//Personal Details

class PersonalDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Personal Details"),
          leading: new IconButton(
            icon: const Icon(Icons.arrow_back),
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
                        hintText: 'First name',
                      ),
                    )),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Last name',
                      ),
                    )),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Email',
                      ),
                    )),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Vehicle no',
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
            icon: const Icon(Icons.arrow_back),
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

//Myvehicle

class Myvehicle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('Select Type'),
        ),
        body: userList(context),
      ),
    );
  }

  Widget userList(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading:
              const Icon(const IconData(0xe40a, fontFamily: 'MaterialIcons')),
          title: Text("Two Wheeler"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => TwoWheeler(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading:
              const Icon(const IconData(0xe1d7, fontFamily: 'MaterialIcons')),
          title: Text("Four Wheeler"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => FourWheeler(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
      ],
    );
  }
}

//two wheeler

class TwoWheeler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('Select Type'),
        ),
        body: userList(context),
      ),
    );
  }

  Widget userList(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading:
              const Icon(const IconData(0xe40a, fontFamily: 'MaterialIcons')),
          title: Text("OLA"),
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
          leading:
              const Icon(const IconData(0xe40a, fontFamily: 'MaterialIcons')),
          title: Text("Ather"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => Vouchers(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading:
              const Icon(const IconData(0xe40a, fontFamily: 'MaterialIcons')),
          title: Text("Revolt"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => Vouchers(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading:
              const Icon(const IconData(0xe40a, fontFamily: 'MaterialIcons')),
          title: Text("VIDA"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => Vouchers(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading:
              const Icon(const IconData(0xe40a, fontFamily: 'MaterialIcons')),
          title: Text("TVS"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => Vouchers(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading:
              const Icon(const IconData(0xe40a, fontFamily: 'MaterialIcons')),
          title: Text("Bajaj"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => Vouchers(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
      ],
    );
  }
}

//Four Wheeler

class FourWheeler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('Select Type'),
        ),
        body: userList(context),
      ),
    );
  }

  Widget userList(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading:
              const Icon(const IconData(0xe1d7, fontFamily: 'MaterialIcons')),
          title: Text("TATA"),
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
          leading:
              const Icon(const IconData(0xe1d7, fontFamily: 'MaterialIcons')),
          title: Text("Mahindra"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => Vouchers(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading:
              const Icon(const IconData(0xe1d7, fontFamily: 'MaterialIcons')),
          title: Text("MG"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => Vouchers(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading:
              const Icon(const IconData(0xe1d7, fontFamily: 'MaterialIcons')),
          title: Text("Citroen"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => Vouchers(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading:
              const Icon(const IconData(0xe1d7, fontFamily: 'MaterialIcons')),
          title: Text("Hyundai"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => Vouchers(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
        ListTile(
          leading:
              const Icon(const IconData(0xe1d7, fontFamily: 'MaterialIcons')),
          title: Text("KIA"),
          trailing: const Icon(Icons.navigate_next),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => Vouchers(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
        ),
      ],
    );
  }
}

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('Select Type'),
        ),
        body: userList(context),
      ),
    );
  }

  Widget userList(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading:
              const Icon(const IconData(0xe481, fontFamily: 'MaterialIcons')),
          title: Text("UPI"),
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
          leading:
              const Icon(const IconData(0xe481, fontFamily: 'MaterialIcons')),
          title: Text("DEBIT/CREDIT Card"),
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
