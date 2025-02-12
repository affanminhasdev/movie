// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;

Future<List<VideoItemStruct>> fetchBunnyCollectionVideos(
  String collectionId,
) async {
  const apiKey = '37546ffc-8fdd-4833-bd4208c59037-32e2-400d';
  const libraryId = '379807';
  final url = Uri.parse(
      'https://video.bunnycdn.com/library/$libraryId/videos?collection=$collectionId');

  try {
    final response = await http.get(
      url,
      headers: {
        'Accept': 'application/json',
        'AccessKey': apiKey,
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      List<VideoItemStruct> videos = (data['items'] as List<dynamic>)
          .map((item) => VideoItemStruct.fromMap(item))
          .toList();
      print("Videos: $videos");
      return videos;
    } else {
      print("Error: ${response.statusCode}, Message: ${response.body}");
      return [];
    }
  } catch (e) {
    print("Error: $e");
    return [];
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
