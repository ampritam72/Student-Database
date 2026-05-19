import 'dart:io';

final List<Map<String,dynamic>> st = [];

void main() {
  while (true) 
  {
    stdout.write('1 for Add,2 for Show, 3 for Remove, 4 for Exit: ');
    final option = stdin.readLineSync();

    if (option == '1')
    {
      addSt();
    } 
    else if (option == '2') 
    {
      showSt();
    } 
    else if (option == '3') 
    {
      removeSt();
    } 
    else if (option == '4') 
    {
      print('Program is closed.');
      break;
    } 
    else 
    {
      print('Invalid Option.Try again.');
    }
  }
}

void addSt() {
  stdout.write('Enter name :');
  final name = stdin.readLineSync();

  stdout.write('Enter score : ');
  final score = int.parse(stdin.readLineSync()!);

  st.add({'name': name, 'score': score});

  print('Student added.');
}

void showSt() 
{
  if (st.isEmpty) 
  {
    print('Not found.');
  } 
  else {

    print(st);
  }
}

void removeSt() 
{
  stdout.write('Enter name for remove : ');
  final removeName = stdin.readLineSync();

  st.removeWhere((student) => student['name'] == removeName);

  print('Student removed.');
}
