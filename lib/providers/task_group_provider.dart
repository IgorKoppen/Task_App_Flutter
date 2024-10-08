import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:todo_app/models/task_group.dart';
import 'package:todo_app/repository/supabase_repository.dart';

class TaskGroupProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<TaskGroup> _taskGroups = [];
  List<TaskGroup> get taskGroups => _taskGroups;

  final repository = SupabaseRepository();

  Future<void> listTasksGroups() async {
    try {
      _isLoading = true;
      notifyListeners();
      _taskGroups = await repository.listTasksGroups();
      notifyListeners();
    } catch (e) {
      //Implementar
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
