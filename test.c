#include <stdio.h>
#include <stdlib.h>
#include <strings.h>

char * ft_strcat(char *, const char *);

int main(void)
{
	char	str[500];
	char	str2[200];

	strcpy(str, "0123456789");
	strcpy(str2, "abcdefghihk");
	puts(str);
	ft_strcat(str, str2);
	puts(str);
	ft_strcat(str, str2);
	puts(str);
	return (0);
}
