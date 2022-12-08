// ignore_for_file: file_names

class TimeRange {
  var nowHour = DateTime.now().hour;

  String checkRange() {
    if (nowHour < 12 && nowHour >= 5) {
      return 'Good morning';
    }
    if (nowHour < 17 && nowHour >= 12) {
      return 'Good afternoon';
    }
    if (nowHour < 19 && nowHour >= 17) {
      return 'Good evening';
    }
    return 'Hello There';
  }
}
