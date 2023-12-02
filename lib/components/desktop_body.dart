import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math show pi;

import 'package:flutter/rendering.dart';

void main() {
  runApp(const MaterialApp(home: MyDesktopBody()));
}

class MyDesktopBody extends StatefulWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  _MyDesktopBodyState createState() => _MyDesktopBodyState();
}

class _MyDesktopBodyState extends State<MyDesktopBody> {
  late List<CollapsibleItem> _items;
  late String _headline;
  final AssetImage _avatarImg = const AssetImage('assets/asvesti.png');
  final Title = const Text('TEST NAME');

  void _onItemPressed(int index) {
    // Implement the behavior you want when an item is pressed
    print('Item $index pressed');
  }

  @override
  void initState() {
    super.initState();
    _items = _generateItems();
    _headline = _items.firstWhere((item) => item.isSelected).text;
  }

  List<CollapsibleItem> _generateItems() {
    return [
      CollapsibleItem(
          text: 'Dashboard',
          icon: Icons.assessment,
          onPressed: () => setState(() => _headline = 'DashBoard'),
          onHold: () => ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("Dashboard"))),
          isSelected: true,
          subItems: [
            CollapsibleItem(
              text: 'Menu',
              icon: Icons.menu_book,
              onPressed: () => setState(() => _headline = 'Menu'),
              onHold: () => ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text("Menu"))),
              isSelected: true,
            ),
            CollapsibleItem(
                text: 'Shop',
                iconImage: const AssetImage("assets/shop_icon.png"),
                icon: Icons.ac_unit,
                onPressed: () => setState(() => _headline = 'Shop'),
                onHold: () => ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("Shop"))),
                isSelected: true,
                subItems: [
                  CollapsibleItem(
                    text: 'Cart',
                    icon: Icons.shopping_cart,
                    onPressed: () => setState(() => _headline = 'Cart'),
                    onHold: () => ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(content: Text("Cart"))),
                    isSelected: true,
                  )
                ]),
          ]),
      CollapsibleItem(
        text: 'Search',
        icon: Icons.search,
        onPressed: () => setState(() => _headline = 'Search'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Search"))),
      ),
      CollapsibleItem(
        text: 'Notifications',
        icon: Icons.notifications,
        onPressed: () => setState(() => _headline = 'Notifications'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Notifications"))),
      ),
      CollapsibleItem(
        text: 'Settings',
        icon: Icons.settings,
        onPressed: () => setState(() => _headline = 'Settings'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Settings"))),
      ),
      CollapsibleItem(
        text: 'Alarm',
        icon: Icons.access_alarm,
        onPressed: () => setState(() => _headline = 'Alarm'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Alarm"))),
      ),
      CollapsibleItem(
        text: 'Eco',
        icon: Icons.eco,
        onPressed: () => setState(() => _headline = 'Eco'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Eco"))),
      ),
      CollapsibleItem(
        text: 'Event',
        icon: Icons.event,
        onPressed: () => setState(() => _headline = 'Event'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Event"))),
      ),
      CollapsibleItem(
        text: 'No Icon',
        onPressed: () => setState(() => _headline = 'No Icon'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("No Icon"))),
      ),
      CollapsibleItem(
        text: 'Email',
        icon: Icons.email,
        onPressed: () => setState(() => _headline = 'Email'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Email"))),
      ),
      CollapsibleItem(
          text: 'News',
          iconImage: const NetworkImage(
              "https://cdn-icons-png.flaticon.com/512/330/330703.png"),
          onPressed: () => setState(() => _headline = 'News'),
          onHold: () => ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("News"))),
          subItems: [
            CollapsibleItem(
              text: 'Old News',
              icon: Icons.elderly,
              onPressed: () => setState(() => _headline = 'Old News'),
              onHold: () => ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text("Old News"))),
            ),
            CollapsibleItem(
                text: 'Current News',
                icon: Icons.yard_outlined,
                onPressed: () => setState(() => _headline = 'Current News'),
                onHold: () => ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Current News"))),
                subItems: [
                  CollapsibleItem(
                    text: 'News 1',
                    icon: Icons.one_k,
                    onPressed: () => setState(() => _headline = 'News 1'),
                    onHold: () => ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(content: Text("News 1"))),
                  ),
                  CollapsibleItem(
                      text: 'News 2',
                      icon: Icons.two_k,
                      onPressed: () => setState(() => _headline = 'News 2'),
                      onHold: () => ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("News 2"))),
                      subItems: [
                        CollapsibleItem(
                          text: 'News 2 Detail',
                          icon: Icons.two_k_outlined,
                          onPressed: () =>
                              setState(() => _headline = 'News 2 Detail'),
                          onHold: () => ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                                  content: Text("News 2 Detail"))),
                        )
                      ]),
                  CollapsibleItem(
                    text: 'News 3',
                    icon: Icons.three_k,
                    onPressed: () => setState(() => _headline = 'News 3'),
                    onHold: () => ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(content: Text("News 3"))),
                  )
                ]),
            CollapsibleItem(
              text: 'New News',
              icon: Icons.account_balance,
              onPressed: () => setState(() => _headline = 'New News'),
              onHold: () => ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text("New News"))),
            ),
          ]),
      CollapsibleItem(
        text: 'Face',
        icon: Icons.face,
        onPressed: () => setState(() => _headline = 'Face'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Face"))),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Center(child: Text('D E S K T O P')),
            IconButton(
              onPressed: () {
                // Your onPressed logic here
              },
              icon: const Icon(
                Icons.notifications, // Replace with the desired icon
                color: Colors.white, // Customize the color if needed
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: CollapsibleSidebar(
                backgroundColor: Colors.brown,
                items: _items,
                collapseOnBodyTap: false,
                avatarImg: _avatarImg,
                title: 'John Smith',
                onTitleTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Yay! Flutter Collapsible Sidebar!')));
                },
                body: const Text(''),
                // _buildBody(size, context),
                // backgroundColor: Colors.black,
                unselectedTextColor: Colors.white,
                selectedTextColor: const Color.fromARGB(255, 255, 156, 107),
                selectedIconColor: const Color.fromARGB(255, 255, 156, 107),
                unselectedIconColor: Colors.white,
                selectedIconBox: const Color.fromARGB(255, 48, 48, 48),
                textStyle:
                    const TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
                titleStyle: const TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
                toggleTitleStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                sidebarBoxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 0, 32, 210),
                    blurRadius: 10,
                    spreadRadius: 0.01,
                    offset: Offset(3, 3),
                  ),
                  BoxShadow(
                    color: Colors.brown,
                    blurRadius: 10,
                    spreadRadius: 0.01,
                    offset: Offset(3, 3),
                  ),
                ],
              ),
            ),
            // First column
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Column(
                  children: [
                    // youtube video
                    AspectRatio(
                      aspectRatio:
                          16 / 9, // Typical aspect ratio for YouTube videos
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.brown),
                      ),
                    ),
                    //---

                    SizedBox(
                      height:
                          258, // Fixed height for the list of recommended videos
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: GridView.builder(
                            scrollDirection: Axis.vertical,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 6, // 2 items per column
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10.0,
                            ),
                            itemCount: 20,
                            itemBuilder: (context, index) {
                              return Material(
                                elevation:
                                    5, // Add elevation to the Material widget
                                borderRadius: BorderRadius.circular(15),
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Add button action here
                                    print('Button ${index + 1} pressed');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: const Color.fromARGB(255,
                                        177, 103, 76), // Customize text color
                                    padding: const EdgeInsets.all(
                                        16), // Customize padding
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          15), // Adjust the radius as needed
                                    ),
                                  ),
                                  child: Text('Button ${index + 1}'),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(width: 10),
            // Second column
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 252, 189, 137),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget _buildBody(Size size, BuildContext context) {
  //   return Container(
  //     height: 500,
  //     width: 500,
  //     color: Colors.blueGrey[50],
  //     child: Center(
  //       child: Transform.rotate(
  //         angle: math.pi / 2,
  //         child: Transform.translate(
  //           offset: Offset(-size.height * 0.3, -size.width * 0.23),
  //           child: Text(
  //             _headline,
  //             style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold), // Update with your desired TextStyle
  //             overflow: TextOverflow.visible,
  //             softWrap: false,
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
