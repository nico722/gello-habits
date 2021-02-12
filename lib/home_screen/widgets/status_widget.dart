import 'package:flutter/material.dart';
import 'package:gellohabits/home_screen/widgets/progress_bar.dart';

import 'character_thumbnail.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 20),
                      child: ProgressBar(
                        color: Colors.red,
                        icon: Icons.favorite_sharp,
                        label: "Vida",
                        percentage: 0.5,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 20),
                      child: ProgressBar(
                        color: Colors.green,
                        icon: Icons.medical_services_sharp,
                        label: "Salud",
                        percentage: 0.8,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 20),
                      child: ProgressBar(
                        color: Colors.yellow,
                        icon: Icons.star_rate_sharp,
                        label: "Experiencia",
                        percentage: 0.2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: CharacterThumbnail(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
