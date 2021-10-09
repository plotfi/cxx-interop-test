#ifndef CXX_H
#define CXX_H

inline int increment(int t) { return t + 1; }

struct Incrementor { static int incrementee; };

int Incrementor::incrementee = increment(41);

inline int initializeStaticVar() { return Incrementor::incrementee; }

#endif
