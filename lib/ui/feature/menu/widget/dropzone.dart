
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';

import '../../../../core/theming/app_colors.dart';

class DropZoneWidget extends StatefulWidget {
  const DropZoneWidget({super.key});

  @override
  _DropZoneWidgetState createState() => _DropZoneWidgetState();
  }

class _DropZoneWidgetState extends State<DropZoneWidget>{

  late DropzoneViewController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.defaultRedColor,
      child: Stack(
        children: [
          const SizedBox(height: 200),
          DropzoneView(
            onCreated: (controller) => this.controller = controller,
              onDrop: acceptFile,
          ),
          const SizedBox(height: 200),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.cloud_upload, size: 80, color: Colors.white),
                const Text(
                  'Arrastre sus archivos aquí.',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                      backgroundColor: Colors.indigo[800],
                    shape: RoundedRectangleBorder(),
                  ),
                  icon: const Icon(Icons.search, size: 32),
                  label: const Text(
                    'Escoja el archivo',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () async {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future acceptFile(dynamic event) async {
    final name = event.name;
    final mime = await controller.getFileMIME(event);
    final bytes = await controller.getFileSize(event);
    final url = await controller.createFileUrl(event);

    print('Name: $name');

    final droppedFile = DroppedFile(
      url: url,
      name: name,
      mime: mime,
      bytes: bytes,
    );

  }

}

class DroppedFile {

  final String url;
  final String name;
  final String mime;
  final int bytes;

  const DroppedFile({
    required this.url,
    required this.name,
    required this.mime,
    required this.bytes,
  });

  // String get size {
  //   final kb = bytes / 1024;
  //   final mb = kb / 1024;
  //
  //   return mb > 1
  //       ? '${mb.toStringAsFixed(2)} MB'
  //       ? '${mb.toStringAsFixed(2)} MB'
  // }

}

