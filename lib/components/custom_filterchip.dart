import 'package:flutter/material.dart';
import 'package:articalist/screens/InterestScreen.dart';

class CustomFilterChip extends StatefulWidget {
  CustomFilterChip({this.chipName});

  final String chipName;

  @override
  _CustomFilterChipState createState() => _CustomFilterChipState();
}

class _CustomFilterChipState extends State<CustomFilterChip> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
        padding: EdgeInsets.all(10.0),
        checkmarkColor: Colors.black,
        backgroundColor: Colors.white24,
        elevation: 5,
        selectedColor: Colors.amberAccent,
        label: Text(
          widget.chipName,
          style: TextStyle(
            letterSpacing: 1.5,
            fontSize: 24.0,
            color: _isSelected ? Colors.black : Colors.white,
          ),
        ),
        selected: _isSelected,
        onSelected: (selected) {
          setState(() {
            _isSelected = selected;
            InterestScreen.selectedFilters.contains(widget.chipName)
                ? InterestScreen.selectedFilters.remove(widget.chipName)
                : InterestScreen.selectedFilters.add(widget.chipName);
            print(InterestScreen.selectedFilters);
          });
        });
  }
}
