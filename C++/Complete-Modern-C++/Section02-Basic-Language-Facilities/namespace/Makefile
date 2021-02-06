
TARGET=./bin/namespace
CXX= g++
LINKERFLAGS= -g
LIBS= -lm
COMPILERFLAGS= -g -Wall
SRCS= $(shell find ./src/ -name "*.cpp")
OBJS=$(subst .cpp,.o,$(SRCS))


$(TARGET): $(OBJS)
	$(CXX) $(LINKERFLAGS) $(LIBS) -o $(TARGET) $(OBJS)
	

%.o: %.cpp
	$(CXX) $(COMPILERFLAGS) -c -o $@ $<

move:$(TARGET)
	mv $(TARGET) ./bin/$(TARGET)