# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lbrianna <lbrianna@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/29 14:12:07 by lbrianna          #+#    #+#              #
#    Updated: 2022/05/16 13:36:33 by lbrianna         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =	libftprintf.a
SRCS =	ft_printf.c		ft_print_num.c		ft_print_ptr.c\
		ft_print_hexa.c		utils.c\

HEADER =	ft_printf.h
CC =		gcc
CFLAGS =	-Wall -Wextra -Werror
RM = rm -f
OBJ =		$(SRCS:.c=.o)

all:	$(NAME)

$(NAME) :	$(OBJ) $(HEADER)
	ar rcs $(NAME) $?

%.o : %.c $(HEADER)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJ)

fclean:	clean
	$(RM) $(NAME) 

re: fclean $(NAME)

.PHONY: all clean fclean re
