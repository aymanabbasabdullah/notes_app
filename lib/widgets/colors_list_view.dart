import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ?   CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(
              radius: 34,
              backgroundColor:color,
            ),
          )
        :   CircleAvatar(
            radius: 32,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key });

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex=0;
  List<Color> colors= const[
  Color(0xff3B1F2B),
  Color(0xffDB162F),
  Color(0xffDBDFAC),
  Color(0xff5F758E),
  Color(0xff383961),

  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: (){
                  currentIndex =index;
                  setState(() {

                  });
                },
                child: ColorItem(
                  color: colors[index],
                  isActive:currentIndex == index ,
                ),
              ),
            );
          }),
    );
  }
}
