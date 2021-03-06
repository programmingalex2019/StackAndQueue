class Stack<T> {

    List<T> _data;
    int _maxSize;
    int _top = 0;

    //initialize stack
    Stack({int maxSize}){
      _maxSize = maxSize;
      _data = new List<T>(_maxSize);
    }

    bool isEmpty() => _top == 0;

    bool isFull() => _top == _maxSize;

    void push(T newVal){
      if(!isFull()) _data[_top++] = newVal;
    }

    //returns the removed element
    T pop(){
      if(!isEmpty()) return _data[--_top];
      else return null;
    }

    //just retrieve a copy of the top element
    T top() {
      if(!isEmpty()) return _data[_top - 1];   
      else return null;
    }

    void printStack(){
      print("\n--Printing Stack from the top--\n");
      if(!isEmpty()) {
        for(int i = _top - 1; i >= 0; i--) print("${_data[i]}\n");
      }else{
        print("Stack is Empty");
      }
    }

}