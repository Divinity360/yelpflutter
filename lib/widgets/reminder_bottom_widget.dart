import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_cubit/core/theme/theme.dart';
import 'package:login_cubit/core/utils/colors.dart';
import 'package:login_cubit/widgets/primaryButton.dart';

class ReminderBottomWidget extends StatelessWidget {

  const ReminderBottomWidget({Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final reminderItemsList = [1, 2, 5, 10];
    int selectedReminder = 1;

    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Container(
            height: 800,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(child: Icon(
                      Icons.close,
                      size: 25,
                      color: AppColors.darkGreen,
                    ), onTap: ()=> Navigator.of(context).pop()
                      ,)

                  ],
                ),
                Text(
                  'Set Reminder',
                  style: AppTheme.bodyMediumLightTextStyle,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    'Friendly reminder to limit screen time & take steps to get outdoors',
                    style: AppTheme.bodySmallTextStyle,
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 50.0 * reminderItemsList.length,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return RadioListTile(
                        contentPadding: EdgeInsets.zero,
                        controlAffinity: ListTileControlAffinity.trailing,
                        value: reminderItemsList[index],
                        groupValue: selectedReminder,
                        dense: true,
                        activeColor: AppColors.darkGreen,
                        onChanged: (int? value) =>
                            setState(() => selectedReminder = value!),
                        title: Text(
                          'Every ${reminderItemsList[index]} mins',
                          style: AppTheme.radioItemTextStyle,
                        ),
                      );
                    },
                    itemCount: reminderItemsList.length,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: PrimaryButton(
                    onTap: ()=> Navigator.of(context).pop(selectedReminder),
                    text: 'Done',
                  ),
                )
              ],
            ),
          );
        });
  }
}