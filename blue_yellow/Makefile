SRC	?= $(wildcard *.jpg) $(wildcard *.png)
OUT	?= $(basename $(SRC))
DIR	?= telegram
TRG	?= $(OUT:%=$(DIR)/%.png)

.PHONY: all
all: $(TRG)

.PHONY: clean
clean:
	rm -f $(TRG)

.DELETE_ON_ERROR:

$(DIR)/%.png: %.jpg
	ffmpeg -i $< -vf scale=w=512:h=512:force_original_aspect_ratio=decrease $@

$(DIR)/%.png: %.png
	ffmpeg -i $< -vf scale=w=512:h=512:force_original_aspect_ratio=decrease $@
