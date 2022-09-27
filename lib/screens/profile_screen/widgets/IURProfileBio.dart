import 'package:auto_size_text/auto_size_text.dart';
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
        AutoSizeText(
          bio,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white.withOpacity(.8),
          ),
          maxLines: 1,
        ),
        const SizedBox(
          height: 5,
        ),
        AutoSizeText(
          hashtagsFullText,
          style: TextStyle(
            color: Colors.white.withOpacity(.8),
          ),
          textAlign: TextAlign.center,
          maxLines: 1,
        ),
      ],
    );
  }
}
