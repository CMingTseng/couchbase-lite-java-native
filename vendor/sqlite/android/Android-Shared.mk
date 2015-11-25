LOCAL_PATH := $(call my-dir)
$(info $(LOCAL_PATH))

include $(CLEAR_VARS)
LOCAL_MODULE := libsqlite
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../src/headers
LOCAL_SRC_FILES := ../src/c/sqlite3.c
LOCAL_CFLAGS := -DSQLITE_THREADSAFE=2
LOCAL_CFLAGS += -DSQLITE_TEMP_STORE=2
LOCAL_CFLAGS += -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_FTS3_PARENTHESIS -DSQLITE_ENABLE_FTS4
LOCAL_CFLAGS += -DSQLITE_ENABLE_RTREE
LOCAL_CFLAGS += -ffunction-sections -fdata-sections
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libsqlite3
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../src/headers
LOCAL_SRC_FILES := ../src/c/sqlite3.c
LOCAL_CFLAGS := -DSQLITE_THREADSAFE=2
LOCAL_CFLAGS += -DSQLITE_TEMP_STORE=2
LOCAL_CFLAGS += -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_FTS3_PARENTHESIS -DSQLITE_ENABLE_FTS4
LOCAL_CFLAGS += -DSQLITE_ENABLE_RTREE
LOCAL_CFLAGS += -ffunction-sections -fdata-sections
include $(BUILD_SHARED_LIBRARY)
