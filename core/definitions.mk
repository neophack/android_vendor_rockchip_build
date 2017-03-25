ifneq ($(filter rk%,$(strip $(TARGET_BOARD_PLATFORM))),)

INSTALLED_KERNELIMAGE_TARGET := $(PRODUCT_OUT)/kernel.img
ALL_DEFAULT_INSTALLED_MODULES += $(INSTALLED_KERNELIMAGE_TARGET)

.PHONY: kernelimage
kernelimage: $(INSTALLED_KERNELIMAGE_TARGET)

INSTALLED_RESOURCEIMAGE_TARGET := $(PRODUCT_OUT)/resource.img
ALL_DEFAULT_INSTALLED_MODULES += $(INSTALLED_RESOURCEIMAGE_TARGET)

.PHONY: resourceimage
resourceimage: $(INSTALLED_RESOURCEIMAGE_TARGET)

endif # TARGET_BOARD_PLATFORM
