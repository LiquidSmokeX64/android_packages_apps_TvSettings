LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_PACKAGE_NAME := TvQuickSettings

LOCAL_MODULE_TAGS := optional
LOCAL_SDK_VERSION := current
LOCAL_PROGUARD_FLAG_FILES := proguard.cfg

LOCAL_SRC_FILES := \
    $(call all-java-files-under, src)

LOCAL_RESOURCE_DIR := \
    frameworks/support/v17/leanback/res \
    frameworks/support/v7/preference/res \
    frameworks/support/v14/preference/res \
    frameworks/support/v17/preference-leanback/res \
    frameworks/support/v7/appcompat/res \
    frameworks/support/v7/recyclerview/res \
    $(LOCAL_PATH)/res

LOCAL_STATIC_JAVA_LIBRARIES := \
    android-support-v4 \
    android-support-v7-recyclerview \
    android-support-v7-preference \
    android-support-v7-appcompat \
    android-support-v14-preference \
    android-support-v17-preference-leanback \
    android-support-v17-leanback

LOCAL_AAPT_FLAGS += --auto-add-overlay \
    --extra-packages android.support.v17.leanback:android.support.v7.preference:android.support.v14.preference:android.support.v17.preference:android.support.v7.appcompat:android.support.v7.recyclerview

LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true

# Enable dexpreopt to speed boot time
WITH_DEXPREOPT := true

include $(BUILD_PACKAGE)
