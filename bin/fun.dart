void main(){
  calculate((int z1, int z2){
    return z1 +z2;
  });
  calculate(multiply);
}

void calculate(int Function(int x1, int x2) operation) {
  print( operation(10, 50));
}

// int sum(int x1, int x2) => x1 + x2;
int multiply(int x1, int x2) => x1 * x2;