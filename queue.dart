class Queue<T>{

  int _maxSize;
  List<T> _data;
  int _front = -1; 
  int _back = -1;

  //initialize queue
  Queue({int maxSize}){
    _maxSize = maxSize;
    _data = new List<T>(_maxSize);
  }

  bool get isEmpty => _front == -1 || _front > _back; //when dequeue -> front will eventually reach back

  bool get isFull => _back == _maxSize - 1;

  //add element to front of queue
  void enqueue(T data) {
    
    if(isEmpty) _front = 0; //_back will become 0 too
    
    if(!isFull) _data[++_back] = data;
    else print("Queue is full");
    
  }

  T dequeue() => !isEmpty ? _data[_front++] : null;
  
  void printQueue(){

    if(!isEmpty){
      print("\n--Printing Queue from the front--\n");
      for(int i = _front; i <= _back; i++){
        print("${_data[i]}\n");
      }
    }else print("Queue is Empty");

  }

}