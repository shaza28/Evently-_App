import 'package:evently_app/core/resourses/colors_manager.dart';
import 'package:evently_app/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EventItem extends StatefulWidget {
  const EventItem({super.key, required this.event});
  final EventModel event;

  @override
  State<EventItem> createState() => _EventItemState();
}

class _EventItemState extends State<EventItem> {
  bool favourite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.all(8),
      margin: REdgeInsets.symmetric(horizontal: 16.h, vertical: 8),
      width: double.infinity,
      height: 200.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.blue, width: 1.w),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(widget.event.category.imagePath),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "21",
                    style: GoogleFonts.inter(
                        fontSize: 20.sp,
                        color: AppColors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Nov",
                    style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        color: AppColors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.event.title,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          favourite = !favourite;
                        });
                      },
                      icon: Icon(
                        favourite
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                        color: AppColors.blue,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
