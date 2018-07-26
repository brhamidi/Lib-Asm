#include <stdio.h>
#include <stdlib.h>
#include <strings.h>

char	*ft_strdup(const char *);

int		main(void)
{
	char	*str = strdup("ok brro");
	char	*str2 = ft_strdup(str);

	if (strcmp(str, str2))
		return puts("strcmp failed");
	if (str == str2)
		return puts("error: same address");
	puts("sucess");
	return (0);
}
