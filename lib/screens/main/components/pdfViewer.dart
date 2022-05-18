import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class CVviewer extends StatefulWidget {
  const CVviewer({Key? key}) : super(key: key);

  @override
  State<CVviewer> createState() => _CVviewerState();
}

class _CVviewerState extends State<CVviewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text('Anup Upadhaya CV'),
    ),
    body: SfPdfViewer.asset(
      'assets/files/cv.pdf',
    ),
  );
  }
}