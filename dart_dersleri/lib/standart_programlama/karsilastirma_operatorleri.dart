void main() {
  int a = 40;
  int b = 50;

  int x = 90;
  int y = 80;

  print("a == b : ${a == b}");
  print("a != b : ${a != b}"); // ! = not, var olan ifadeyi tersine çevirir.
  print("a > b : ${a > b}");
  print("a >= b : ${a >= b}");
  print("a < b : ${a < b}");
  print("a <= b : ${a <= b}");

  print("a>b || x>y : ${a > b || x > y}");
  //OR(VEYA) : false - false = false, diğer durumlarda true
  print("a>b && x>y : ${a > b && x > y}");
  //AND(VE) : true - true = true, diğer durumlarda false
}
