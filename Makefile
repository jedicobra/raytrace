# define libraries
ifeq ($(shell uname),Darwin)
LIB = -DMAC -framework OPENGL -framework GLUT
else
LIB = -lGL -lGLU -lglut
endif

# define makefile targets
CC = g++ -Wall -Wno-deprecated-declarations
BIN = ray_trace2

all: $(BIN)

clean: 
	/bin/rm -f $(BIN)

ray_trace2: ray_trace2.cpp ray_classes.cpp
	$(CC) -o ray_trace2 ray_trace2.cpp ray_classes.cpp $(LIB)
