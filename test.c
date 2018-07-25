#include <stdio.h>
#include <stdlib.h>
#include <strings.h>

size_t	ft_strlen(const char *);

int		main(void)
{
	const char tab[] = "Hello World";
	const char tab1[] = "Hello";
	const char tab2[] = "H";
	printf("ft_strlen(%s) -> %zu\n", tab, ft_strlen(tab));
	printf("ft_strlen(%s) -> %zu\n", tab1, ft_strlen(tab1));
	printf("ft_strlen(%s) -> %zu\n", tab2, ft_strlen(tab2));
	return (0);
}
