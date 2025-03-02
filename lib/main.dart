

import 'package:flutter/material.dart';
import 'package:yandex_maps_mapkit/init.dart' as init;
import 'package:yandex_maps_mapkit/mapkit.dart';
import 'package:yandex_maps_mapkit/yandex_map.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
    
  await init.initMapkit(
    apiKey: '025faeb8-1c99-412c-9efe-3d3f3909f229'
  );
            
  runApp(const MyApp());
}
  
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  
  @override
  State<MyApp> createState() => _MyAppState();
}
  
class _MyAppState extends State<MyApp> {
  
  MapWindow? _mapWindow;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: YandexMap(onMapCreated: (mapWindow) => _mapWindow = mapWindow)
      )
    );
  }
}