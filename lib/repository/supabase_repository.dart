import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todo_app/models/task_group.dart';

class SupabaseRepository {
  final _supabaseInstance = Supabase.instance;

  Future<List<TaskGroup>> listTasksGroups() async {
    final client = _supabaseInstance.client;
    final response = await client.from('task_groups').select();
    return response.map((taskMap) {
      return TaskGroup.fromMap(taskMap);
    }).toList();
  }


}
