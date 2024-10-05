import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: const Color(0xffEF2A39), // Color of the active track
        inactiveTrackColor: Colors.grey.shade300, // Color of the inactive track
        trackHeight: 8.0, // Height of the track
        thumbColor: const Color(0xffEF2A39), // Color of the thumb
        thumbShape: const RoundSliderThumbShape(
            enabledThumbRadius: 12.0), // Rounded thumb
        overlayColor: Colors.red.withOpacity(0.2), // Color of the thumb overlay
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 0.0),
      ),
      child: Slider(
        value: value,
        onChanged: (newValue) {
          setState(() {
            value = newValue;
          });
        },
      ),
    );
  }
}
