enum FilterStatus { Upcoming, Complete, Cancel }

List<Map> schedules = [
  {
    'img': 'assets/doctor04.jpg',
    'doctorName': 'Dr. Aleyna ESER',
    'doctorTitle': 'Dental Specialist',
    'reservedDate': 'Monday, Aug 22',
    'reservedTime': '02:00 - 12:00',
    'status': FilterStatus.Upcoming
  },
  {
    'img': 'assets/doctor04.jpg',
    'doctorName': 'Dr. Özkan Çol',
    'doctorTitle': 'Skin Specialist',
    'reservedDate': 'Monday, Sep 23',
    'reservedTime': '8:00 - 9:00',
    'status': FilterStatus.Upcoming
  },
  {
    'img': 'assets/doctor02.png',
    'doctorName': 'Dr. Rahmi Solak',
    'doctorTitle': 'General Specialist',
    'reservedDate': 'Monday, Jul 27',
    'reservedTime': '9:00 - 10:00',
    'status': FilterStatus.Upcoming
  },
  {
    'img': 'assets/doctor05.jpg',
    'doctorName': 'Dr. John Doe',
    'doctorTitle': 'Something Specialist',
    'reservedDate': 'Monday, Jul 21',
    'reservedTime': '10:00 - 11:00',
    'status': FilterStatus.Complete
  },
  {
    'img': 'assets/doctor02.png',
    'doctorName': 'Dr. Sam Smith',
    'doctorTitle': 'Other Specialist',
    'reservedDate': 'Monday, Jul 11',
    'reservedTime': '11:00 - 12:00',
    'status': FilterStatus.Cancel
  },
];