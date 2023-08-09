import 'package:events_app/styles/custom_text_style.dart';
import 'package:flutter/cupertino.dart';

class NewsWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final Image image;

  const NewsWidget({Key? key, required this.title, required this.subTitle, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(245, 245, 245, 1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: CustomTextStyle.textStyle12,
                ),
                const SizedBox(height: 40), // Add spacing between title and subTitle
                Text(
                  subTitle,
                  style: CustomTextStyle.textStyle10,
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          SizedBox(height: 100, width: 100, child: image),
        ],
      ),
    );
  }
}
