class SimpleInterestModel {
  final double first;
  final double second;
  final double third;
  SimpleInterestModel({
    required this.first,
    required this.second,
    required this.third,
  });
  double si(){
    return (first*second*third)/100;
  }

}
