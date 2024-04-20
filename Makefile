# Makefile for C++ Template Project

# Variables
NAME = template
VERSION = 0.0.0
PREFIX ?= $(HOME)/.local

CPP ?= g++
CPPFLAGS = -Wall -Wextra -Werror -pedantic -std=c++11

SRC = src/main.cpp lib/ds.cpp
OBJ = $(SRC:%.cpp=%.o)
INCLUDE = -Iinclude

# Default target
all: $(NAME)

# Compile target
$(NAME): $(OBJ)
	$(CPP) $(OBJ) -o $(NAME) $(CPPFLAGS) $(INCLUDE)

# Rule to compile source files
.cpp.o:
	$(CPP) -c $< -o $@ $(CPPFLAGS) $(INCLUDE)

# Run target
run: $(NAME)
	./$(NAME)

# Clean target
clean:
	$(RM) $(OBJ)
	$(RM) $(NAME)

# Phony targets
.PHONY: all run clean
