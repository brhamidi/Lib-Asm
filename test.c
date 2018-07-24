#include <stdio.h>

# define FUNCTION ft_isalnum

int		FUNCTION(int);

int main(void)
{
	puts("Test for FUNCTION");
	for (int i = -15; i < 140; ++i)
		printf("FUNCTION(%2d): -> %d\n", i, FUNCTION(i));
	return (0);
}
