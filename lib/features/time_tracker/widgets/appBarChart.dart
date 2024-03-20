import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_cubit/core/helpers/helpers.dart';
import 'package:login_cubit/core/theme/theme.dart';
import 'package:login_cubit/core/utils/colors.dart';

class AppBarChart extends StatefulWidget {
  const AppBarChart({
    super.key,
    required this.playerTimeListInMinutes,
  });



  final List<int> playerTimeListInMinutes;

  @override
  State<AppBarChart> createState() => _AppBarChartState();
}

class _AppBarChartState extends State<AppBarChart> {
  final graphTitlesList = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat\n(today)'];

  @override
  Widget build(BuildContext context) {
    final maxPlayerScore =  widget.playerTimeListInMinutes.reduce(max).toDouble();


    return BarChart(
      BarChartData(
        barTouchData: barTouchData,
        titlesData: titlesData,
        borderData: borderData,
        barGroups: barGroups(maxPlayerScore),
        gridData: FlGridData(show: false),
        alignment: BarChartAlignment.spaceAround,
        maxY: maxPlayerScore,
      ),
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child:
          Text(graphTitlesList[value.toInt()], style: AppTheme.chartTextStyle, textAlign: TextAlign.center,),
    );
  }

  BarTouchData get barTouchData => BarTouchData(
    enabled: false,
    touchTooltipData: BarTouchTooltipData(
      tooltipBgColor: Colors.transparent,
      tooltipPadding: EdgeInsets.zero,
      tooltipMargin: 0,
      getTooltipItem: (
          BarChartGroupData group,
          int groupIndex,
          BarChartRodData rod,
          int rodIndex,
          ) {
        return BarTooltipItem(
          Helpers.durationToString(Duration(seconds: rod.toY.toInt())),
          AppTheme.chartTextStyle,
        );
      },
    ),
  );



  List<BarChartGroupData> barGroups(double maxScore) => List.generate(
      widget.playerTimeListInMinutes.length,
          (index) => BarChartGroupData(
          x: index,
          barRods: [
            BarChartRodData(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(2),
                topRight: Radius.circular(2),
              ),
              toY: widget.playerTimeListInMinutes[index].toDouble(),
              width: 30,
              color: AppColors.green.withOpacity(widget.playerTimeListInMinutes[index] / maxScore),


            )
          ],
          showingTooltipIndicators: [0],
          barsSpace: 10
      ));

  FlTitlesData get titlesData => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: getTitles,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      );

  FlBorderData get borderData => FlBorderData(
        show: false,

      );
}
