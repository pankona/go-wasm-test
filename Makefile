
WASM = test.wasm
HTML = wasm_exec.html
JS   = wasm_exec.js
CLEAN_TARGET = $(WASM) $(HTML) $(JS)

all: $(WASM) $(HTML) $(JS)

$(WASM):
	GOOS=js GOARCH=wasm go build -o test.wasm main.go

$(HTML):
	curl -sO https://raw.githubusercontent.com/golang/go/master/misc/wasm/wasm_exec.html

$(JS):
	curl -sO https://raw.githubusercontent.com/golang/go/master/misc/wasm/wasm_exec.js

clean:
	rm -f $(CLEAN_TARGET)
