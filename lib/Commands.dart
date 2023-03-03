abstract class Command {
  num execute();

}

class Addition implements Command{
  final List<num> stack;

  Addition(this.stack);

  @override
  num execute() {
    num a = stack[stack.length -1];
    num b = stack[stack.length -2];
    return a + b;
  }
}

class Subtraction implements Command {
  final List<num> stack;

  Subtraction(this.stack);


  @override
  num execute() {
    num a = stack[stack.length -1];
    num b = stack[stack.length -2];
    return a - b;
  }
}

class Multiplication implements Command{
  final List<num> stack;

  Multiplication(this.stack);

  @override
  num execute() {
    num a = stack[stack.length -1];
    num b = stack[stack.length -2];
    return a * b;
  }

}

class Division implements Command{
  final List<num> stack;

  Division(this.stack);

  @override
  num execute() {
    num a = stack[stack.length -1];
    num b = stack[stack.length -2];
    return a / b;
  }
}
