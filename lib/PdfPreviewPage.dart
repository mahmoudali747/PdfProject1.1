import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterpdf/modle/InvoiceModle.dart';
import 'package:flutterpdf/pdfexport.dart' ;
import 'package:printing/printing.dart';

class PdfPreviewPage extends StatelessWidget {
  final Invoice invoice;
  const PdfPreviewPage({Key? key, required this.invoice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Preview'),
      ),
      body: PdfPreview(
        build: (context) => makePdf(invoice),
      ),
    );
  }
}