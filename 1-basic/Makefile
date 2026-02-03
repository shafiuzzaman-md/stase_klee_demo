# Makefile for 1-Basic Sample-3 Challenge
CC       = gcc
CFLAGS = -O0 -no-pie -fno-stack-protector -z execstack -D_FORTIFY_SOURCE=0 
LDFLAGS  = -lm
TARGET   = metalogin
SRCS     = metalogin.c win.c globals.c
OBJS     = $(SRCS:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) -o $@ $(OBJS) $(LDFLAGS)

%.o: %.c metalogin.h
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f $(TARGET) $(OBJS)

run: $(TARGET)
	./$(TARGET)

.PHONY: all clean