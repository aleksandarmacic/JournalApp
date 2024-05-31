import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:journal_app/bloc/elements/image_handler.dart';
import 'package:journal_app/config/values/colors.dart';
import 'package:journal_app/config/values/constants.dart';
import 'package:journal_app/data/model/news.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetailScreen extends StatelessWidget {
  final News news;
  const NewsDetailScreen({required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(news.title),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(
              top: mainContentPadding,
              left: mainContentPadding,
              right: mainContentPadding,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width * imageSizeRatio,
                  width: MediaQuery.of(context).size.width * imageSizeRatio,
                  child: getImage(news.url),
                ),
                const SizedBox(
                  height: componentVerticalSpacing,
                ),
                Text(
                  news.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize24,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  news.publisher,
                  style: const TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: fontSize16,
                  ),
                ),
                news.categories.isNotEmpty
                    ? Text(
                        tr("categories") + news.categories.toString(),
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: fontSize16,
                        ),
                      )
                    : const SizedBox(),
                const SizedBox(
                  height: componentVerticalSpacing,
                ),
                Text(
                  tr("publication_date") + news.publicationDate,
                  style: const TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: fontSize16,
                  ),
                ),
                const SizedBox(
                  height: componentVerticalSpacing,
                ),
                news.sourceUrl.isNotEmpty
                    ? InkWell(
                        onTap: () => launchURL(news.sourceUrl),
                        child: Text(
                          tr("source_url") + news.sourceUrl,
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: fontSize16,
                            color: urlColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void launchURL(String songUrl) async {
    await canLaunch(songUrl) ? await launch(songUrl) : throw "URL cannot be launched";
  }
}
