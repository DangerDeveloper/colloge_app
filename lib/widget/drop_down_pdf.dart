import 'package:collogeapp/consts/const.dart';
import 'package:direct_select_flutter/direct_select_item.dart';
import 'package:direct_select_flutter/direct_select_list.dart';
import 'package:flutter/material.dart';

class DropDownPDF extends StatefulWidget {
  final Function scaffoldKey;
  final List<String> list;
  DropDownPDF({this.scaffoldKey,this.list});

  @override
  _DropDownPDFState createState() => _DropDownPDFState();
}

class _DropDownPDFState extends State<DropDownPDF> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          MealSelector(data: widget.list, scaffoldKey: widget.scaffoldKey),
        ],
      ),
    );
  }
}

class MealSelector extends StatelessWidget {
  final Function scaffoldKey;
  final List<String> data;

  MealSelector({@required this.data, this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: dropDownPDF,
      child: Card(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Padding(
                child: DirectSelectList<String>(
                  onUserTappedListener: () {
                    scaffoldKey();
                  },
                  onItemSelectedListener: (string, int, ctx) {
                    print(string);
                    print(int);
                  },
                  values: data,
                  defaultItemIndex: 0,
                  itemBuilder: (String value) => getDropDownMenuItem(value,width),
                  focusedItemDecoration: DROPDOWN_PDF_FOCUS_ITEM,
                ),
                padding: EdgeInsets.only(left: 12),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(
                Icons.unfold_more,
                color: Colors.blueGrey,
              ),
            )
          ],
        ),
      ),
    );
  }

  DirectSelectItem<String> getDropDownMenuItem(value,width) {
    return DirectSelectItem<String>(
      itemHeight: (width * 0.12) > 60 ? 60 : (width * 0.12),
      value: value,
      itemBuilder: (context, value) {
        return Text(value);
      },
    );
  }
}
