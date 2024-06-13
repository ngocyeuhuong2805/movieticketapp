import 'package:flutter/material.dart';
import 'package:movie_ticket_app/model/category/category.dart';


class CategoryBar extends StatefulWidget {
  final Size size;
   // Thêm danh sách categories vào đây

  const CategoryBar({
    Key? key,
    required this.size,

  }) : super(key: key);

  @override
  State<CategoryBar> createState() => _CategoryBarState();
}

class _CategoryBarState extends State<CategoryBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height / 15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              margin: const EdgeInsets.only(left: 16),
              alignment: Alignment.center,
              width: widget.size.width / 4,
              decoration: selectedIndex == index
                  ? BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                    colors: [Colors.blue, Colors.cyan]),
              )
                  : const BoxDecoration(color: Colors.transparent),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  category.name,
                  style: const TextStyle(
                      fontSize: 20, fontFamily: 'QuicksandSemiBold'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}