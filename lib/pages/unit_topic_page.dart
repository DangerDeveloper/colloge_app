import 'package:collogeapp/routs/routs.dart';
import 'package:flutter/material.dart';

class UnitTopicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                      child: Text('Pharmacognosy',style: TextStyle(fontSize: 20.0,color: Colors.black),),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                      child: Text('Unit: 1',style: TextStyle(fontSize: 16.0,color: Colors.black54),),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 6.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text('Medicine'),
                      subtitle: Text('By dr B.V.Gupta'),
                      onTap: () {
                        Navigator.of(context).pushNamed(ROUTES.UNIT_TOPIC_DOWNLOAD_PAGE);
                      },
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),ListTile(
                      title: Text('Medicine'),
                      subtitle: Text('By dr B.V.Gupta'),
                      onTap: () {},
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),ListTile(
                      title: Text('Medicine'),
                      subtitle: Text('By dr B.V.Gupta'),
                      onTap: () {},
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),ListTile(
                      title: Text('Medicine'),
                      subtitle: Text('By dr B.V.Gupta'),
                      onTap: () {},
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),ListTile(
                      title: Text('Medicine'),
                      subtitle: Text('By dr B.V.Gupta'),
                      onTap: () {},
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),ListTile(
                      title: Text('Medicine'),
                      subtitle: Text('By dr B.V.Gupta'),
                      onTap: () {},
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),ListTile(
                      title: Text('Medicine'),
                      subtitle: Text('By dr B.V.Gupta'),
                      onTap: () {},
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),ListTile(
                      title: Text('Medicine'),
                      subtitle: Text('By dr B.V.Gupta'),
                      onTap: () {},
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),ListTile(
                      title: Text('Medicine'),
                      subtitle: Text('By dr B.V.Gupta'),
                      onTap: () {},
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      title: Text('Medicine'),
                      subtitle: Text('By dr B.V.Gupta'),
                      onTap: () {},
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      title: Text('Medicine'),
                      subtitle: Text('By dr B.V.Gupta'),
                      onTap: () {},
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      title: Text('Medicine'),
                      subtitle: Text('By dr B.V.Gupta'),
                      onTap: () {},
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      title: Text('Medicine'),
                      subtitle: Text('By dr B.V.Gupta'),
                      onTap: () {},
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
