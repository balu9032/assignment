import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Featured games'),
              Text(
                'Google Play Games on PC',
                textScaleFactor: 0.5, //For adjusting the size of text
              )
            ],
          ),
        ),

        //Used SingleChildScrollView to enable scrolling the page
        body: SingleChildScrollView(
          //Used Column to show the data vertically one by one
          child: Column(
            children: [
              //For every item there are parts of data to place them in the given order this column is used
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      //used images from my assets
                      child: Image.asset(
                        'assets/images/1.webp',
                        scale: 0.1,
                      ),
                    ),
                  ),
                  //Here listtile us used to show image on left side as a leading and followed by some text vertically to left of image
                  ListTile(
                    //ClipRRect is used to manage the borders of image
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/1-1.jpeg',
                        //height and width is used to manage the size of image which is placed as leading in the listview
                        height: 70,
                        width: 70,
                      ),
                    ),
                    title: const Text('British GQ'),
                    subtitle: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Game',
                              textScaleFactor: 0.8,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '4.1',
                                  textScaleFactor: 0.8,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 14,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/2.jpg',
                        scale: 0.1,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/2-2.jpeg',
                        height: 70,
                        width: 70,
                      ),
                    ),
                    title: const Text(
                      'Millennials are driving the board games revival',
                      //overflow is used to manage the text if it is more than the space available on the screen. Using it we can manage to hide extra data or to pass extra data to next line
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Board Game ',
                              textScaleFactor: 0.8,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '3.5',
                                  textScaleFactor: 0.8,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 14,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/3.jpeg',
                        scale: 0.1,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/3-3.jpeg',
                        height: 70,
                        width: 70,
                      ),
                    ),
                    title: const Text(
                      'Halo Infinite Campaign and Multiplayer',
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Charlie',
                              textScaleFactor: 0.8,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '4.2',
                                  textScaleFactor: 0.8,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 14,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
