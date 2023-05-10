import 'package:booktickets/screens/search/airline_tickets.dart';

List<Map<String, dynamic>> hotelList = [
  {
    'image': 'hotel1.jpeg',
    'place': 'Open Space',
    'destinatin': 'Riyadh',
    'price': 25,
    'review': '10\\10 Wonderful!(44 reviews)',
    'rating': 'assets/images/rating-2.png',
  },
  {
    'image': 'hotel2.jpeg',
    'place': 'Global Will',
    'destinatin': 'London',
    'price': 40,
    'review': '7\\10 Amazing!(92 reviews)',
    'rating': 'assets/images/rating.png',
  },
  {
    'image': 'hotel3.jpeg',
    'place': 'Tallest Building',
    'destinatin': 'Dubai',
    'price': 234,
    'review': '9.5\\10 Excellent!(110 reviews)',
    'rating': 'assets/images/rating-2.png',
  }
];
var cabin = [
  'Economy',
  'Premium economy',
  'Business',
  'First-class',
];

List<Map<String, dynamic>> ticketList = [
  {
    'from': {
      'code': 'NYC',
      'name': 'New-York',
    },
    'to': {
      'code': 'LDN',
      'name': 'London',
    },
    'hours': '8H 30M',
    'date': '1 May',
    'departureTime': '08:00 AM',
    'number': 23,
    'stops': '1',
    'companies':
        'We Air, Opreated by We Air Malta, Lion, Opreated by Lion Air Malta ',
    'total': '\$159',
  },
  {
    'from': {
      'code': 'RUH',
      'name': 'Riyadh',
    },
    'to': {
      'code': 'LDN',
      'name': 'London',
    },
    'hours': '15H 30M',
    'date': '2 May',
    'departureTime': '09:00 AM',
    'number': 24,
    'stops': '0',
    'companies':
        'We Air, Opreated by We Air Malta, Lion, Opreated by Lion Air Malta ',
    'total': '\$190',
  },
  {
    'from': {
      'code': 'JED',
      'name': 'Jeddah',
    },
    'to': {
      'code': 'LDN',
      'name': 'London',
    },
    'hours': '17H 30M',
    'date': '9 May',
    'departureTime': '04:00 AM',
    'number': 29,
    'stops': '1',
    'companies':
        'We Air, Opreated by We Air Malta, Lion, Opreated by Lion Air Malta ',
    'total': '\$188',
  },
  {
    'from': {
      'code': 'RUH',
      'name': 'Riyadh',
    },
    'to': {
      'code': 'DMM',
      'name': 'Damam',
    },
    'hours': '1H 30M',
    'date': '4 May',
    'departureTime': '11:00 AM',
    'number': 29,
    'stops': '2',
    'companies':
        'We Air, Opreated by We Air Malta, Lion, Opreated by Lion Air Malta ',
    'total': '\$190',
  },
  {
    'from': {
      'code': 'NYC',
      'name': 'New-York',
    },
    'to': {
      'code': 'LDN',
      'name': 'London',
    },
    'hours': '8H 30M',
    'date': '1 May',
    'departureTime': '08:00 AM',
    'number': 23,
    'stops': '1',
    'companies':
        'We Air, Opreated by We Air Malta, Lion, Opreated by Lion Air Malta ',
    'total': '\$109',
  },
  {
    'from': {
      'code': 'RUH',
      'name': 'Riyadh',
    },
    'to': {
      'code': 'LDN',
      'name': 'London',
    },
    'hours': '15H 30M',
    'date': '2 May',
    'departureTime': '09:00 AM',
    'number': 24,
    'stops': '0',
    'companies':
        'We Air, Opreated by We Air Malta, Lion, Opreated by Lion Air Malta ',
    'total': '\$189',
  },
  {
    'from': {
      'code': 'JED',
      'name': 'Jeddah',
    },
    'to': {
      'code': 'LDN',
      'name': 'London',
    },
    'hours': '17H 30M',
    'date': '9 May',
    'departureTime': '04:00 AM',
    'number': 29,
    'stops': '1',
    'companies':
        'We Air, Opreated by We Air Malta, Lion, Opreated by Lion Air Malta ',
    'total': '\$149',
  },
  {
    'from': {
      'code': 'RUH',
      'name': 'Riyadh',
    },
    'to': {
      'code': 'DMM',
      'name': 'Damam',
    },
    'hours': '1H 30M',
    'date': '4 May',
    'departureTime': '11:00 AM',
    'number': 29,
    'stops': '2',
    'companies':
        'We Air, Opreated by We Air Malta, Lion, Opreated by Lion Air Malta ',
    'total': '\$199',
  },
];

List<Map<String, dynamic>> moreForUList = [
  {
    'DisctiptionHeadLin': 'Extended stays',
    'Disctiption': 'Live your life anywhere with\n30+night stays',
    'Link': 'https://www.extendedstayamerica.com',
    'DisctiptionHeadLin2': 'Save 15% worldwide',
    'Disctiption2': 'Discover dream destinations\nfor less with Gateaway Deals',
    'Link2':
        'https://www.booking.com/extended-stays/index.en-us.html?label=gen173bo-18EgdmbGlnaHRzGOgHKIICOOgHSAliAlhYaMQBkgECWFjCAQRPUyBY2AED8gECWFj4AQGiAg93d3cuYm9va2luZy5jb22oAgO4Avy23qIGwAIB0gIkMzA5MjBkYWYtN2YxZC00NmZhLWI3MTUtZjA1YzgyMjQxNTQy2AIB6gIETUFURQ&aid=7981695&b_merch_cta=1',
    'DisctiptionHeadLin3': 'Travel articles',
    'Disctiption3': 'Live your life anywhere\nwith 60+ night stays',
    'Link3': 'https://community.booking.com/?profile.language=en',
  },
];

List<Map<String, dynamic>> togleBar = [
  {
    'searchFirst': const AirlineTickets(),
    'searchSecond': const AirlineTickets(),
  },
];
