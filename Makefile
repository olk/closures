INCLUDES  := 
CXXFLAGS := -O2 -W -Wall
CPPFLAGS := -std=c++17
LDFLAGS := -Wl,--as-needed
LIBRARIES :=

all: build

build: counter fibonacci

counter.o:counter.cpp
	$(EXEC) $(CXX) $(INCLUDES) $(CXXFLAGS) -o $@ -c $^ $(LIBRARIES)

counter: counter.o
	$(EXEC) $(CXX) $(LDFLAGS) -o $@ $+ $(LIBRARIES)

fibonacci.o:fibonacci.cpp
	$(EXEC) $(CXX) $(INCLUDES) $(CXXFLAGS) -o $@ -c $^ $(LIBRARIES)

fibonacci: fibonacci.o
	$(EXEC) $(CXX) $(LDFLAGS) -o $@ $+ $(LIBRARIES)

run: build
	$(EXEC) ./counter
	$(EXEC) ./fibonacci

clean:
	rm -f counter counter.o fibonacci fibonacci.o

clobber: clean
