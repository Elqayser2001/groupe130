/*
class car {
  int _speed = 0 ;
  set speed (int x) {
    if (x < 300 && x > 0) {
      _speed = x;
    }
    else {
      print("the speed out of the range");
    }
  }
  int get speed {
    return _speed;
  }
}
 */

/*
class Book{
  String _title ="";
  set title (String namebook){
    if(namebook.trim().isNotEmpty){
_title = namebook;
    }
    else{(print("لا يوجد اسم للكتاب"));}
  }
  String get title {
    return _title;
  }
}
*/

/*
class Rectangle {
  double _height = 0;
  double _width = 0;
  set height(double x) {
    if (x > 0) {
      _height = x;
    }
    else {
      (print("the height out of the range"));}
    }
set width(double y) {
      if (y > 0) {
      _width = y;
    }
    else {
      (print("the width out of the range"));
    }
    }
  double get area {
    return _height * _width;
  }
}
*/
/*
class student{
 double _mark = 0;
 set mark(double x) {
   if (x >= 0 && x <= 100) {
     _mark = x;
     if (_mark <= 50) {print("fail");}
   else {print("pass");}
   } else {
     print("The mark is out of range (must be between 0 and 100).");
   }
 }
   double get mark {
     return _mark;
   }
 }
 */
/*
class bankaccount {
  double _balance = 0;
  double get balance {
    print("the balance is $_balance");
    return _balance;
  }
  set balance(double x) {
    if (x > 0) {
      _balance = x;
      print("تم تعيين الرصيد الجديد بنجاح");
      this.balance;
    }
    else {
      print("خطأ لا يمكن تعيين رصيد سالب");
    }
  }
  deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("تم إيداع: $amount");
      this.balance;
    } else {
      print("خطأ: مبلغ الإيداع يجب أن يكون أكبر من صفر.");
    }
  }

  withdraw(double amount) {
    if (amount <= 0) {
      print("خطأ: مبلغ السحب يجب أن يكون أكبر من صفر.");
      return; // الخروج من الدالة إذا كان المبلغ غير صالح
    }

    if (amount <= _balance) {
      _balance -= amount;
      print("تم سحب: $amount");
      this.balance;
    } else {
      print("خطأ: رصيد غير كافٍ لسحب $amount.");
    }
  }
}
*/

/*
class temperature {
  double _celsius = 0;

  set celsius(double x) {
    if (x >= -273.15 && x <= 100) {
      _celsius = x;
    }
    else {
      print("the temperature out of the range");
    }
  }

  double get celsius {
    return _celsius;
  }

  double get fahrenheit {
    return (_celsius * 9 / 5) + 32;
  }
}
*/

/*
class product {
  String _name = "";
  double _price = 0;

  set name(String x) {
    if (x.trim().isNotEmpty) {_name = x.trim();
      print("the product name is $_name");}
    else {
      print("error the product name is not empty");
    }
  }

  String get name {
    return _name;
  }

  set price(double y) {
    if (y > 0) {
      _price = y;
      print("the product price is $_price");
    }
    else {
      print("error price");
    }
  }

  double get price {
    return _price;
  }

  String get description {
    String formattedDescription = "اسم المنتج: $_name — السعر: $_price جنيه";
    print(formattedDescription);
    return formattedDescription;
  }
}
*/
/*
class account {
  String _email = "";
  String _password = "";
  set email(String x) {
    if (x.trim().isNotEmpty && x.length>= 6 && x.contains("@gmail.com")){
      _email = x;
    }
    else {
      print("error email");
    }
  }
  String get email {
    return _email;
  }
  set password(String y) {
    if(y.trim().isNotEmpty && y.length >= 8 && y.contains(RegExp(r'[A-Z]'))
        && y.contains(RegExp(r'[a-z]')) && y.contains(RegExp(r'[0-9]'))){
      _password = y;}
    else {
      print("error password");
    }
  }
  String get password {
    return _password;
  }
}
*/
/*
class movie {
  String _title = "";
  double _rating = 0;
  set title(String x) {
    if (x.trim().isNotEmpty) {
      _title = x;
    }
    else {
      print("error title");
    }
  }
  String get title {
    return _title;
  }
  set rating(double y) {
    if (y >= 0 && y <= 10) {
      _rating = y;
    }
    else {
      print("error rating");
    }
  }
  double get rating {
    return _rating;
  }
}
*/
/*
class passwordmanger{
  String _password = "";
set password(String x){
  if(x.trim().isNotEmpty && x.length>=6){
    _password = x;
  }
  else {print("error password");}
  }
  String get password {
  if (_password.length >= 6) {
    String stars = '';
    for (int i = 0; i < _password.length; i++) {
      stars += '*';
    }
    _password = stars;
  }
    return _password;
  }
}
*/
/*
class circle {
  double pi = 3.14;
  double _radius = 0;
  set radius(double x) {
    if (x > 0) {
      _radius = x;
    }
    else {
      print("error radius");
    }
  }
  double get area {
    return pi * _radius * _radius;
  }
  double get circumference {
    return 2 * 3.14 * _radius;
  }
}
*/
/*
class examresult {
  String _studentname = "";
  double _score = 0;
set studentname(String x) {
  if (x.trim().isNotEmpty) {
    _studentname = x;
  }
  else {
    print("error studentname");
  }
}
String get studentname {
  return _studentname;
}
set score(double y) {
  if (y >= 0 && y <= 100) {
    _score = y;
  }
  else {
    print("error score");
  }
if (_score >= 85) {
  (print("excellent"));
}
else if (_score >= 65 && _score < 85)
  {print("good");}
else {print("fail");}
}
double get score {
  return _score;
}
}
*/
/*
sum(){
  int sum = 0;
  int i = 0;
  int number = 0;
  List<int> numbers = [10, 30, 25, 15, 20, 70, 90];
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];}
  print(sum);
  for(number in numbers)
  if(numbers[i]>50);
  {number[i]}=i;
  print(i);
}*/
/*
typeofnumber(){
  List<int> num = [1, 2, 3, 4, 5, 6, 7, 8, 9,];
  for(int i =0; i<num.length; i++) {
    if (num[i] % 2 != 0)
      continue;
    if (num[i] % 2 == 0) {
      print('${num[i]} is even');
    }
  }
}
 */
/*
findmaxandmin(){
  int max = 1;
  int min = 1;
  List<int> num = [1, 2, 3, 4, 5, 6, 7, 8, 9,];
  for(int i =1; i<num.length; i++) {
    if (num[i] > max) {
      max = num[i];
    }
    if (num[i] < min) {
      min = num[i];
    }
  }
print("the max is $max");
  print("the min is $min");
}
 */


/*
countdown(){
  int i = 10;
  while(i>0){
    print(i);
    i--;
  }
}
 */
/*
MultiplicationTable(num){
  for (int i = 1; i <= 12; i++) {
    int result = num * i;
    print('$num * $i = $result');
  }
}
 */
/*
sum(){
  int sum = 0;
  for (int i = 0; i < 10; i++) {
    sum += i;
  }
  print(sum);
}
 */
/*
RemoveNegativeNumbers(){
  List<int>num=[-1, 2, -3, 4, -5, 6, -7, 8, -9, 10];
  List<int>newlist=[];
  for (int i = 0; i < num.length; i++) {
    if (num[i] > 0) {
      newlist.add(num[i]);
    }
  }print(newlist);
}
*/
/*
CalculateAverage(){
  List<int>average=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int sum = 0;
  double newaverage=0;
  for(int i=0; i<=average.length; i++){
    sum = sum + i;
  }
  newaverage=sum/average.length;
  print(newaverage);
}
 */
/*
word(search) {
  List<String>name = ['ahmed', 'mohamed', 'adam', 'khaled'];
  bool found = false;
  for (int i = 0; i < name.length; i++) {
    if (name[i] == search) {
      found = true;
      break;
    }
  }
      if(found){
      print('the word is found');}
      else {
        print('the word is not found');
      }
  }
*/
/*
reverse() {
  List<int>num1 = [1, 2, 3,];
  List<int>num2 = [];
  for(int i=num1.length-1; i>=0; i--){
    num2.add(num1[i]);
  }
  print(num2);
}
 */
