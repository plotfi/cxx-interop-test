inline int Answer() { return 42; }
struct A  {
  int a = Answer();
  // int getAnswer() { return Answer(); }
};