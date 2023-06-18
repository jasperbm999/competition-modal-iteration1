import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clickable Containers',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContainerScreen(),
    );
  }
}

class ContainerScreen extends StatefulWidget {
  @override
  _ContainerScreenState createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  int selectedContainerIndex = -1;

  List<Color> containerColors = [
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
  ];

  void _selectContainer(int index) {
    setState(() {
      if (selectedContainerIndex != index) {
        if (selectedContainerIndex != -1) {
          containerColors[selectedContainerIndex] = Colors.black;
        }
        selectedContainerIndex = index;
        containerColors[index] = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clickable Containers'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _selectContainer(0);
                    },
                    child: Container(
                      height: 100,
                      color: containerColors[0],
                      child: Center(
                        child: Text(
                          'Container 1',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _selectContainer(1);
                    },
                    child: Container(
                      height: 100,
                      color: containerColors[1],
                      child: Center(
                        child: Text(
                          'Container 2',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _selectContainer(2);
                    },
                    child: Container(
                      height: 100,
                      color: containerColors[2],
                      child: Center(
                        child: Text(
                          'Container 3',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _selectContainer(3);
                    },
                    child: Container(
                      height: 100,
                      color: containerColors[3],
                      child: Center(
                        child: Text(
                          'Container 4',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            if (selectedContainerIndex != -1)
              ElevatedButton(
                onPressed: () {
                  // Handle confirmation button press
                },
                child: Text('Confirmation'),
              ),
          ],
        ),
      ),
    );
  }
}
