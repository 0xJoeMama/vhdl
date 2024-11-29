DIR=build
SRC=ssd_decoder.vhdl ssd_decoder_tb.vhdl
ENTITY=ssd_decoder_tb

all: clean make

make: compile
	ghdl make --workdir=build $(ENTITY)

compile: $(DIR)
	ghdl compile --workdir=build $(SRC)

clean:
	rm -rf $(DIR) $(ENTITY) *.o

$(DIR):
	mkdir -p $(DIR)
