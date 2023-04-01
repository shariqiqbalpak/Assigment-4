import 'dart:math';

void main() {
  Map<String, List<double>> cities = {
    'Hyderabad': [40.7128, -74.0060],
    'Faisalabad': [37.7749, -122.4194],
    'LAHORE': [51.5074, -0.1278],
    'ISLAMABAD': [35.6895, 139.6917],
  };

  String startCity = 'Hyderabad';
  String endCity = 'ISLAMABAD';

  double shortestDistance = haversine(cities[startCity][0], cities[startCity][1], cities[endCity][0], cities[endCity][1]);

  print('The shortest distance between $startCity and $endCity is ${shortestDistance.toStringAsFixed(2)} km.');
}

double haversine(double lat1, double lon1, double lat2, double lon2) {
  const double earthRadius = 6371; // in km

  double dLat = radians(lat2 - lat1);
  double dLon = radians(lon2 - lon1);

  double a = pow(sin(dLat / 2), 2) + cos(radians(lat1)) * cos(radians(lat2)) * pow(sin(dLon / 2), 2);
  double c = 2 * atan2(sqrt(a), sqrt(1 - a));

  return earthRadius * c;
}

double radians(double degrees) {
  return degrees * pi / 180;
}