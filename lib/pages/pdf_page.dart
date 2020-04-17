import 'package:collogeapp/data.dart';
import 'package:collogeapp/routs/routs.dart';
import 'package:collogeapp/widget/drop_down_pdf.dart';
import 'package:direct_select_flutter/direct_select_container.dart';
import 'package:flutter/material.dart';

class PdfPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  void _showScaffold() {
    final snackBar = SnackBar(content: Text('Hold and drag instead of tap'));
    scaffoldKey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF9F9F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: DirectSelectContainer(
        child: Column(
          children: <Widget>[
            ConstantText('Select Semester'),
            SizedBox(
              height: 3,
            ),
            Container(
              alignment: Alignment.center,
              height: (width * 0.12) > 70 ? 80 : ((width * 0.12) + 20),
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: DropDownPDF(
                  scaffoldKey: _showScaffold,
                  list: semester,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            ConstantText('Select Subject'),
            SizedBox(height: 3.0),
            Container(
              alignment: Alignment.center,
              height: (width * 0.12) > 70 ? 80 : ((width * 0.12) + 20),
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: DropDownPDF(
                  scaffoldKey: _showScaffold,
                  list: subject,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            ConstantText('Select Unit'),
            SizedBox(height: 3.0),
            Container(
              alignment: Alignment.center,
              height: (width * 0.12) > 70 ? 80 : ((width * 0.12) + 20),
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: DropDownPDF(
                  scaffoldKey: _showScaffold,
                  list: unit,
                ),
              ),
            ),
            SizedBox(height: 25.0),
            Container(
              width: double.infinity,
              height: width * 0.13,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  textColor: Colors.white,
                  color: Colors.blueGrey,
                  onPressed: () {
                    Navigator.of(context).pushNamed(ROUTES.UNIT_TOPIC_PAGE);
                  },
                  child: Text(
                    'CLICK HEAR',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ConstantText extends StatelessWidget {
  final text;

  const ConstantText(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 2.0, bottom: 2.0, left: 20.0),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
