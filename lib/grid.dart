import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gridview/area.dart';

class grid extends StatefulWidget {
  const grid({super.key});

  @override
  State<grid> createState() => _gridState();
}

class _gridState extends State<grid> {
  final List<Map<String, dynamic>>
  _listItem = [

  {"image": 'asset/image/flat.png', "title": "My Flat",},
  {"image": 'asset/image/cost.png', "title": "cost"},
  {"image": 'asset/image/location.png', "title": "location"},
  {"image": 'asset/image/flat.png', "title": "hello"},
  {"image": 'asset/image/flat.png', "title": "hello"},
  {"image": 'asset/image/flat.png', "title": "hello"},
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            Container(
              width: 55,
              height: 108,
              decoration: BoxDecoration(
                color: Colors.yellow,
                shape: BoxShape.rectangle
              ),
              child: Image.asset('asset/image/symbol.png'),
            ),
            SizedBox(
              width: 10,
            ),
            Image.asset('asset/image/logo.jpg'),

          ],
        ),
        backgroundColor: Colors.pink,
        actions: [Container(
          width: 75,
          child: IconButton(onPressed: () {  }, icon: Icon(Icons.notifications),),
        )],
      ),
      body:  SafeArea(

              child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Expanded(
                  child: GridView.count(
                   // padding: EdgeInsets.all(),
                    crossAxisCount: 3,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 10,
                      shrinkWrap: true, scrollDirection: Axis.vertical, physics: NeverScrollableScrollPhysics(),
                    children:[ ..._listItem.map((item) => Container(
                      child: Column(
                        children: [
                          InkWell(
                            child:Container(
                      height: 40,
                        width: 40,//First
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: Image.asset(item["image"].toString()).image,
                            )
                        ),
                      ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const area()));

                          },
                          ),
                          // Container(
                          //   decoration: BoxDecoration(
                          //       image: DecorationImage(
                          //           image: NetworkImage(item["image"].toString())
                          //       )
                          //   ),
                          // ),
                          Text(item["title"].toString()),

                        ],
                      ),
                    )
                  )])
              )
            ],
          ),
        ),
      ),
    );

  }
}
