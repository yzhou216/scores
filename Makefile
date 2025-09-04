SRC_DIR := src
DIST_DIR := dist
NIX_OUT_DIR := result

SOURCE_FILES := $(wildcard $(SRC_DIR)/*.ly)
PDF_FILES := $(patsubst $(SRC_DIR)/%.ly,$(DIST_DIR)/%.pdf,$(SOURCE_FILES))
MIDI_FILES := $(patsubst $(SRC_DIR)/%.ly,$(DIST_DIR)/%.midi,$(SOURCE_FILES))

all: $(PDF_FILES) $(MIDI_FILES)

$(DIST_DIR)/%.pdf: $(SRC_DIR)/%.ly | $(DIST_DIR)
	lilypond --loglevel=ERROR --output=$(DIST_DIR)/$* $<

# Optional MIDI files depends on PDFs to avoid running LilyPond twice
$(DIST_DIR)/%.midi: $(DIST_DIR)/%.pdf
	@:

$(DIST_DIR):
	mkdir --parents $(DIST_DIR)

clean:
	rm -rf $(DIST_DIR) $(NIX_OUT_DIR) flake.lock

.PHONY: all clean
