#include <stdio.h>
#include <stdlib.h>
#include <strings.h>


int ft_puts(const char *);

int		main(void)
{
//	printf("%d\n", puts(NULL));
	printf("%d\n", ft_puts("123456789"));
	printf("%d\n", ft_puts("12"));
	return (0);
}
