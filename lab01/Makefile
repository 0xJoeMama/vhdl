DIR=build
SRC=locker.vhdl locker_tb.vhdl
ENTITY=locker_tb

make: compile
	ghdl make --workdir=build $(ENTITY)

compile: $(DIR)
	ghdl compile --workdir=build $(SRC)

clean:
	rm -r $(DIR) $(ENTITY) *.o

$(DIR):
	mkdir -p $(DIR)
