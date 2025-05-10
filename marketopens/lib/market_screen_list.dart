import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timezone/timezone.dart' as tz;
import 'dart:async';

class Market {
  final String name;
  final String timezone;
  final TimeOfDay openTime;
  final TimeOfDay closeTime;

  Market({
    required this.name,
    required this.timezone,
    required this.openTime,
    required this.closeTime,
  });
}

class MarketListScreen extends StatefulWidget {
  const MarketListScreen({super.key});

  @override
  State<MarketListScreen> createState() => _MarketListScreenState();
}

class _MarketListScreenState extends State<MarketListScreen> {
  late Timer _timer;

  final List<Market> markets = [
    Market(
      name: 'New York',
      timezone: 'America/New_York',
      openTime: const TimeOfDay(hour: 8, minute: 0),
      closeTime: const TimeOfDay(hour: 17, minute: 0),
    ),
    Market(
      name: 'London',
      timezone: 'Europe/London',
      openTime: const TimeOfDay(hour: 8, minute: 0),
      closeTime: const TimeOfDay(hour: 17, minute: 0),
    ),
    Market(
      name: 'Tokyo',
      timezone: 'Asia/Tokyo',
      openTime: const TimeOfDay(hour: 9, minute: 0),
      closeTime: const TimeOfDay(hour: 18, minute: 0),
    ),
    Market(
      name: 'Sydney',
      timezone: 'Australia/Sydney',
      openTime: const TimeOfDay(hour: 9, minute: 0),
      closeTime: const TimeOfDay(hour: 17, minute: 0),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => setState(() {}));
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  bool isMarketOpen(Market market) {
    final location = tz.getLocation(market.timezone);
    final now = tz.TZDateTime.now(location);
    final open = tz.TZDateTime(
      location,
      now.year,
      now.month,
      now.day,
      market.openTime.hour,
      market.openTime.minute,
    );
    final close = tz.TZDateTime(
      location,
      now.year,
      now.month,
      now.day,
      market.closeTime.hour,
      market.closeTime.minute,
    );
    return now.isAfter(open) && now.isBefore(close);
  }

  String getPakTimeNow() {
    final pak = tz.getLocation('Asia/Karachi');
    final now = tz.TZDateTime.now(pak);
    return DateFormat('hh:mm:ss a').format(now);
  }

  String formatPakTime(Market market, TimeOfDay time) {
    final marketLoc = tz.getLocation(market.timezone);
    final pakLoc = tz.getLocation('Asia/Karachi');
    final nowMarket = tz.TZDateTime.now(marketLoc);
    final localTime = tz.TZDateTime(
      marketLoc,
      nowMarket.year,
      nowMarket.month,
      nowMarket.day,
      time.hour,
      time.minute,
    );
    final pakTime = tz.TZDateTime.from(localTime, pakLoc);
    return DateFormat('hh:mm a').format(pakTime);
  }

  String getCountdown(Market market) {
    final location = tz.getLocation(market.timezone);
    final now = tz.TZDateTime.now(location);
    final open = tz.TZDateTime(
      location,
      now.year,
      now.month,
      now.day,
      market.openTime.hour,
      market.openTime.minute,
    );
    final close = tz.TZDateTime(
      location,
      now.year,
      now.month,
      now.day,
      market.closeTime.hour,
      market.closeTime.minute,
    );

    Duration remaining;
    if (now.isBefore(open)) {
      remaining = open.difference(now);
      return 'Opens in ${remaining.inHours}h ${remaining.inMinutes % 60}m';
    } else if (now.isAfter(close)) {
      final nextOpen = open.add(const Duration(days: 1));
      remaining = nextOpen.difference(now);
      return 'Opens in ${remaining.inHours}h ${remaining.inMinutes % 60}m';
    } else {
      remaining = close.difference(now);
      return 'Closes in ${remaining.inHours}h ${remaining.inMinutes % 60}m';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Market Opens')),
      body: Column(
        children: [
          Container(
            color: Colors.black87,
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            child: Text(
              "🇵🇰 Pakistani Time: ${getPakTimeNow()}",
              style: const TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: markets.length,
              itemBuilder: (context, index) {
                final market = markets[index];
                final open = isMarketOpen(market);
                final openTime = formatPakTime(market, market.openTime);
                final closeTime = formatPakTime(market, market.closeTime);
                final countdown = getCountdown(market);

                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  elevation: 4,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16),
                    title: Text(
                      market.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8),
                        Text("Open: $openTime"),
                        Text("Close: $closeTime"),
                        Text("Status: ${open ? 'OPEN' : 'CLOSED'}"),
                        Text(countdown),
                      ],
                    ),
                    trailing: Icon(
                      open ? Icons.check_circle : Icons.cancel,
                      color: open ? Colors.green : Colors.red,
                      size: 32,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
