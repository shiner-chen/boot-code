PULP_PROPERTIES = pulp_chip pulpChip
include $(PULP_SDK_HOME)/install/rules/pulp_properties.mk

PULP_APP = boot-$(pulp_chip)
PULP_APP_FC_SRCS = boot_code.c
PULP_APP_FC_ASM_SRCS = crt0.S

PULP_LDFLAGS += -Tlink.ld

CONFIG_OPT += rt/no-crt0=true rt/no-link-script=true rt/no-rt=true

PULP_CFLAGS += -Os -g -fno-jump-tables

PULP_LDFLAGS += -nostdlib

include $(PULP_SDK_HOME)/install/rules/pulp_rt.mk
