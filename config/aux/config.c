
#include <stdio.h>
#include <lua.h>

static union 
    { unsigned u; 
      unsigned char c[sizeof(unsigned)]; 
    } endian = { 0xaabbccdd };

main(int argc, char **argv)
{
    printf("$lua_version='%s';\n", LUA_VERSION);
    switch(endian.c[0]) {
        case 0xaa:  printf("$endian='big';\n"); break;
        case 0xdd:  printf("$endian='little';\n"); break;
        default:    printf("$endian=undef;"); 
    }    
    printf("$sizeof_int=%d;\n", sizeof(int));
    printf("$sizeof_ptr=%d;\n", sizeof(int*));
    printf("$sizeof_char=%d;\n", sizeof(char));

#if defined(__STDC_VERSION__)
    printf("$stdc_version=%d;\n", __STDC_VERSION__);
#else
    printf("$stdc_version=undef;\n");
#endif    

    fflush(stdout);
    exit(0);
}
