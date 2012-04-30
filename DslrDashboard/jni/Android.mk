# original code has been modified
# original copyright reproduced here:
# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)
ROOT_PATH := $(LOCAL_PATH)

include $(call all-subdir-makefiles)
include $(CLEAR_VARS)

LOCAL_PATH := $(ROOT_PATH)
LOCAL_CFLAGS := -Wall -Wextra

LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -llog -ljnigraphics
LOCAL_MODULE    := dslrdashboard
LOCAL_SRC_FILES := dslrdashboard.cpp
LOCAL_STATIC_LIBRARIES := exiv2 libraw

include $(BUILD_SHARED_LIBRARY)





