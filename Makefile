SRC_DIR := src
DIST_DIR := dist
LY_FILES := $(wildcard $(SRC_DIR)/*.ly)
PDF_FILES := $(patsubst $(SRC_DIR)/%.ly,$(DIST_DIR)/%.pdf,$(LY_FILES))

all: $(PDF_FILES)

$(DIST_DIR)/%.pdf: $(SRC_DIR)/%.ly | $(DIST_DIR)
	lilypond --output $(DIST_DIR)/$* $<

$(DIST_DIR):
	mkdir --parents $(DIST_DIR)

clean:
	rm -rf $(DIST_DIR)

.PHONY: all clean
