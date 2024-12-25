CC := zig c++
SRC := ./src
BUILD := ./build

.PHONY: run build clean

run: build
	@$(BUILD)/main

build: $(SRC)/main.cxx
	@test -d $(BUILD) || mkdir $(BUILD)
	@$(CC) -o main $<
	@mv main $(BUILD)

clean: build
	@rm -rf $(BUILD)

