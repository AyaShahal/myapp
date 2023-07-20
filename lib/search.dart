import 'package:flutter/material.dart';
import './main.dart';
import './category.dart';
import './bottomnavigation.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

void _navigateToCategoryPage(BuildContext context, Category category) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => CategoryPage(category: category),
    ),
  );
}

class _SearchState extends State<Search> {
  Category? selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Icon(Icons.menu),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(top: 70, right: 20, left: 20),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Discover',
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'News from all over the world',
                      style: TextStyle(color: Colors.grey),
                    ),
                    // Add more children here
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey.shade200,
                ),
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  ),
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    final isSelected = category == selectedCategory;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategory = category;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 16,
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            // Add a colored bottom border for the active category
                            bottom: BorderSide(
                              color: isSelected
                                  ? Colors.black
                                  : Colors.transparent,
                              width: 2.0,
                            ),
                          ),
                        ),
                        // margin: const EdgeInsets.all(4),

                        child: Text(
                          category.name,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    );
                  },
                ),
              ),
             if (selectedCategory != null)
  Expanded(
    child: ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: selectedCategory!.items.length,
      itemBuilder: (context, index) {
        final itemData = selectedCategory!.items[index].split(',');
        final itemText = itemData[0];
        final imageUrl = itemData[1];
        final time = itemData[2];
          final views = itemData[3];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(22.0),
                child: Image.network(
                  imageUrl,
                  width: 90,
                  // height: 100,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      itemText,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),

                    Row(
                      children: [
                        Icon(Icons.timelapse,size: 15,),
                          const SizedBox(width: 5,),
                        Text(time,style: TextStyle(fontSize: 12),),
                       const SizedBox(width: 10,),
                        Icon(Icons.visibility,size: 15,),
                          const SizedBox(width: 5,),
                        Text(views,style: TextStyle(fontSize: 12),),
                      
                      ],

                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    ),
  ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: MyWidget(),
    );
  }
}
