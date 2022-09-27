import 'package:flutter/material.dart';

class IURProfileBioAndTags extends StatelessWidget {
  IURProfileBioAndTags({
    super.key,
    this.bio = "🖱 Diseño ui/ux y Fotografia 📷 Zihuatanejo, Mexico",
    this.hashtagsList = const [],
  }) {
    hashtagsFullText = hashtagsList
        .map(
            (tag) => "#${tag[0].toUpperCase() + tag.substring(1, tag.length)} ")
        .join("");
  }

  String hashtagsFullText = "";
  final String bio;
  final List<String> hashtagsList;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          bio,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white.withOpacity(.9),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          hashtagsFullText,
          style: TextStyle(
            color: Colors.white.withOpacity(.9),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
