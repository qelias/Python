
TARGET=./bin/basics
CXX= g++
LINKERFLAGS= -g
LIBS= -lm
COMPILERFLAGS= -g -Wall
SRCS= $(shell find ./src/ -name "*.cpp")
OBJS=$(subst .cpp,.o,$(SRCS))


$(TARGET): $(OBJS)
	$(CXX) $(LINKERFLAGS) $(LIBS) -o $(TARGET) $(OBJS)
	@ echo "*"
	@ echo "*"
	@ echo "*"
	@$(TARGET)
	@ echo "*"
	@ echo "*"
	@ echo "*"
	@-rm ./src/*.o

	

%.o: %.cpp
	$(CXX) $(COMPILERFLAGS) -c -o $@ $<

move:$(TARGET)
	mv $(TARGET) ./bin/$(TARGET)

run:
	$(TARGET)

clean:
	rm ./src/*.o ./bin/*