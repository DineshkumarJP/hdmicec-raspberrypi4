LIBNAME = libRCECHal.so
SRCS = hdmi_cec_driver.c
CFLAGS = -Wall -Wextra -fPIC
LDFLAGS = -shared
OBJS = $(SRCS:.c=.o)

$(LIBNAME): $(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) -o $(LIBNAME)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f $(OBJS) $(LIBNAME)
