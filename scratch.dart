import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  task2();
  task3();
}

void task1(){
  String result='task 1 data';
  print('task 1 complete');
}
void task2(){
  String result='task 2 data';
  print('task 2 complete');
}
void task3(){
  String result='task 3 data';
  print('task 3 complete');
}
