import 'package:bookly_v2/core/utils/syles.dart';
import 'package:bookly_v2/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FailureUi extends StatelessWidget {
  const FailureUi({
    super.key,
    required this.errMessage,
  });
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Lottie.asset('assets/lotties/error.json',
              width: MediaQuery.of(context).size.width * 0.6),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Text(
              errMessage,
              textAlign: TextAlign.center,
              style: Styles.text14,
            ),
          ),
          const SizedBox(
            height: 32.0,
          ),
          CustomButton(
            onPressed: () {
              //reloadHomeViewData(context);
            },
            btnText: 'try again',
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }

  // void reloadHomeViewData(BuildContext context) {
  //   BlocProvider.of<NewestBooksCubit>(context).fetchNewestBooks();
  //   BlocProvider.of<FeaturedBooksCubit>(context).fetchFeaturedBooks();
  // }
}
