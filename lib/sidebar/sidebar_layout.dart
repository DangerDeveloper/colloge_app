import 'package:collogeapp/logic/page_route_logic.dart';
import 'package:collogeapp/pages/templete.dart';
import 'package:provider/provider.dart';

import './sidebar.dart';
import 'package:flutter/material.dart';

class SideBarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (ctx) => PageRouteLogic(),
        child: Stack(
          children: <Widget>[
            SideBar(),
            Templete(),
          ],
        ),
      ),
    );
  }
}
