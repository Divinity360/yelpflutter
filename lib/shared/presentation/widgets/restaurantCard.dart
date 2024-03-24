
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:login_cubit/core/theme/theme.dart';
import 'package:login_cubit/features/restaurants/domain/entities/restaurant.dart';

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantCard({
    super.key,
    required this.restaurant,
  });

  @override
  Widget build(BuildContext context) {
    final appWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      height: 120,
      width: appWidth - 40,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(3),
              child: Image.network(
                restaurant.imageUrl!,
                width: 100,
                height: 120,
                fit: BoxFit.cover,
              )),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                restaurant.name!,
                style:
                AppTheme.bodyMediumTextStyle.copyWith(color: Colors.black),
              ),
              RatingBar.builder(
                initialRating: restaurant.reviewCount!.toDouble(),
                direction: Axis.horizontal,
                itemCount: 5,
                itemPadding: EdgeInsets.zero,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {},
                ignoreGestures: true,
                itemSize: 15,
              ),
              Padding(
                padding: EdgeInsets.only(top: 3, bottom: 3),
                child: Text(
                  '${restaurant.reviewCount} reviews',
                  style: AppTheme.bodySmallTextStyle
                      .copyWith(color: Colors.black),
                ),
              ),
              SizedBox(
                  width: appWidth - 190,
                  height: 20,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: restaurant.categories!.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, i) {
                      return Text(
                        '. ${restaurant.categories![i].title!} ' ,
                        style:
                        AppTheme.bodySmallBoldTextStyle,
                      );
                    },
                  )),
              Padding(
                padding: EdgeInsets.only(top: 1,),
                child: Text(
                  restaurant.location!.displayAddress?.elementAt(0) ?? '',
                  style: AppTheme.bodySmallBoldTextStyle
                      .copyWith(color: Colors.black),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}