static union { unsigned u; unsigned char c[sizeof(unsigned)]; } u =
     { 0xaabbccdd };

main(void)
{
    switch(u.c[0]) {
        case 0xaa:  printf("big endian\n"); break;
        case 0xdd:  printf("little endian\n"); break;
        default:    exit(2); 
    }    
    exit(0);
}
