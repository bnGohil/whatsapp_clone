import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/constants.dart';
import 'package:whatsapp_clone/utils/size_extension.dart';
class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.sp),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
           SizedBox(height: 10.sp,),
            Divider(height: 5.sp,color: kGrey,endIndent: 155.sp,indent: 155.sp,thickness: 2.sp,),
            Align(
                alignment: Alignment.centerRight,
                child: IconButton(onPressed: () {}, icon: const Icon(Icons.cancel_outlined)))

          ],
        ),
      ),
    );
  }
}

