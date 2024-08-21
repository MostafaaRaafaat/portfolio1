import 'package:flutter/material.dart';

class Trips extends StatefulWidget {
  @override
  State<Trips> createState() => _Home_PageState();
}

class _Home_PageState extends State<Trips> {
  final TextEditingController _searchController = TextEditingController();
  final List<Map<String, dynamic>> _gridData = [
    {
      'title': 'رحلات عائليه',
      'image': 'images/images (1).jpg',
      'route': 'family',
    },
    {
      'title': 'رحلات سفارى',
      'image': 'images/safary.jpg',
      'route': 'safari',
    },
    {
      'title': 'رحلات صيفيه',
      'image': 'images/summer.webp',
      'route': 'summer',
    },
    {
      'title': 'رحلات الشتويه',
      'image': 'images/wanteer.jpg',
      'route': 'wintter',
    },
  ];
  List<Map<String, dynamic>> _filteredGridData = [];

  @override
  void initState() {
    super.initState();
    _filteredGridData = _gridData;
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _performSearch() {
    _filteredGridData = _gridData
        .where((item) => item['title']
            .toLowerCase()
            .contains(_searchController.text.toLowerCase()))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'البحث',
              prefixIcon: Icon(Icons.search),
              suffixIcon: IconButton(
                icon: Icon(Icons.search),
                onPressed: _performSearch,
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Image.asset('images/download.png'),
              accountName: const Text(
                'Rehlati',
                style: TextStyle(fontSize: 15, fontFamily: 'Marhey'),
              ),
              accountEmail: const Text(
                'rehlati74@gmail.com',
                style: TextStyle(fontSize: 15, fontFamily: 'Marhey'),
              ),
            ),
            ListTile(
              title: const Text(
                'صفحه الرحلات',
                style: TextStyle(fontSize: 20, fontFamily: 'Marhey'),
              ),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.of(context).pushNamed('trips');
              },
            ),
            ListTile(
              title: const Text(
                ' الرحلات المفضله',
                style: TextStyle(fontSize: 20, fontFamily: 'Marhey'),
              ),
              leading: const Icon(Icons.favorite),
              onTap: () {
                Navigator.of(context).pushNamed('favorite');
              },
            ),
            ListTile(
              title: const Text(
                ' طريقه الدفع',
                style: TextStyle(fontSize: 20, fontFamily: 'Marhey'),
              ),
              leading: const Icon(Icons.payment),
              onTap: () {
                Navigator.of(context).pushNamed('payment');
              },
            ),
            ListTile(
              title: const Text(
                ' حسابي',
                style: TextStyle(fontSize: 20, fontFamily: 'Marhey'),
              ),
              leading: const Icon(Icons.account_balance),
              onTap: () {
                Navigator.of(context).pushNamed('acount');
              },
            ),
            ListTile(
              title: const Text(
                'الاعدادات ',
                style: TextStyle(fontSize: 20, fontFamily: 'Marhey'),
              ),
              leading: const Icon(Icons.settings),
              onTap: () {
                Navigator.of(context).pushNamed('settings');
              },
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.email,
                        size: 40,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'E-Mail',
                        style: TextStyle(fontSize: 15, fontFamily: 'Marhey'),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.facebook,
                        size: 40,
                      ),
                      Text(
                        'Face Book',
                        style: TextStyle(fontSize: 15, fontFamily: 'Marhey'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسيه',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'حسابى',
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: _filteredGridData.length,
        itemBuilder: (context, index) {
          final item = _filteredGridData[index];
          return ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(item['route']);
            },
            child: Column(children: [
              Container(
                height: 140,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)),
                margin: const EdgeInsets.only(
                  top: 15,
                ),
                child: Image.asset(
                  item['image'],
                  color: Colors.black,
                  colorBlendMode: BlendMode.dstIn,
                ),
              ),
              Text(
                item['title'],
                style: TextStyle(fontFamily: 'Marhey', fontSize: 25),
              ),
            ]),
          );
        },
      ),
    );
  }
}
