class ActivityModel {
  final String discipline;
  final List<Schedule> schedules;
  final List<Pricing> pricings;
  final Place place;
  final String information;
  /* final String imageUrl; */


  ActivityModel({
    required this.discipline,
    required this.schedules,
    required this.pricings,
    required this.place,
    required this.information,
    /* required this.imageUrl, */
  });
}

class Schedule {
  final String day;
  final List<TimeSlot> timeSlots;

  Schedule({
    required this.day,
    required this.timeSlots,
  });
}

class TimeSlot {
  final String startHour;
  final String endHour;

  TimeSlot({
    required this.startHour,
    required this.endHour,
  });
}

class Pricing {
  final String profile;
  final String pricing;


  Pricing({
    required this.profile,
    required this.pricing,
  });
}

class Place {
  final String title;
  final String streetAddress;
  final String postalCode;
  final String city;
  final double latitude;
  final double longitude;


  Place({
    required this.title,
    required this.streetAddress,
    required this.postalCode,
    required this.city,
    required this.latitude,
    required this.longitude,
  });
}

