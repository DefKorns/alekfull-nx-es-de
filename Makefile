MOD_ID       := es_theme_alekfull_nx
MOD_NAME     := EmulationStation Theme: Alekfull NX
MOD_CATEGORY := Themes
MOD_CREATOR  := DefKorns, fagnerpc, anthonycaccese

all: hmod

HMOD_BUILD_DIR ?= vendor/hmod-build
include $(HMOD_BUILD_DIR)/hmod.mk

.PHONY: all
