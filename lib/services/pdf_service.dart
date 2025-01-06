import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:syncfusion_flutter_pdf/pdf.dart';

class PdfService {
  late String dirPath;
  Map<String, String> jsonMap = {};

  Future<void> createCadenceReport({double? cadenceScore}) async {
    // Load PDF as bytes from assets
    ByteData data = await rootBundle.load('assets/pdf/usageReport.pdf');
    PdfDocument document = PdfDocument(inputBytes: data.buffer.asUint8List());
    // List<int> bytes = data.buffer.asUint8List();

    jsonMap.addAll({"test": "50"});
    document.form.importData(utf8.encode(jsonEncode(jsonMap)), DataFormat.json);
    document.form.flattenAllFields();

    // Get the temporary directory to store the PDF
    Directory directory = await path_provider.getTemporaryDirectory();
    String tempPath = '${directory.path}/usageReport.pdf';

    // Write the PDF to the temporary file
    File tempFile =
        await File(tempPath).writeAsBytes(await document.save(), flush: true);

    // Open the PDF file
    await OpenFilex.open(tempFile.path);
  }
}
