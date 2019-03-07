include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = SnapStorySpoofBundle
SnapStorySpoofBundle_FILES = SpoofRootListController.m
SnapStorySpoofBundle_INSTALL_PATH = /Library/PreferenceBundles
SnapStorySpoofBundle_FRAMEWORKS = UIKit
SnapStorySpoofBundle_PRIVATE_FRAMEWORKS = Preferences
SnapStorySpoofBundle_EXTRA_FRAMEWORKS = Cephei CepheiPrefs

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/SnapStorySpoofBundle.plist$(ECHO_END)
