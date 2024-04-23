# path to executable
MIRROR_FLATMAP_BIN := $(PYTHON3) $(SOURCE_CODE_ROOT)/utils/mirror_hemi.py

# DO NOT EDIT BELOW THIS LINE
ifeq (1,$(DISCRETE))
override INPUTS := input/$(FLATMAP_DISCRETE_NRRD_FILE)\
	input/$(HEMISPHERES_FILE)

override OUTPUTS := output/$(FLATMAP_BOTH_DISCRETE_NRRD_FILE)

override USER_PARAMETERS := PIXEL_RESOLUTION
else
override INPUTS := input/$(FLATMAP_NRRD_FILE)\
	input/$(HEMISPHERES_FILE)

override OUTPUTS := output/$(FLATMAP_BOTH_NRRD_FILE)

override USER_PARAMETERS :=
endif

override USER_BINARIES := MIRROR_FLATMAP_BIN
