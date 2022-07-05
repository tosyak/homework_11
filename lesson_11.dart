import 'dart:io';
import 'dart:math';

void main() {
  var myList = [10, 20, 30, 5, 3, 2];
  // counter(100, 1);
  // print(addFunction(myList));
  // addFunction([1, 2]);

  // userCalc();
  // dice();
  // gradeFunc(5, 5, 0, 1);
  // intSum(12345, 0, 0);
  print(fibInt(13));
  print(fibInt(7));
  // fibInt(7);
}

void counter(int n, int count) {
  if (count <= n) {
    print(count);
    count++;
    return counter(n, count);
  }
}

int addFunction(List<int> myList) {
  print(myList);
  if (myList.length <= 1) {
    return myList[0];
  } else {
    // return myList[0] + addFunction(myList.sublist(1));
    return anotherFunction(myList);
  }
}

int anotherFunction(List<int> myList) {
  return myList[0] + addFunction(myList.sublist(1));
}

// 1) Создать функцию, которая запрашивает у пользователя ответ на пример a
// + b = ?
// Нужно создать две переменные a и b, которые генерируются с помощью
// рандома.
// Также нужна переменная которая записывает результат(сложение
// переменных a и b).
// Затем вы вводите ответ с клавиатуры.
// Компьютер сравнивает ответы.
// Если вы ответили правильно, то вывести на экран «Правильно!».
// Если вы ответили неправильно, то заново вызвать функцию.

int a = Random().nextInt(20);
int b = Random().nextInt(30);
int c = a + b;

userCalc() {
  stdout.write("Input result $a + $b \n");
  int answer = int.parse(stdin.readLineSync()!);

  if (c != answer) {
    userCalc();
  }
}

// 2) Создать функцию, которая бросает игральную кость(нарды).
// Затем вы вводите ответ с клавиатуры: 1- бросить еще раз, 2 - закончить.
// Если вы введете 1, то функция вызывается заново,
// Если вы введете 2, то вывести на экран «wasted»

int randomIntInRange(int min, int max) => min + Random().nextInt(max - min);

dice() {
  int diceNum = randomIntInRange(1, 6);
  stdout.write("Dice number is $diceNum \n");
  stdout.write("Throw one more 1- yes, 2- no \n");
  int answer = int.parse(stdin.readLineSync()!);

  if (answer == 1) {
    dice();
  } else if (answer == 2) {
    print('you loose');
  } else {
    print('dont get you');
  }
}

// 3) Создать функцию, которая возводит введенное вами число в введенную
// вами степенью,
// т.е. Ваша функция принимает два параметра a и b.

// int counter1 = 1;
// int result = 1;

void gradeFunc(int num, int grade, int counter, int result) {
  if (counter != grade) {
    result = num * grade;
    counter++;
    gradeFunc(result, grade, counter, num);
  } else {
    print(result);
  }
}

// 4) Дано натуральное число N. Вычислите сумму его цифр.
// int counter2 = 0;
// int res = 0;
intSum(int num, int counter, int res) {
  if (counter != num.toString().length) {
    res += int.parse(num.toString()[counter]);
    counter++;
    intSum(num, counter, res);
  } else {
    print(res);
  }
}

// 5) Последовательность чисел Фибоначи определяется
// формулой Fn = Fn-1 + Fn-2
// .

// То есть, следующее число получается как сумма двух предыдущих.
// Первые два числа равны 1, затем 2(1+1), затем 3(1+2), 5(2+3) и так
// далее: 1, 1, 2, 3, 5, 8, 13, 21....
// Напишите функцию fib(n) которая возвращает n-е число Фибоначчи.
// Пример работы:
// fib(n) { /* ваш код */ }

// print(fib(3)); // 2
// print(fib(7)); // 13
// print(fib(77)); // 5527939700884757



int fibInt(int num) {
  if (num <= 2) {
    return 1;
  } else {
    return fibInt(num - 1) + fibInt(num - 2);
  }
}
