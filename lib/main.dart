import 'package:collogeapp/pages/articles.dart';
import 'package:collogeapp/pages/experiment_pdf_page.dart';
import 'package:collogeapp/pages/pdf_page.dart';
import 'package:collogeapp/pages/unit_topic_download_page.dart';
import 'package:collogeapp/pages/unit_topic_page.dart';
import 'package:collogeapp/provider/pdfs.dart';
import 'package:collogeapp/routs/routs.dart';
import 'package:collogeapp/sidebar/sidebar_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => PdfS(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        home: SideBarLayout(),
        routes: {
          ROUTES.ARTICLES_ROUTE: (ctx) => Articles(),
          ROUTES.PDF_PAGE_ROUTE: (ctx) => PdfPage(),
          ROUTES.EXPERIMENT_PDF_PAGE: (ctx) => ExperimentPdfPage(),
          ROUTES.UNIT_TOPIC_PAGE: (ctx) => UnitTopicPage(),
          ROUTES.UNIT_TOPIC_DOWNLOAD_PAGE: (ctx) => UnitTopicDownloadPage(),
        },
      ),
    );
  }
}
