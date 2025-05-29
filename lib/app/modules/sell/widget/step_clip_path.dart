import '../../../resource/app_constant/import_list.dart';

class StepClipper extends CustomClipper<Path> {
  final bool isActive;

  StepClipper({required this.isActive});

  @override
  Path getClip(Size size) {
    final path = Path();
    if (isActive) {
      // Active step: Draw a filled diamond shape
      path.moveTo(size.width / 2, 0);
      path.lineTo(0, size.height / 2);
      path.lineTo(size.width / 2, size.height);
      path.lineTo(size.width, size.height / 2);
      path.close();
    } else {
      // Inactive step: Draw a regular diamond shape with no fill
      path.moveTo(size.width / 2, 0);
      path.lineTo(0, size.height / 2);
      path.lineTo(size.width / 2, size.height);
      path.lineTo(size.width, size.height / 2);
      path.close();
    }
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
