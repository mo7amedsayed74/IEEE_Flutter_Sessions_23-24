import 'package:flutter/material.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.green[600],
        leading:const Icon(
          Icons.menu,
        ),
        title:const Text(
            'WhatsApp',
            style:TextStyle(
              color: Colors.white,
            )
        ),
        actions: const [
          Icon(
            Icons.search,
          ),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.more_vert,
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.green[600],
            padding: const EdgeInsets.only(
              top: 8,
              bottom: 8,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'CHAT',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  'STATUS',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  'CALLS',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              height: 65,
              child: Row(
                children: [
                  Icon(
                    Icons.ac_unit,
                    size: 60,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mohamed',
                          maxLines: 1,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'hello my friend...',
                          style: TextStyle(
                            fontSize: 12,
                            color:Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.ice_skating,
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              height: 65,
              child: Row(
                children: [
                  Icon(
                    Icons.ac_unit,
                    size: 60,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mohamed',
                          maxLines: 1,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'hello my friend...',
                          style: TextStyle(
                            fontSize: 12,
                            color:Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.ice_skating,
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              height: 65,
              child: Row(
                children: [
                  Icon(
                    Icons.ac_unit,
                    size: 60,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mohamed',
                          maxLines: 1,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'hello my friend...',
                          style: TextStyle(
                            fontSize: 12,
                            color:Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.ice_skating,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
