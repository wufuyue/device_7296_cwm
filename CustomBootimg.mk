LOCAL_PATH := $(call my-dir)

REPACK_MT65XX := device/Coolpad/7296/tools/repack-MT65xx.pl

$(INSTALLED_RECOVERYIMAGE_TARGET): $(REPACK_MT65XX) \
		$(recovery_kernel) \
		$(TARGET_RECOVERY_ROOT_TIMESTAMP)
	@echo -e ${CL_CYN}"----- Making recovery image ------"${CL_RST}
	$(REPACK_MT65XX) -recovery $(recovery_kernel) $(TARGET_RECOVERY_ROOT_OUT) $@
	@echo -e ${CL_CYN}"Made recovery image: $@"${CL_RST}
	#$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)

INSTALLED_BOOTIMAGE_TARGET := $(PRODUCT_OUT)/boot.img

#$(INSTALLED_BOOTIMAGE_TARGET): $(REPACK_MT65XX) $(INSTALLED_KERNEL_TARGET) $(TARGET_ROOT_OUT)
$(INSTALLED_BOOTIMAGE_TARGET): $(REPACK_MT65XX) $(INTERNAL_BOOTIMAGE_FILES)
	$(call pretty,"Target boot image: $@")
	$(REPACK_MT65XX) -boot $(INSTALLED_KERNEL_TARGET) $(TARGET_ROOT_OUT) $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_BOOTIMAGE_PARTITION_SIZE),raw)
	@echo -e ${CL_CYN}"Made boot image: $@"${CL_RST}
