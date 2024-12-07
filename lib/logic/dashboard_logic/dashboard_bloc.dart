import 'package:rxdart/rxdart.dart';

class DashboardBLoC
{
    final BehaviorSubject<String?> _currentTab = BehaviorSubject();
    final BehaviorSubject<bool?> _showGuestList = BehaviorSubject();

    Stream<String?> get currentTab => _currentTab.stream;
    Stream<bool?> get showGuestList => _showGuestList.stream;

    selectTab(String? e) => _currentTab.sink.add(e);
    toggleShowGuestList(bool? e) => _showGuestList.sink.add(e);
}