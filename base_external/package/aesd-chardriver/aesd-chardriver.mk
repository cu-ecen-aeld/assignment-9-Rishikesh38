##############################################################
#
# AESD_CHARDRIVER
##
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_CHARDRIVER_VERSION = ef8254e6a5fa8261fec24af82d5e4533c928228b
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_CHARDRIVER_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-Rishikesh38.git
AESD_CHARDRIVER_SITE_METHOD = git
AESD_CHARDRIVER_GIT_SUBMODULES = YES

AESD_CHARDRIVER_MODULE_SUBDIRS += aesd-char-driver/

#defining a set of installation commands for the build system
define AESD_CHARDRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
endef

#creating and executing makefile code dynamically
$(eval $(kernel-module))
$(eval $(generic-package))
