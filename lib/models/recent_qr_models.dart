class RecentQrModel {
  String text, date, time;
  RecentQrModel({
    required this.text,
    required this.date,
    required this.time,
  });

  static List<RecentQrModel> websiteLists = [
    RecentQrModel(
      text: 'www.github.com/fz3hra',
      date: '29.01.23',
      time: '03:09 PM',
    ),
    RecentQrModel(
      text: 'https://medium.com/@fz3hra',
      date: '29.01.23',
      time: '02:10 PM',
    ),
  ];

  static List<RecentQrModel> emailLists = [
    RecentQrModel(
      text: 'fz3hra@gmail.com',
      date: '29.01.23',
      time: '03:09 PM',
    ),
    RecentQrModel(
      text: 'mujorefaatimah@gmail.com',
      date: '29.01.23',
      time: '02:10 PM',
    ),
  ];

  static List<RecentQrModel> wifiPasswordLists = [
    RecentQrModel(
      text: 'ftest1213',
      date: '29.01.23',
      time: '03:09 PM',
    ),
    RecentQrModel(
      text: 'mfdfsdf',
      date: '29.01.23',
      time: '02:10 PM',
    ),
  ];
}
