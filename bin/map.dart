void main(){
  Map<int, Map<String, dynamic>> m = 
  {
    1: {
      'name': 'ahmed',
      'age': 20
    },
    2: {
      'name': 'mo',
      'age': 30
    }
  };
  m[3] = {
    'name': 'mohamed',
    'age': 40
  };
  m.addAll({
    3: {
      'name': 'ali',
      'age': 50
    },
    5: {
      'name': 'ahmed',
      'age': 60
    }
  });
  print(m[1]?.containsValue('ahmed'));
  m.remove(6);
  print(m);

  m.forEach((key, value) {
    print(key);
    value.forEach((k, v){
      print(k);
      print(v);
    });
  });

  m.clear();
  

  /*
  map m = {
  product 1 : 200,
  product 2 : 300,
  }
  calc(m)
  print(m);
  // product 1 : 400,
  // product 2 : 600,
  calc(){}
  */

  Map<String, int> products = {
    'product 1' : 200,
    'product 2' : 300,
  };
  calc(products);
  print(products);
}

calc(Map<String, int> m){
  m.forEach((k, v){
    m[k] = v*2;
  });
}