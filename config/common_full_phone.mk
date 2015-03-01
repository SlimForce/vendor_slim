# Inherit common stuff
$(call inherit-product, vendor/slim/config/common.mk)

# World APN list
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# World SPN overrides list
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml

# Selective SPN list for operator number who has the problem.
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/common/etc/selective-spn-conf.xml:system/etc/selective-spn-conf.xml

# SIM Toolkit
#PRODUCT_PACKAGES += \
#    Stk

# mokee location
$(call project-set-path,phonelocation,frameworks/base/mokee/jni/phonelocation)
PRODUCT_COPY_FILES += \
    frameworks/base/data/location/phonelocation.dat:/system/media/location/phonelocation.dat
