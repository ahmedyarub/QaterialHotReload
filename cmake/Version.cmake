# MIT License
#
# Copyright (c) 2020 Olivier Le Doeuff
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

set(QATERIALHOTRELOAD_VERSION_MAJOR 1)
set(QATERIALHOTRELOAD_VERSION_MINOR 2)
set(QATERIALHOTRELOAD_VERSION_PATCH 2)
if(EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/.git")
  execute_process(
    COMMAND git rev-parse --short HEAD
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    OUTPUT_VARIABLE QATERIALHOTRELOAD_VERSION_TAG
    OUTPUT_STRIP_TRAILING_WHITESPACE
)
endif()
if(NOT QATERIALHOTRELOAD_VERSION_TAG)
  set(QATERIALHOTRELOAD_VERSION_TAG 00000000)
endif()
set(QATERIALHOTRELOAD_VERSION_TAG_HEX 0x${QATERIALHOTRELOAD_VERSION_TAG})
set(QATERIALHOTRELOAD_VERSION_TAG ${QATERIALHOTRELOAD_VERSION_TAG} CACHE STRING "Git Tag of Qaterial")
set(QATERIALHOTRELOAD_VERSION ${QATERIALHOTRELOAD_VERSION_MAJOR}.${QATERIALHOTRELOAD_VERSION_MINOR}.${QATERIALHOTRELOAD_VERSION_PATCH} CACHE STRING "Version of Qaterial")
