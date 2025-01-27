# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mring <mring@student.42heilbronn.de>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
<<<<<<< HEAD
#    Created: 2024/10/08 10:34:52 by mring             #+#    #+#              #
#    Updated: 2024/11/04 12:34:35 by mring            ###   ########.fr        #
=======
#    Created: 2023/10/06 12:40:14 by mring             #+#    #+#              #
#    Updated: 2023/11/07 02:03:30 by mring            ###   ########.fr        #
>>>>>>> 2beb4d17c34c42ac3620e4404a7afcc0ec8006d3
#                                                                              #
# **************************************************************************** #

# Defining the name of the target (executable)
NAME = libft.a

<<<<<<< HEAD
CFLAGS = -Wall -Wextra -Werror

SRC 		= ft_isalpha ft_isdigit ft_isalnum ft_isascii ft_isprint ft_strlen ft_memset ft_bzero ft_memcpy ft_memmove ft_strlcpy ft_strlcat ft_toupper ft_tolower ft_strchr ft_strrchr ft_strncmp ft_memchr ft_memcmp ft_strnstr ft_atoi ft_calloc ft_strdup \
				ft_substr ft_strjoin ft_strtrim ft_split ft_itoa ft_strmapi ft_striteri ft_putchar_fd ft_putstr_fd ft_putendl_fd ft_putnbr_fd
SRCS		= $(addsuffix .c, $(SRC))

OBJ_DIR		= obj
OBJS		= $(SRCS:%.c=$(OBJ_DIR)/%.o)
BONUS_OBJS	= $(BONUS_SRCS:%.c=$(OBJ_DIR)/%.o)

BONUS_SRC	= ft_lstnew ft_lstadd_front ft_lstsize ft_lstlast ft_lstadd_back ft_lstdelone ft_lstclear ft_lstiter ft_lstmap
BONUS_SRCS	= $(addsuffix _bonus.c, $(BONUS_SRC))

$(OBJ_DIR)/%.o: %.c
	@mkdir -p $(OBJ_DIR)
	@cc ${CFLAGS} -c $< -o $@
	@echo "/// compiling $@.. ///"


=======
# Source file names devided by space
SRC = $(addsuffix .c, ft_putnbr_fd ft_putendl_fd ft_putstr_fd ft_putchar_fd ft_striteri ft_strmapi ft_itoa ft_split ft_strtrim ft_strjoin ft_substr ft_calloc ft_strdup ft_atoi ft_bzero ft_isalnum ft_isalpha ft_isascii ft_isdigit ft_isprint ft_memchr ft_memcmp ft_memcpy ft_memmove ft_memset ft_strchr ft_strlcpy ft_strlcat ft_strlen ft_strncmp ft_strnstr ft_strrchr ft_tolower ft_toupper )
# for every source file, find the object file.
OBJ := $(SRC:%.c=%.o)
# bonus files and folder
BONUS_SRC = $(addsuffix _bonus.c, ft_lstnew ft_lstadd_front ft_lstsize ft_lstlast ft_lstadd_back ft_lstdelone ft_lstclear ft_lstiter ft_lstmap)
# for every bonus source file find the bonus object file
BONUS_OBJ := $(BONUS_SRC:%.c=%.o)

# Defining compiler and compiler flags
CC = cc
# -Wall: enable all warnings
# -Wextra: extra warning flags that are not included in Wall
# -Werror: turns all warnings into errors to stop the compilerwhen when it encounters a warning
CFLAGS = -Wall -Wextra -Werror

###################################

# First rule in any Makefile - will call $(NAME) and depend on it.
>>>>>>> 2beb4d17c34c42ac3620e4404a7afcc0ec8006d3
all: $(NAME)

# make will try to build missing .o files if a rule for OBJ exist.
# When all dependencies are there it will be executed
# it links all .o files into an exec file called $(NAME)
# $^ represents all the prerequisites, in this case al OBJ
# uses implicite rule for OBJ, see https://www.gnu.org/software/make/manual/html_node/Catalogue-of-Rules.html
<<<<<<< HEAD
$(NAME): $(OBJS)
	@ar -rcs $(NAME) $(OBJS)
	@echo "/// $(NAME) compiled ///"
#	$(CC) $(LFLAGS) -o $(NAME)
# used for leaksanitizer

bonus: $(BONUS_OBJS)
	@ar -rcs $(NAME) $(BONUS_OBJS)
	@echo "/// $(NAME) bonus compiled ///"

# clean removes all objects (%.o) "rm -f"
clean:
	@rm -rf $(OBJ_DIR)
	@echo "/// cleaning ///"

# fclean runs clean first then removes the library file
fclean: clean
	@rm -f $(NAME)

# re runs fclean then all. deletes everything then recompiles
re: fclean all

.PHONY: all bonus clean fclean re
=======
$(NAME): $(OBJ)
	ar -rc $(NAME) $(OBJ)
#	$(CC) $(LFLAGS) -o $(NAME)
# used for leaksanitizer

bonus: $(BONUS_OBJ)
	ar -rc $(NAME) $(BONUS_OBJ)
###############

# clean removes all objects (%.o) "rm -f"
clean:
	rm -f $(OBJ) $(BONUS_OBJ)

# fclean runs clean first then removes the library file
fclean: clean
	rm -f $(NAME)

# re runs fclean then all. deletes everything then recompiles
re: fclean all
>>>>>>> 2beb4d17c34c42ac3620e4404a7afcc0ec8006d3
