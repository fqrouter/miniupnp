LOCAL_PATH:= $(call my-dir)
 
include $(CLEAR_VARS)
LOCAL_SRC_FILES:= igd_desc_parse.c \
        miniupnpc.c \
        minixml.c \
        minisoap.c \
        miniwget.c \
        upnpc.c \
        upnpcommands.c \
        upnpreplyparse.c \
        minissdpc.c \
        upnperrors.c \
        portlistingparse.c \
        receivedata.c \
        connecthostport.c
 
LOCAL_MODULE := upnpc
LOCAL_CFLAGS := -O2 -std=gnu99 -g -I$(LOCAL_PATH)

LOCAL_STATIC_LIBRARIES := libcutils libc
include $(BUILD_EXECUTABLE)
