import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import './search.dart';
import './bottomnavigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _incrementCounter() {
    setState(() {});
  }

  final List<Widget> _pages = [
    MyApp(),
    Search(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget slider(String imageUrl, String text, String phrase, by) {
    return Container(
      width: 200,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(22.0),
            child: Image.network(
              imageUrl,
              width: 200,
              // height: 200,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(phrase),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(by),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(28.0),
                      bottomRight: Radius.circular(28.0),
                    ),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHSH_AepNzJhcfnHoHJfV4Z-G8gHpz6_cjWw&usqp=CAU',
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                  ),
                  const Positioned(
                    top: 30,
                    left: 20,
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 20,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFF5E5F63),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: const Text(
                              'News of the Day',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                          const Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(bottom: 20.0, top: 10.0),
                            child: const Row(
                              children: [
                                Text(
                                  'Learn More',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Breaking News',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {
                          // Add your onPressed logic here
                        },
                        child: const Text('More'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      slider(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHSH_AepNzJhcfnHoHJfV4Z-G8gHpz6_cjWw&usqp=CAU',
                          'Lorem ipsum dolor alt amet consectetur ellt.',
                          '19 hours ago',
                          'by Lorem Ipsum'),
                      const SizedBox(width: 10),
                      slider(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTv_n_rZFRkaOtx36XLRxay8LnZi5ewo9Nfg&usqp=CAU',
                          'Lorem ipsum dolor alt amet consectetur ellt',
                          '20 hours ago',
                          'by Lorem Ipsum'),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  MyWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: MyWidget(),
    );
  }
}
