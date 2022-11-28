# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lmarquar <leon.marquardt@gmx.de>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/10/23 11:01:55 by lmarquar          #+#    #+#              #
#    Updated: 2021/10/25 19:51:05 by lmarquar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC		:= gcc
CFLAGS	:= -Wall -Werror -Wextra
LBFTSRC	:= ft_strjoin.c ft_split.c ft_strtrim.c ft_calloc.c
LBFTDIR	:= libft_funcs/
SRC		:= pipex.c pipex_piping.c pipex_universal.c pipex_bonus.c
NAME	:= pipex

all: $(NAME)

bonus: all

re: clean all

$(NAME): $(SRC) $(LBFTSRC)
	$(CC) $(CFLAGS) $(SRC) $(LBFTSRC) -o $@
	rm $(LBFTSRC)

$(LBFTSRC):
	cd $(LBFTDIR) && cp $@ ..

clean:
	rm -f pipex
	rm -f outfile

fclean: clean
	rm $(LBFTSRC)