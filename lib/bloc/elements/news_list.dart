import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:journal_app/config/navigation/app_router.dart';
import 'package:journal_app/config/values/colors.dart';
import 'package:journal_app/config/values/constants.dart';
import 'package:journal_app/data/model/news.dart';
import 'package:url_launcher/url_launcher.dart';

import 'image_handler.dart';

Widget buildResultsList(List<News> news) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Text(
          tr("news_list"),
          style: TextStyle(
            color: newsListTitleColor,
            fontSize: fontSize36,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Expanded(
        child: ListView.builder(
          itemCount: news.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            var imgUrl = news[index].url;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: newsListPadding),
              child: InkWell(
                onTap: () {
                  news[index].hosted
                      ? Navigator.pushNamed(
                          context,
                          newsDetailScreenPath,
                          arguments: [
                            news[index].id,
                            news[index].title,
                            news[index].url,
                            news[index].publisher,
                            news[index].publicationDate,
                            news[index].categories
                          ],
                        )
                      : launch(news[index].sourceUrl);
                },
                child: Card(
                  color: news[index].hosted ? urlCardColor : newsCardColor,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: avatarImageSize,
                        height: avatarImageSize,
                        child: getImage(imgUrl),
                      ),
                      const SizedBox(width: listItemPadding),
                      Flexible(
                        child: Text(
                          news[index].title,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      news[index].hosted ? IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios)) : const SizedBox(),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    ],
  );
}
