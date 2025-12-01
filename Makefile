// Here is the make file for code
# Compiler
CXX = g++

# Compiler flags
//note: will need to add ncuersers as well
CXXFLAGS = -std=c++17 -Wall -Wextra

# Target executable
TARGET = main

# Source files
SRCS = $(wildcard src/*.cpp)

# Default rule
all: $(TARGET)

# Link object files to create executable
$(TARGET): $(SRCS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SRCS)

# Clean build files
clean:
	rm -f $(TARGET)
