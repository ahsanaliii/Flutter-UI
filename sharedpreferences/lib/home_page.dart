import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> items = [];

  Future<void> saveStringList(List<String> items) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList("itemsList", items);
  }

  Future<List<String>> getStringList() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList("itemsList") ?? [];
  }

  Future<void> addItem(String newItem) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> items = prefs.getStringList("itemsList") ?? [];
    items.add(newItem);
    await prefs.setStringList("itemsList", items);
  }

  Future<void> updateItem(int index, String newItem) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> items = prefs.getStringList("itemsList") ?? [];
    if (index >= 0 && index < items.length) {
      items[index] = newItem;
    }
    await prefs.setStringList("itemsList", items);
  }

  Future<void> removeItem(String item) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> items = prefs.getStringList("itemsList") ?? [];
    items.remove(item);
    await prefs.setStringList("itemsList", items);
  }

  Future<void> clearList() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove("itemsList");
  }

  @override
  void initState() {
    super.initState();
    loadItems();
  }

  Future<void> loadItems() async {
    items = await getStringList();
    setState(() {});
  }

  Future<void> addNewItem() async {
    await addItem("item ${items.length + 1}");
    loadItems();
  }

  Future<void> editItem(int index) async {
    await updateItem(index, "updatedItem ${index + 1}");
    loadItems();
  }

  Future<void> deleteItem(String item) async {
    await removeItem(item);
    loadItems();
  }

  Future<void> clearAllItems() async {
    await clearList();
    loadItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  addNewItem();
                },
                child: Text("Add Item"),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  clearAllItems();
                },
                child: Text("Clear All Items"),
              ),
              SizedBox(height: 30),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        // dense: true,
                        // selectedColor: Colors.teal,
                        tileColor: const Color.fromARGB(255, 169, 194, 191),
                        // hoverColor: Colors.amberAccent,
                        // horizontalTitleGap: 10,
                        // contentPadding: EdgeInsets.symmetric(vertical: 10),
                        // minTileHeight: 10,
                        // style: ,
                        title: Text(items[index]),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {
                                editItem(index);
                              },
                              icon: Icon(Icons.edit),
                            ),
                            IconButton(
                              onPressed: () {
                                deleteItem(items[index]);
                              },
                              icon: Icon(Icons.delete),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
