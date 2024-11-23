#include "script_version.hpp"

#define PREFIX vik_gih

#define VERSION     MAJOR.MINOR
#define VERSION_STR MAJOR.MINOR.PATCHLVL.BUILD
#define VERSION_AR  MAJOR,MINOR,PATCHLVL,BUILD

#define QUOTE(var1) #var1

#define REQUIRED_VERSION 1.98

#ifdef COMPONENT_BEAUTIFIED
    #define COMPONENT_NAME QUOTE(Grenades Into Hatches - COMPONENT_BEAUTIFIED)
#else
    #define COMPONENT_NAME QUOTE(GIH - COMPONENT)
#endif

#define DOUBLES(var1,var2) var1##_##var2
#define ADDON DOUBLES(PREFIX,COMPONENT)

#define MOD_AUTHOR QUOTE(Viko)
#define MOD_URL "https://github.com/viko00o/grenadesIntoHatches/"