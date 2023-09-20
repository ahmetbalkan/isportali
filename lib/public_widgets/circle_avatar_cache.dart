import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CircleAvatarImage extends StatelessWidget {
  final String imageUrl;
  final double imageSize;

  const CircleAvatarImage({super.key, required this.imageUrl, this.imageSize = 100});

  Future<MemoryImage> loadImage(String imageUrl) async {
    final response = await http.get(Uri.parse(imageUrl));
    if (response.statusCode == 200) {
      return MemoryImage(response.bodyBytes);
    } else {
      throw Exception('Failed to load image');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadImage(imageUrl),
      builder: (BuildContext context, AsyncSnapshot<MemoryImage> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Container(
              width: imageSize + 10,
              height: imageSize + 10,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(5),
              child: ClipOval(
                child: Image.asset('assets/images/png/user.png'),
              ),
            );
          } else {
            return Container(
              width: imageSize + 10,
              height: imageSize + 10,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(5),
              child: ClipOval(
                child: Image(image: snapshot.data!),
              ),
            );
          }
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
