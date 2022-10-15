import 'package:ar_flutter_plugin/managers/ar_location_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_anchor_manager.dart';
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class DebugOptionsWidget extends StatefulWidget {
  DebugOptionsWidget({Key? key}) : super(key: key);

  @override
  _DebugOptionsWidgetState createState() => _DebugOptionsWidgetState();
}

class _DebugOptionsWidgetState extends State<DebugOptionsWidget> {
  late ARSessionManager arSessionManager;
  late ARObjectManager arObjectManager;
  bool _showFeaturePoints = false;
  bool _showPlanes = false;
  bool _showWorldOrigin = false;
  final bool _showAnimatedGuide = true;
  final String _planeTexturePath = "Images/triangle.png";
  final bool _handleTaps = true;

  @override
  void dispose() {
    super.dispose();
    arSessionManager.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Debug Options'),
        ),
        body: ModelViewer(
          src: 'https://egybasket.com/wp-content/uploads/2022/10/gaming_chair_free_download.glb',
          ar: true,
          alt: "A 3D model of an astronaut",
          autoPlay: true,
          autoRotate: true,
          cameraControls: true,
        ));
  }

}
