import 'package:flutter/material.dart';

class CardImage extends StatefulWidget {
  const CardImage({Key? key}) : super(key: key);

  @override
  State<CardImage> createState() => _CardImageState();
}

class _CardImageState extends State<CardImage> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage(
                              'assets/images/closeup-diverse-people-joining-their-hands.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(25),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'title',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'SubTitle',
                            softWrap: true,
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'footer',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {
                          setState(() {
                            _counter++;
                          });
                        },
                        child: Icon(Icons.add)),
                    SizedBox(
                      height: 5,
                    ),
                    Text('$_counter'),
                    InkWell(
                        onTap: () {
                          setState(() {
                            _counter <= 0 ? null : _counter--;
                          });
                        },
                        child: Icon(Icons.minimize_rounded))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
