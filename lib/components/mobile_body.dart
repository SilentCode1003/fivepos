import 'package:flutter/material.dart';
import 'package:circular_menu/circular_menu.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(child: Text('M O B I L E')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: [
            //
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 16 / 16,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.brown,
                  ),
                ),
              ),
            ),
            //
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                              height: 261, // Fixed height for the list of recommended videos
                              child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, // 2 items per column
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                      ),
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return Material(
                          elevation: 5, // Add elevation to the Material widget
                          borderRadius: BorderRadius.circular(15),
                          child: ElevatedButton(
                            onPressed: () {
                              // Add button action here
                              print('Button ${index + 1} pressed');
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: const Color.fromARGB(
                                  255, 177, 103, 76), // Customize text color
                              padding:
                                  const EdgeInsets.all(16), // Customize padding
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
                            ),
                )),
          ],
        ),
      ),
      floatingActionButton: CircularMenu(
        alignment: Alignment.bottomRight,
        toggleButtonColor: const Color.fromARGB(255,5,19,103),
        
        items: [
          CircularMenuItem(
            onTap: () {},
            icon: Icons.home,
            color: const Color.fromARGB(255, 45,49,250),
            iconColor: Colors.white,
            iconSize: 30.0, // Adjust the icon size
            margin: 6.0, // Adjust the margin
            padding: 6.0, // Adjust the padding
          ),
          CircularMenuItem(
            onTap: () {},
            icon: Icons.edit,
            color:const Color.fromARGB(255, 93,139,244),
            iconColor: Colors.white,
            iconSize: 30.0, // Adjust the icon size
            margin: 6.0, // Adjust the margin
            padding: 6.0, // Adjust the padding
          ),
          CircularMenuItem(
            onTap: () {},
            icon: Icons.delete,
            color: const Color.fromARGB(255, 175, 223, 241),
            iconColor: Colors.black,
            iconSize: 30.0, // Adjust the icon size
            margin: 6.0, // Adjust the margin
            padding: 6.0, // Adjust the padding
          ),
          CircularMenuItem(
            onTap: () {},
            icon: Icons.card_giftcard,
            color: const Color.fromARGB(255, 223,246,255),
            iconColor: Colors.black,
            iconSize: 30.0, // Adjust the icon size
            margin: 6.0, // Adjust the margin
            padding: 6.0, // Adjust the padding
          ),
        ],
      ),
    );
  }
}

void main() => runApp(const MaterialApp(home: MyMobileBody()));
