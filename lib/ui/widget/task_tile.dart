import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/ui/size_config.dart';
import 'package:todo_app/ui/theme.dart';

import '../../models/tasks.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(this.task, {Key? key}) : super(key: key);
  final Task task;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.orientation == Orientation.landscape
          ? SizeConfig.screenWidth / 2
          : SizeConfig.screenWidth,
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.orientation == Orientation.landscape ? getProportionateScreenWidth(4) : getProportionateScreenWidth(20),
      ),
      margin: EdgeInsets.only(bottom: getProportionateScreenHeight(12)),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: getBGClr(task.color),
        ),
        child: Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      task.title!,
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontSize: getProportionateScreenWidth(16),
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(12)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.access_time_rounded,
                          color: Colors.grey[200],
                          size: getProportionateScreenWidth(18),
                        ),
                        SizedBox(width: getProportionateScreenWidth(12)),
                        Text(
                          '${task.startTime} - ${task.endTime}',
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              fontSize: getProportionateScreenWidth(13),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(12)),
                    Text(
                      task.title!,
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontSize: getProportionateScreenWidth(15),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: getProportionateScreenHeight(60),
              width: getProportionateScreenWidth(0.5),
              color: Colors.grey[200]!.withOpacity(0.7),
            ),
            RotatedBox(
              quarterTurns: 3,
              child: Text(
                task.isCompleted == 0 ? 'TODO' : 'Completed',
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    fontSize: getProportionateScreenWidth(10),
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  getBGClr(int? color) {
    switch (color) {
      case 0:
        return bluishClr;
      case 1:
        return pinkClr;
      case 2:
        return orangeClr;
      //default :
      //return bluishClr;
    }
  }
}
