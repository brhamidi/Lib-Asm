/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bhamidi <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/07/28 17:38:22 by bhamidi           #+#    #+#             */
/*   Updated: 2018/07/28 18:53:10 by bhamidi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"
#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
#include <strings.h>

int main(void)
{
	char	*buf = malloc(15);

	printf("\n============\nTEST FT_ISALNUM\n");
	for (int i = 40; i < 120; i++) printf("a(%d) %d \n", i, isalnum(i));
	putchar('\n');
	for (int i = 40; i < 120; i++) printf("b(%d) %d\n", i, ft_isalnum(i));
	printf("\n============\nTEST FT_ISALPHA\n");
	for (int i = 50; i < 110; i++) printf("a(%d) %d \n", i, isalpha(i));
	putchar('\n');
	for (int i = 50; i < 110; i++) printf("b(%d) %d\n", i, ft_isalpha(i));
	printf("\n============\nTEST FT_ISASCII\n");
	for (int i = -10; i < 130; i++) printf("a(%d) %d \n", i, isascii(i));
	putchar('\n');
	for (int i = 50; i < 110; i++) printf("b(%d) %d\n", i, ft_isascii(i));
	printf("\n============\nTEST FT_ISdigit\n");
	for (int i = 50; i < 110; i++) printf("a(%d) %d \n", i, isdigit(i));
	putchar('\n');
	for (int i = 50; i < 110; i++) printf("b(%d) %d\n", i, ft_isdigit(i));
	printf("\n============\nTEST FT_ISprint\n");
	for (int i = 50; i < 110; i++) printf("a(%d) %d \n", i, isprint(i));
	putchar('\n');
	for (int i = 50; i < 110; i++) printf("b(%d) %d\n", i, ft_isprint(i));

	printf("\n============\nTEST FT_memcpy\n");
	bzero(buf, 15);
	memcpy(buf, "good task", 4);
	puts(buf);
	bzero(buf, 15);
	ft_memcpy(buf, "good task", 4);
	puts(buf);

	printf("\n============\nTEST FT_memset\n");
	bzero(buf, 15);
	memset(buf, '#', 5);
	puts(buf);
	bzero(buf, 15);
	ft_memset(buf, '#', 5);
	puts(buf);


	printf("\n============\nTEST FT_puts\n");
	puts("i puts");
	ft_puts("i puts");

	printf("\n============\nTEST FT_strcat\n");
	bzero(buf, 15);
	strcat(buf, "fleur");
	puts(buf);
	bzero(buf, 15);
	ft_strcat(buf, "fleur");
	puts(buf);

	printf("\n============\nTEST FT_strchr\n");
	bzero(buf, 15);
	strcpy(buf, "Hello World");
	puts(strchr(buf, 'W'));
	bzero(buf, 15);
	strcpy(buf, "Hello World");
	puts(strchr(buf, 'W'));

	printf("\n============\nTEST FT_strnchr\n");
	bzero(buf, 15);
	strcpy(buf, "Hello World");
	puts(ft_strnchr(buf, 'W', 3));

	printf("\n============\nTEST FT_strcpy\n");
	bzero(buf, 15);
	strcpy(buf, "it me");
	puts(buf);
	bzero(buf, 15);
	ft_strcpy(buf, "it me");
	puts(buf);

	printf("\n============\nTEST FT_strncpy\n");
	bzero(buf, 15);
	strncpy(buf, "it me", 2);
	puts(buf);
	bzero(buf, 15);
	ft_strncpy(buf, "it me", 2);
	puts(buf);

	printf("\n============\nTEST FT_strdup\n");


	printf("\n============\nTEST FT_SUM\n");
	printf("sum(1, 2) -> %d\n", ft_sum(1, 2));
	printf("sum(-1, -2) -> %d\n", ft_sum(-1, -2));
	printf("sum(0, 45) -> %d\n", ft_sum(0, 45));
	printf("sum(-1, 5) -> %d\n", ft_sum(-1, 5));
	return (0);
}
