import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key, required this.onTap});

  final void Function(int value) onTap;

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 60,
      color: const Color(0xffEF2A39),
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildAnimatedNavItem(
            icon: FontAwesomeIcons.house,
            solidIcon: FontAwesomeIcons.house,
            isSelected: bottomNavIndex == 0,
            onPressed: () {
              setState(() {
                widget.onTap(0);
                bottomNavIndex = 0;
              });
            },
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: _buildAnimatedNavItem(
              icon: FontAwesomeIcons.user,
              solidIcon: FontAwesomeIcons.solidUser,
              isSelected: bottomNavIndex == 1,
              onPressed: () {
                setState(() {
                  widget.onTap(1);
                  bottomNavIndex = 1;
                });
              },
            ),
          ),
          const Spacer(),
          _buildAnimatedNavItem(
            icon: FontAwesomeIcons.message,
            solidIcon: FontAwesomeIcons.solidMessage,
            isSelected: bottomNavIndex == 2,
            onPressed: () {
              setState(() {
                widget.onTap(2);
                bottomNavIndex = 2;
              });
            },
          ),
          const Spacer(),
          _buildAnimatedNavItem(
            icon: FontAwesomeIcons.heart,
            solidIcon: FontAwesomeIcons.solidHeart,
            isSelected: bottomNavIndex == 3,
            onPressed: () {
              setState(() {
                widget.onTap(3);
                bottomNavIndex = 3;
              });
            },
          ),
        ],
      ),
    );
  }

  // Helper method for building each animated nav item
  Widget _buildAnimatedNavItem({
    required IconData icon,
    required IconData solidIcon,
    required bool isSelected,
    required VoidCallback onPressed,
  }) {
    return Column(
      children: [
        IconButton(
          icon: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, animation) {
              return ScaleTransition(scale: animation, child: child);
            },
            child: Icon(
              isSelected ? solidIcon : icon,
              key: ValueKey<bool>(isSelected),
              color: Colors.white,
            ),
          ),
          onPressed: onPressed,
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: isSelected
              ? const CircleAvatar(
                  radius: 2,
                  backgroundColor: Colors.white,
                )
              : const SizedBox.shrink(),
        ),
      ],
    );
  }
}
