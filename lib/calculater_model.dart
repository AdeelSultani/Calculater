class calculater {
  var no1;
  var no2;
  var result;
  var op;

  calculater(this.no1, this.no2, this.op);

  int calculate() {
    switch (op) {
      case '+':
        return no1 + no2;
      case '-':
        return no1 - no2;
      case '*':
        return no1 * no2;
      case '/':
        return no2 != 0 ? no1 ~/ no2 : 0;
        case '%':
          return no1/no2;

      default:
        return 0;
    }
  }
  }
