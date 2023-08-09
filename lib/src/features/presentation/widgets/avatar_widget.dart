import 'package:events_app/styles/custom_text_style.dart';
import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: const Color(0xFFF9F9F9),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFEBEDF0))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/avatar.png'),
          const SizedBox(width: 18),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Андрей Бушев',
                style: CustomTextStyle.textStyle18,
              ),
              const SizedBox(height: 10),
              Container(
                width: 70,
                height: 24,
                decoration: BoxDecoration(
                  color: const Color(0xFF212122),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "ID: 1241",
                    style: CustomTextStyle.textStyle14.copyWith(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          const Spacer(),
          const Icon(Icons.keyboard_arrow_right_sharp, color: Color.fromRGBO(119, 138, 155, 1))
        ],
      ),
    );
  }
}
