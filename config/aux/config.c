
#include <stdio.h>
#include <lua.h>

static union 
    { unsigned u; 
      unsigned char c[sizeof(unsigned)]; 
    } endian = { 0xaabbccdd };

main(int argc, char **argv)
{
    printf("$x{lua_version}='%s';\n", LUA_VERSION);
    switch(endian.c[0]) {
        case 0xaa:  printf("$x{endian}='big';\n"); break;
        case 0xdd:  printf("$x{endian}='little';\n"); break;
        default:    printf("$x{endian}='unknown';"); 
    }    
    printf("$x{sizeof_int}=%d;\n", sizeof(int));
    printf("$x{sizeof_ptr}=%d;\n", sizeof(int*));
    printf("$x{sizeof_char}=%d;\n", sizeof(char));

#if defined(__STDC_VERSION__)
    printf("$x{stdc_version}=%d;\n", __STDC_VERSION__);
#else
    printf("$x{stdc_version}='';\n");
#endif    

    fflush(stdout);
    exit(0);
}
