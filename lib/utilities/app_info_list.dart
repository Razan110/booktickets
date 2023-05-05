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
    'number': 23
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
    'number': 24
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
    'number': 29
  },
];

List<Map<String, dynamic>> moreForUList = [
  {
    'DisctiptionHeadLin': 'Extended stays',
    'Disctiption': 'Live your life anywhere with\n30+night stays',
    'DisctiptionHeadLin2': 'Save 15% worldwide',
    'Disctiption2': 'Discover dream destinations\nfor less with Gateaway Deals',
    'DisctiptionHeadLin3': 'Travel articles',
    'Disctiption3': 'Live your life anywhere\nwith 60+ night stays',
  },
];

List<Map<String, dynamic>> togleBar = [
  {
    'searchFirst': const AirlineTickets(),
    'searchSecond': const AirlineTickets(),
  },
];
