// TODO: Generate these for specializing COMDATs during irgen.
#include <vector>

#if !(BOOTSTRAPINTEROP)
#include "swift-header.h"
#endif

template class std::vector<int>;

int TheAnswersAnswer() {
  #if !(BOOTSTRAPINTEROP)
  return main::TheAnswer() + main::TheAnswer();
  #else
  exit(EXIT_FAILURE);
  return 0;
  #endif
}
