import 'package:flutter/material.dart';

class WidgetView extends StatefulWidget {
  const WidgetView({Key? key}) : super(key: key);

  @override
  State<WidgetView> createState() => _WidgetViewState();
}

class _WidgetViewState extends State<WidgetView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Ready'),
                  Container(
                      height: 5,
                      margin: EdgeInsets.only(top: 0),
                      padding: EdgeInsets.only(top: 0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.amber, Colors.white],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      )),
                  Text('2/2/2222'),
                ],
              ),
            ),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
