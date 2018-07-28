/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bhamidi <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/07/28 17:27:05 by bhamidi           #+#    #+#             */
/*   Updated: 2018/07/28 19:03:06 by bhamidi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */


#ifndef LIBFTS_H
# define LIBFTS_H

# include "stdlib.h"

size_t	ft_strlen(const char *s);
void	ft_bzero(void *s, size_t n);
char	*ft_strcat(char *s1, const char *s2);
int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int		ft_isprint(int c);
int		ft_isascii(int c);
int		ft_toupper(int c);
int		ft_tolower(int c);
int		ft_puts(const char *s);
void	*ft_memset(void *s, int c, size_t len);
void	*ft_memcpy(void *dst, void *src, size_t len);
char	*ft_strdup(const char *s1);
char	*ft_strchr(const char *s, int c);
char	*ft_strnchr(const char *s, int c, size_t n);
void	ft_cat(int fd);
char	*ft_strcpy(char *dst, const char *src);
char	*ft_strncpy(char *dst, const char *src, size_t n);
int		ft_sum(int a, int b);

#endif
