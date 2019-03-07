THEOS_DEVICE_IP = 172.20.10.3


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SnapStorySpoof
SnapStorySpoof_FILES = Tweak.xm
SnapStorySpoof_EXTRA_FRAMEWORKS += Cephei
SnapStorySpoof_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += snapstoryspoofbundle
include $(THEOS_MAKE_PATH)/aggregate.mk
