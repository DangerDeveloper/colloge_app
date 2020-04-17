import 'dart:io';

import 'package:collogeapp/pages/pdf_view_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

class UnitTopicDownloadPage extends StatefulWidget {
  @override
  _UnitTopicDownloadPageState createState() => _UnitTopicDownloadPageState();
}

class _UnitTopicDownloadPageState extends State<UnitTopicDownloadPage> {
  String urlPDFPath = "";
  String assetPDFPath = "";

  Future<File> getFileFromUrl(String url) async {
    try {
      var data = await http.get(url);
      var bytes = data.bodyBytes;
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/mypdfonline.pdf");

      File urlFile = await file.writeAsBytes(bytes);
      return urlFile;
    } catch (e) {
      throw Exception("Error opening url file");
    }
  }

  Future<File> getFileFromAsset(String asset) async {
    try {
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/mypdf.pdf");

      File assetFile = await file.writeAsBytes(bytes);
      return assetFile;
    } catch (e) {
      throw Exception("Error opening asset file");
    }
  }

  @override
  void initState() {
    super.initState();
    getFileFromAsset("assets/mypdf.pdf").then((f) {
      setState(() {
        assetPDFPath = f.path;
        print(assetPDFPath);
      });
    });

    getFileFromUrl("http://www.pdf995.com/samples/pdf.pdf").then((f) {
      setState(() {
        urlPDFPath = f.path;
        print(urlPDFPath);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.0),
                width: double.infinity,
                alignment: Alignment.center,
                height: 150,
                child: CircleAvatar(
                  radius: 70,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.0),
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Text(
                      'AJAY SINGH GAUTAM',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Biotechnology',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Teacher at : PSIT, Kanpur',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Experience: 10 years',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.0),
                width: double.infinity,
                height: 100,
                child: ListTile(
                  onTap: () {
                    if (urlPDFPath != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PdfViewPage(path: assetPDFPath),
                        ),
                      );
                    }
                  },
                  title: Text('Medicine'),
                  trailing: Icon(Icons.file_download),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
