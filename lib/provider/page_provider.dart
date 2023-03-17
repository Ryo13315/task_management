import 'package:flutter/cupertino.dart';
import 'package:task_management/pages/calendar/calendar.dart';
import 'package:task_management/pages/task_list/task_list.dart';

class PageProvider extends ChangeNotifier{
int _pageNum = 0;

get pageNum => _pageNum;

List<Widget> pageList = [
  const TaskListPage(),
  const CalenderPage()
];

onChangePageNum(int pageNum){
  _pageNum = pageNum;
  notifyListeners();
}
}