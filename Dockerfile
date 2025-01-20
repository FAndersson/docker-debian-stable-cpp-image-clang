# Docker image for C++ development using Clang, based on base C++ image for
# Debian stable.

FROM fredrikandersson/debian-stable-cpp-image-base:2024-07-01

RUN apt-get update --quiet --yes

# We don't want to mix with gcc/stdlibc++.
RUN apt-get remove gcc --quiet --yes
RUN apt-get autoremove --quiet --yes

# Install Clang.
RUN apt-get install --quiet --yes clang clang-format clang-tidy libc++-dev

# Create default user.
RUN useradd --create-home --shell /bin/bash fredrik
USER fredrik
WORKDIR /home/fredrik
