CC = gcc

CFLAGS = -std=c17 -Wall -Wextra -Wpedantic -g3 -O0

TARGET = build/01_malloc_intro
SOURCE = labs/memory/01_malloc_intro.c

.PHONY: all run clean

all: $(TARGET)

$(TARGET): $(SOURCE)
	mkdir -p build
	$(CC) $(CFLAGS) $(SOURCE) -o $(TARGET)

run: all
	./$(TARGET)

clean:
	rm -rf build
