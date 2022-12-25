import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ChapterEleven extends StatefulWidget {
  const ChapterEleven({super.key});

  @override
  State<ChapterEleven> createState() => _ChapterElevenState();
}

class _ChapterElevenState extends State<ChapterEleven> {
  late PdfViewerController _pdfViewerController;
  final GlobalKey<SfPdfViewerState> _pdfViewerStateKey = GlobalKey();

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SfPdfViewer.asset(
        'assets/chapter11.pdf',
        controller: _pdfViewerController,
        key: _pdfViewerStateKey,
        initialZoomLevel: 1.5,
      ),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.keyboard_arrow_up,
              color: Colors.white,
            ),
            onPressed: () {
              _pdfViewerController.previousPage();
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
            onPressed: () {
              _pdfViewerController.nextPage();
            },
          ),
          IconButton(
              onPressed: () {
                _pdfViewerController.zoomLevel = 1.5;
              },
              icon: const Icon(
                Icons.zoom_out,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                _pdfViewerController.zoomLevel = 2;
              },
              icon: const Icon(
                Icons.zoom_in,
                color: Colors.white,
              ))
        ],
      ),
    ));
  }
}
