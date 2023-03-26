import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children: [
            Spacer(flex: 2),
            SizedBox(
              width: 150,
              height: 150,
              child: CircleAvatar(
                radius: 8,
                backgroundImage: AssetImage("assets/images/my_profile.jpg"),
              ),
            ),
            Spacer(),
            Text(
              "李  兌  鎭",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              "Flutter Developer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
