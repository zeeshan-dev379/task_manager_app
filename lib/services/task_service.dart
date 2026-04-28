import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/task.dart';

class TaskService {
  static const String _tasksKey = 'tasks';

  // Load all tasks from SharedPreferences
  Future<List<Task>> loadTasks() async {
    final prefs = await SharedPreferences.getInstance();
    final String? tasksJson = prefs.getString(_tasksKey);
    if (tasksJson == null) return [];

    final List<dynamic> taskList = json.decode(tasksJson);
    return taskList.map((item) => Task.fromMap(item)).toList();
  }

  // Save all tasks to SharedPreferences
  Future<void> saveTasks(List<Task> tasks) async {
    final prefs = await SharedPreferences.getInstance();
    final String tasksJson = json.encode(tasks.map((t) => t.toMap()).toList());
    await prefs.setString(_tasksKey, tasksJson);
  }

  // Add a new task
  Future<List<Task>> addTask(List<Task> tasks, Task task) async {
    final updatedTasks = [...tasks, task];
    await saveTasks(updatedTasks);
    return updatedTasks;
  }

  // Delete a task by id
  Future<List<Task>> deleteTask(List<Task> tasks, String taskId) async {
    final updatedTasks = tasks.where((t) => t.id != taskId).toList();
    await saveTasks(updatedTasks);
    return updatedTasks;
  }

  // Toggle task completion
  Future<List<Task>> toggleTask(List<Task> tasks, String taskId) async {
    final updatedTasks = tasks.map((t) {
      if (t.id == taskId) {
        return Task(
          id: t.id,
          title: t.title,
          description: t.description,
          isCompleted: !t.isCompleted,
          createdAt: t.createdAt,
        );
      }
      return t;
    }).toList();
    await saveTasks(updatedTasks);
    return updatedTasks;
  }
}
