List<String> timeMsg() {
  DateTime date = DateTime.now();

  if (date.hour > 6 && date.hour < 12) {
    return ['🌤️', 'Good Morning,'];
  } else if (date.hour >= 12 && date.hour < 17) {
    return ['☀️', 'Good Afternoon,'];
  } else if (date.hour >= 17 && date.hour < 24) {
    return ['🌅', 'Good Evening,'];
  } else {
    return ['', ''];
  }
}
