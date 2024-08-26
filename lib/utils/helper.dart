class Helper {
  /// Parses a date string in the format '/Date(timestamp+timezoneOffset)/'
  /// into a DateTime object in the local time zone.
  ///
  /// Args: dateString: The date string to parse.
  ///
  /// Returns: A DateTime object representing the parsed date in the local time zone.
  DateTime parseDateString(String dateString) {
    // Extract the timestamp and timezone offset from the string
    final RegExp regExp = RegExp(r'\/Date\((\d+)([+-]\d{4})\)\/');
    final Match? match = regExp.firstMatch(dateString);

    if (match != null) {
      final int timestampMillis = int.parse(match.group(1)!);
      final String timezoneOffset = match.group(2)!;

      // Convert milliseconds since epoch to DateTime in UTC
      DateTime utcDate = DateTime.fromMillisecondsSinceEpoch(timestampMillis, isUtc: true);

      // Parse the timezone offset
      final int offsetHours = int.parse(timezoneOffset.substring(0, 3));
      final int offsetMinutes = int.parse(timezoneOffset.substring(0, 1) + timezoneOffset.substring(3, 5));

      // Apply the timezone offset to get the local time
      DateTime localDate = utcDate.add(Duration(hours: offsetHours, minutes: offsetMinutes));

      return localDate;
    } else {
      throw const FormatException('Invalid date format');
    }
  }
}
