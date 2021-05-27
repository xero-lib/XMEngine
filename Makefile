BUILD_DIR ?= build
BUILD_TYPE ?= Debug

all: build

build: cmake
	ninja -C ${BUILD_DIR}

# If the clean target was requested, enforce clean before regeneration
CLEAN := $(filter clean,${MAKECMDGOALS})
cmake: ${CLEAN}
	cmake -B${BUILD_DIR} -DCMAKE_BUILD_TYPE=${BUILD_TYPE}

clean:
	rm -rf ${BUILD_DIR}

SRCS := $(shell find . -name '*.cpp' -or -name '*.hpp')

format: $(addsuffix .format,${SRCS})
tidy: $(addsuffix .tidy,${SRCS})

%.format: %
	clang-format -i $<

%.tidy: % cmake
	clang-tidy -p ${BUILD_DIR} $<

.PHONY: all build clean cmake format test tidy *.format *.tidy