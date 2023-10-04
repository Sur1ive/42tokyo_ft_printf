SRCS	= ft_printf.c ft_putstr.c ft_putnbr.c ft_strlen.c ft_putp.c
OBJS	= $(SRCS:.c=.o)
NAME	= libftprintf.a
CC		= cc -Wall -Wextra -Werror

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)

all: $(NAME)

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re
