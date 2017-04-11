#include <re2/filtered_re2.h>
#include "RE2Services.h"

using namespace re2;

RE2Services::RE2Services()
{
}

bool RE2Services::FullMatch(const char *text, const char *re)
{
  return RE2::FullMatch(text, re);
}
