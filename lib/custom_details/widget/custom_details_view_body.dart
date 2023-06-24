import 'package:flutter/material.dart';
import 'package:roadmap/custom_details/widget/details_view_app_bar.dart';
import 'package:roadmap/custom_details/widget/details_view_body.dart';

class CustomDetailsViewBody extends StatelessWidget {
  const CustomDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          DetailsViewAppBar(),
          DetailsViewBody(),
        ],
      ),
    );
  }
}