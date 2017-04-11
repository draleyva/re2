#pragma once

#ifdef  __cplusplus
extern "C" {
#endif

class RE2Services
{
public:
  RE2Services();
  static bool FullMatch(const char *text, const char *re);
};

#ifdef  __cplusplus
}
#endif
