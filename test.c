#include <stdio.h>
#include <stdlib.h>
#include <strings.h>

void	ft_bzero(void *s, size_t n);

int main(void)
{
	char	*str =(char*) malloc(11 + 1);
	str[11] = '\0';
	strcpy(str, "Hello World");
	for (int i = 0; i < 12; ++i)
		printf("%d ", str[i]);
	putchar('\n');
	ft_bzero(str, strlen(str));
	for (int i = 0; i < 12; ++i)
		printf("%d ", str[i]);
	putchar('\n');
	return (0);
}
