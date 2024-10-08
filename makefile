BINARY_FILE = FinanceBot.bin

build:
	sudo gcc --std=gnu18 -g -O3 -Iinclude src/* -lcurl -ljson-c -lsqlite3 -lz -lm -o $(BINARY_FILE)

run:
	./$(BINARY_FILE)

build_and_run: build run

clean:
	rm -f ./$(BINARY_FILE)
