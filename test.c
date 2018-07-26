#include <stdio.h>
#include <stdlib.h>
#include <strings.h>

void	*ft_memset(void *, int, size_t);

int		main(void)
{
	char tab[40] = "Hello World";
	
	puts( ft_memset((void *)tab, 'H', 5) );
	puts(tab);
	return (0);
}
