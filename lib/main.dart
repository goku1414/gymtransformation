
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_extend/share_extend.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';



import 'Cardwidget.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Uint8List? bytes;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fitness Transformation"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
              child: TransferCard(),
            ),
            ElevatedButton(onPressed: ()async{
              final controller = ScreenshotController();
              final bytes = await controller.captureFromWidget(const TransferCard());
              share(bytes);
            }, child: const Text("Share Your Transformation")),
          ],
        ),
      ),
    );
  }

  void share(Uint8List bytes) async {
    // final dir = await getApplicationDocumentsDirectory();
    // print(dir.path);
    // final testFile = File("${dir.path}/image.pdf");
    // testFile.create();
    // await testFile.writeAsBytes(bytes);
    //
    // Share.shareFiles([testFile.path], text: 'Great picture');


    final dir = await getApplicationDocumentsDirectory();
    pw.Document pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Expanded(
            // change this line to this:
            child: pw.Image(pw.MemoryImage(bytes), fit: pw.BoxFit.contain),
          );
        },
      ),
    );// Pag

    File pdfFile = File("${dir.path}/image.pdf");
    pdfFile.writeAsBytesSync(await pdf.save());
    Share.shareFiles([pdfFile.path], text: 'Great picture');
  }
}
