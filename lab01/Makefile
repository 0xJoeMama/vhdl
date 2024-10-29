DIR=build
SRC=locker.vhdl locker_tb.vhdl
ENTITY=locker_tb

all: clean make

make: compile
	ghdl make --workdir=build $(ENTITY)

compile: $(DIR)
	ghdl compile --workdir=build $(SRC)

clean:
	rm -rf $(DIR) $(ENTITY) *.o

$(DIR):
	mkdir -p $(DIR)
