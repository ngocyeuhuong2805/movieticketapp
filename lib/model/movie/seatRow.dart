class SeatRow {
  final String row;
  List<SeatName> seatRows;
  SeatRow({required this.row, required this.seatRows});
}


class SeatName {
  final String name;
  SeatName({required this.name});
}

final List<SeatRow> seatRow = [
  SeatRow(row: 'A', seatRows: seatName1),
  SeatRow(row: 'B', seatRows: seatName2),
  SeatRow(row: 'C', seatRows: seatName3),
  SeatRow(row: 'D', seatRows: seatName4),
  SeatRow(row: 'E', seatRows: seatName5)
];


 final List<SeatName> seatName1 = [
  SeatName(name: 'A1'),
  SeatName(name: 'A2'),
  SeatName(name: 'A3'),
  SeatName(name: 'A4'),
  SeatName(name: 'A5'),
  SeatName(name: 'A6'),
];

final List<SeatName> seatName2 = [
  SeatName(name: 'B1'),
  SeatName(name: 'B2'),
  SeatName(name: 'B3'),
  SeatName(name: 'B4'),
  SeatName(name: 'B5'),
  SeatName(name: 'B6'),
];
final List<SeatName> seatName3 = [
  SeatName(name: 'C1'),
  SeatName(name: 'C2'),
  SeatName(name: 'C3'),
  SeatName(name: 'C4'),
  SeatName(name: 'C5'),
  SeatName(name: 'C6'),
];
final List<SeatName> seatName4 = [
  SeatName(name: 'D1'),
  SeatName(name: 'D2'),
  SeatName(name: 'D3'),
  SeatName(name: 'D4'),
  SeatName(name: 'D5'),
  SeatName(name: 'D6'),
];

final List<SeatName> seatName5 = [
  SeatName(name: 'E1'),
  SeatName(name: 'E2'),
  SeatName(name: 'E3'),
  SeatName(name: 'E4'),
  SeatName(name: 'E5'),
  SeatName(name: 'E6'),
];

