LIB_NAME = libmongoose.so

CPPFLAGS =
CFLAGS = -Wall
PWD=$(shell pwd)

SSL_CFLAGS = -DMG_ENABLE_SSL=1 -DDISABLE_MD5=1 -D_SYS_QUEUE_H_ 


all: $(LIB_NAME) 

$(LIB_NAME): 
	$(CC) mongoose.c -shared -fPIC -o $(LIB_NAME) $(SSL_CFLAGS) 
        
clean:
	@rm -rf *.o *.so

.PHONY: clean
