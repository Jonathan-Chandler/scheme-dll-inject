 /* file: minunit.h */
#ifndef __MINUNIT_H__
#define __MINUNIT_H__

extern int tests_run;

#define mu_assert(message, test)  \
do {                              \
  if (!(test))                    \
    return message;               \
  else                            \
    tests_run++;                  \
} while (0)

//#define mu_run_test(test)
//do { 
//  char *message = test(); 
//  tests_run++;
//  if (message) return message; } while (0)

#endif

