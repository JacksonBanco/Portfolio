import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: darkColor.withOpacity(0.5),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              children: [
                const SizedBox(
                  height: 30.0,
                ),
                Text(
                  "flutterでモバイルアプリ開発を目指す人",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 90.0,
                ),
                Text(
                  '・Darを主言語として使用し、Flutterフレームワークで開発している成長する開発者です。'
                  '\n・Flutterで単純なUI/UXプロジェクトからコミックブック/環境天気/配達アプリなどを開発しました。'
                  '\n・昨日よりもっと成長したい開発者になりたいです。',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding / 2),
                SizedBox(height: defaultPadding),
                if (!Responsive.isMobileLarge(context))
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          launchUrl(
                            Uri.parse('https://github.com/JacksonBanco'),
                          );
                        },
                        icon: SvgPicture.asset(
                          "assets/icons/github.svg",
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          launchUrl(
                            Uri.parse(
                                'https://github.com/JacksonBanco/JacksonBanco/blob/main/Geekly%E8%81%B7%E5%8B%99%E7%B5%8C%E6%AD%B4%E6%9B%B8_LEETAEJIN_20230217.docx'),
                          );
                        },
                        icon: SvgPicture.asset(
                          "assets/icons/download.svg",
                          color: Colors.white,
                        ),
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
