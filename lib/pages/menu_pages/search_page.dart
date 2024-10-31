import 'package:flutter/material.dart';
import 'package:receipt_app/config/color.config.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Center(
              child: Text(
                "Search Page",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: const Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: ColorConfig.primaryColor,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConfig.primaryColor,
                    ),
                    child: const Text(
                      "Breakfast",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                    ),
                    child: const Text(
                      "Lunch",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                    ),
                    child: const Text(
                      "Dinner",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                    ),
                    child: const Text(
                      "Snack",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Card(
              margin: EdgeInsets.only(top: 16),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/1.jpeg'),
                ),
                title: Text(
                  "Telur Dadar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text("Breakfast"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const Card(
              margin: EdgeInsets.only(top: 16),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/2.jpeg'),
                ),
                title: Text(
                  "Snack",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text("Breakfast"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const Card(
              margin: EdgeInsets.only(top: 16),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/3.jpeg'),
                ),
                title: Text(
                  "Mie Ayam",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text("Breakfast"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const Card(
              margin: EdgeInsets.only(top: 16),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/4.jpeg'),
                ),
                title: Text(
                  "Strawberry",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text("Breakfast"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
