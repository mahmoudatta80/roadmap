import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailsViewAppBar extends StatelessWidget {
  const DetailsViewAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      stretch: true,
      elevation: 0,
      pinned: true,
      centerTitle: true,
      backgroundColor: Colors.white,
      expandedHeight: 300,
      leading: const Icon(
        Icons.arrow_back_ios,
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          'https://img.freepik.com/free-photo/abstract-uv-ultraviolet-light-composition_23-2149243965.jpg?w=740&t=st=1684346160~exp=1684346760~hmac=1e0f18014e941fd5f9f8237b079bb3f5558ce89c469e02e1dcec3ec59f911cec',
          fit: BoxFit.fill,
        ),
        stretchModes: const [
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
        ],
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(-10),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 30,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Colors.white,
              ),
            ),
            Container(
              width: 50,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
