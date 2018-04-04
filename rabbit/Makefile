SRC	?= $(wildcard *.JPG) $(wildcard *.png)
DIR	?= telegram
OUT	?= $(SRC:%=$(DIR)/%.png)

.PHONY: all
all: $(OUT)

.PHONY: clean
clean:
	rm -f $(OUT)

$(DIR):
	mkdir -p $@

.DELETE_ON_ERROR:

$(DIR)/%.png: % | $(DIR)
	convert -resize 512x512 "$<" "$@"
