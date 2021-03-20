TARGET=./bin/ASCII
CXX= gcc
LINKERFLAGS= -g
LIBS= -lm
COMPILERFLAGS= -O0 -g3 -Wall -fmessage-length=0
SRCS= $(shell find ./src/ -name "*.c")
OBJS=$(subst .c,.o,$(SRCS))


$(TARGET): $(OBJS)
	$(CXX) $(LINKERFLAGS) $(LIBS) -o $(TARGET) $(OBJS)
	

%.o: %.c
	$(CXX) $(COMPILERFLAGS) -c -o $@ $<

move:$(TARGET)
	mv $(TARGET) ./bin/$(TARGET)

clean:
	rm ./src/*.o