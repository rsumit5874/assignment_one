import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/painting.dart';

class PermissionHandleDialog extends StatelessWidget {
  const PermissionHandleDialog({Key? key})
      : super(key: const Key('permission-handle-dialogue'));

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 10,
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.white,
              width: 1.w,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(15))),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Pleas enable permission',
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
            SizedBox(
              height: 10.h,
            ),
            Text('Pleas allow permission manually',
                key: const Key('allow-permission-manually'),
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade700,
                    )),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    key: const Key('dismiss'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text('Dismis',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w400))),
                InkWell(
                    key: const Key('open-setting'),
                    onTap: () {
                      // openAppSettings();
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Open settings',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
