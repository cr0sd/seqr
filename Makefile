CFLAGS= -Wfatal-errors
LDFLAGS= -lportaudio -lm -lpthread -pthread
OBJS=seqr

# OS Specific
ifeq ($(OS),Windows_NT)
# CYGWIN flags
CFLAGS += -I/mingw64/include
LDFLAGS += -L/mingw64/lib -lpdcurses

else
# Linux
CFLAGS +=
LDFLAGS += -lncurses
endif

all:$(OBJS)
$(OBJS):
	$(CC) -o $@ $@.c $(CFLAGS) $(LDFLAGS)
clean:
	$(RM) *.o $(OBJS)
