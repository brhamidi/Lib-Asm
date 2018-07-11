#include <stdio.h>

int		ft_isalnum(int);

int main(void)
{
	puts("Test for ft_isalnum");
	for (int i = 40; i < 125; ++i)
		printf("ft_isalnum(%2d): -> %d\n", i, ft_isalnum(i));
	return (0);
}
