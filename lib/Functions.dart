
double sum(double a, double b){
  return a + b;
}

double square (double x) => x * x;

void printMessage(String message,String from, [String to = 'Unknown']){
  print('"$message", from $from, to $to');
}

void printPerson({String name, int age, String job, bool is_married}){
  print('Name : $name');
  print('Age : $age');
  print('Job : $job');
  print('Is_Married : $is_married');
}
void main(){
  print(sum(10.0, 20.0));
  print(square(9.0));

  printMessage('Hello World', 'Abraham', 'Flutter');

  printPerson(
    name: 'Abraham',
    age: 24,
    job: "Java Dev",
    is_married: false
  );
}