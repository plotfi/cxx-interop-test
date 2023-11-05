#ifndef CXX_H
#define CXX_H

struct S {
  int a;
  [[nodiscard]] auto getA() const -> int { return a; }

  virtual int f() { return a; }
};

#endif
