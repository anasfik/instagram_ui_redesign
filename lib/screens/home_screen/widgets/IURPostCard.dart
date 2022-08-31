import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:instagram_redesign/helpers/icons.dart';

import '../../../models/IURPost_model.dart';

class IURPostCard extends StatelessWidget {
  const IURPostCard({Key? key, required this.post}) : super(key: key);

  final IURPostModel post;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Semantics(
            label: "general information about post, authorName, authorImg",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Semantics(
                      label: "author image",
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(post.authorImgPath),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Semantics(
                          label: "author name",
                          child: AutoSizeText(
                            post.authorName,
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        ),
                        Semantics(
                          label: "time of publish differance from now",
                          child: AutoSizeText(
                            "${DateTime.now().difference(post.timeOfPublish).inMinutes} min ago",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    SvgIconsHelper.fromSvg(
                      svgPath: "assets/icons/send.svg",
                      semanticLabel: "send icon",
                      size: 25,
                      color: Theme.of(context).primaryColor.withOpacity(.6),
                    ),
                    const SizedBox(width: 10),
                    SvgIconsHelper.fromSvg(
                      svgPath: "assets/icons/items.svg",
                      semanticLabel: "items icon",
                      size: 20,
                      color: Theme.of(context).primaryColor.withOpacity(.6),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
