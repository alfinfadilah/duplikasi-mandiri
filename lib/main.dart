import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _MenuPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class _MenuPage extends StatelessWidget {
  final List<Map<String, String>> menuItems = [
    {
      'judul' : 'Mobile Legend',
      'gambar': 'assets/ml.jpg',
      'rating': '4,9',
      'waktu' : '±20 mnt/match',
      'review': '108,6 rb'
    },
    {
      'judul' : 'Free Fire',
      'gambar': 'assets/ff.png',
      'rating': '4,6',
      'waktu' : '±20 mnt/match',
      'review': '101,4 rb'
    },
    {
      'judul' : 'PUBG Mobile',
      'gambar': 'assets/pubg.png',
      'rating': '4,5',
      'waktu' : '±25 mnt/match',
      'review': '98,6 rb'
    },
    {
      'judul' : 'Honor Of King',
      'gambar': 'assets/hok.jpeg',
      'rating': '4,1',
      'waktu' : '±20 mnt/match',
      'review': '88,3 rb'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Joki Murah Terpercaya',
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
      ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/1.jpeg'),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Joki Terpercaya',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Fast to Joki',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
              },
            ),
            ListTile(
              leading: Icon(Icons.military_tech),
              title: Text('Height Tier'),
              onTap: () {
              },
            ),
            ListTile(
              leading: Icon(Icons.speed),
              title: Text('Fast Proyek'),
              onTap: () {
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text('Contact Us'),
              onTap: () {
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.55,
          ),
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            return buildMenuItem(menuItems[index]);
          },
        ),
      ),
    );
  }

  Widget buildMenuItem(Map<String, String> item) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.grey.shade300,
      shadowColor: Colors.black,
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5)
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  SizedBox(width: 5,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Image.asset(
                      'assets/1.jpeg',
                      width: 25,
                      height: 25,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    'Glarr Store Ori',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(width: 10,),
                  CircleAvatar(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      radius: 7,
                      child: Icon(
                        Icons.check,
                        size: 10,
                      ),
                      )
                ],
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.asset(
              item['gambar']!,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['judul']!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 16,
                    ),
                    SizedBox(width: 5,),
                    Text(
                      item['rating']!,
                      style: TextStyle(
                        fontSize: 14
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.timer,
                      size: 16,
                      color: Colors.black,
                    ),
                    SizedBox(width: 5,),
                    Text(
                      item['waktu']!,
                      style: TextStyle(
                        fontSize: 14
                      ),
                    )
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Icon(
                      Icons.recycling,
                      size: 16,
                      color: Colors.black,
                    ),
                    SizedBox(width: 5,),
                    Text(
                      item['review']!,
                      style: TextStyle(
                        fontSize: 14
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(1000),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4
                          )
                        ]
                      ),
                      child: IconButton(
                        onPressed: (){}, 
                        icon: Icon(
                          Icons.thumb_up,
                          size: 20,
                          )
                        ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
