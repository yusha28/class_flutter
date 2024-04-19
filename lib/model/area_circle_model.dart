class AreaCircleModel {
  final double radius;
  final double pi = 22 / 7;
  AreaCircleModel({
    required this.radius,
  });
  double area() {
    return (pi * radius * radius);
  }
}
