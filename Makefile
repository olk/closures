INCLUDES  := 
CXXFLAGS := -O2 -W -Wall
CPPFLAGS := -std=c++17
LDFLAGS := -Wl,--as-needed
LIBRARIES :=

all: build

build: counter

counter.o:counter.cpp
	$(EXEC) $(CXX) $(INCLUDES) $(CXXFLAGS) -o $@ -c $^ $(LIBRARIES)

counter: counter.o
	$(EXEC) $(CXX) $(LDFLAGS) -o $@ $+ $(LIBRARIES)

run: build
	$(EXEC) ./counter

clean:
	rm -f counter counter.o

clobber: clean
