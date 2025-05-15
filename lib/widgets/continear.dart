import 'package:flutter/material.dart';

class ContainerSelection extends StatefulWidget {
  const ContainerSelection({super.key});

  @override
  State<ContainerSelection> createState() => _ContainerSelectionState();
}

class _ContainerSelectionState extends State<ContainerSelection> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildContainer(0, "Beginner"),
        _buildContainer(1, "Intermedi"),
        _buildContainer(2, "Expert"),
      ],
    );
  }

  Widget _buildContainer(int index, String text) {
    bool isSelected = selectedIndex == index;
    return Container(
      width: 100,
      height: 46,
      decoration: BoxDecoration(
        color: isSelected ? Color(0xff874ecf) : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xff874ecf)),
      ),
      child: InkWell(
        onTap: () => setState(() {
          selectedIndex = index;
        }),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 19,
              color: isSelected ? Colors.white : Color(0xff874ecf),
            ),
          ),
        ),
      ),
    );
  }
}
