import 'queue.dart';
import 'stack.dart';

void main(){


  //Stack example
  Stack stack = new Stack(maxSize: 5);
  for(int i = 1; i <= 5; i++) stack.push(i);
  stack.printStack();
  int five = stack.pop();
  print("This is $five");
  stack.printStack();

  //Queue example
  Queue queue = new Queue(maxSize: 5);
  for(int i = 1; i <= 5; i++) queue.enqueue(i);
  queue.printQueue();
  int one = queue.dequeue();
  print("This is $one");
  queue.printQueue();

  

}