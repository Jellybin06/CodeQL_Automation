CXX = g++
CXXFLAGS = -std=c++11 -Wall
SRC = test.cpp
TARGET = myprogram

all: $(TARGET)

$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) -o $@ $^

.PHONY: clean
clean:
	rm -f $(TARGET)
