import 'package:flutter/widgets.dart';

class AppIcon extends StatelessWidget {
  const AppIcon(
      {super.key,
      required this.icon,
      this.backgroungColor = const Color(0xfffcf4e4),
      this.iconColor = const Color(0xff756d54),
      this.size = 40});
  final IconData icon;
  final Color backgroungColor;
  final Color iconColor;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
