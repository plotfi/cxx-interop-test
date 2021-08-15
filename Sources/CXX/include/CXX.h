#ifndef CXX_H
#define CXX_H

#if 0
#define USE_CTOR 0
#define USE_BASE 0
#endif

namespace NS1 {
namespace NS2 {

inline int AnswerFunction() { return 42; }

struct B  {
  int a;
  B(): a(AnswerFunction()) {}
};

#if USE_BASE
struct C : public B { C(): B() {} };
using A = C;
#else
using A = B;
#endif

struct V {
#if USE_CTOR
  A a;
  int getAnswer() { return a.a; }
#else
  int getAnswer() { return AnswerFunction(); }
#endif
};

}}

#endif
