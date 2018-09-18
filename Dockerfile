# Docker image for C++ development using Clang, based on base C++ image for Debian stable.

FROM fredrikandersson/debian-stable-cpp-image-base:stretch-2018-09-18

RUN apt-get update --quiet --yes

# We don't want to mix with gcc/stdlibc++
RUN apt-get remove gcc --quiet --yes
RUN apt-get autoremove --quiet --yes

# Install Clang
RUN apt-get install --quiet --yes clang clang-format-3.5 clang-modernize-3.5 libc++-dev
