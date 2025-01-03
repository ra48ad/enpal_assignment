class Slot {
  const Slot({
    required this.id,
    required this.startDate,
    required this.duration,
    required this.isBooked,
    this.customerName,
  });

  final String id;
  final DateTime startDate;
  final Duration duration;
  final bool isBooked;
  final String? customerName;
}
