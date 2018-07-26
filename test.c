#include <stdio.h>
#include <stdlib.h>
#include <strings.h>

void	*ft_memcpy(void *, void *, size_t);

int		main(void)
{
	char 	src[50] = "Hello World";
	char	*dst = malloc(10);
	bzero(dst, 10);
	strcpy(dst, "oklol");
	puts(dst);
	ft_memcpy(dst, src, 2);
	puts(dst);
	return (0);
}
