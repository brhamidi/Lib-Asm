# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bhamidi <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/28 16:45:28 by bhamidi           #+#    #+#              #
#    Updated: 2018/07/28 17:29:32 by bhamidi          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
CC 		= nasm
NAME	= libfts.a
CFLAGS 	= -f macho64
SRCS 	= ft_isalnum.s\
		  ft_isalpha.s\
		  ft_isascii.s\
		  ft_isdigit.s\
		  ft_isprint.s\
		  ft_memcpy.s\
		  ft_memset.s\
		  ft_puts.s	\
		  ft_strcat.s\
		  ft_strchr.s\
		  ft_strcpy.s\
		  ft_strdup.s\
		  ft_strlen.s\
		  ft_strnchr.s\
		  ft_strncpy.s\
		  ft_tolower.s\
		  ft_toupper.s\
		  ft_bzero.s\
		  ft_cat.s

OBJ = $(SRCS:.s=.o)

all : $(NAME)

$(NAME) : $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@echo "\033[32mlibfts linked\033[0m"

%.o : %.s
	$(CC) $(CFLAGS) $< -o $@

clean :
	@rm -f $(OBJ)

fclean : clean
	@rm -f $(NAME)

re : fclean all

.PHONY: all fclean clean re
