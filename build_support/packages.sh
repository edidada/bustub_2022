#!/bin/bash

## =================================================================
## BUSTUB PACKAGE INSTALLATION
##
## This script will install all the packages that are needed to
## build and run the DBMS.
##
## Supported environments:
##  * Ubuntu 22.04 (x86-64)
##  * Ubuntu 24.04 (x86-64)
##  * macOS 14
##  * macOS 15
## =================================================================

main() {
  set -o errexit

    if [ "$1" == "-y" ]
    then
        install
    else
        echo "PACKAGES WILL BE INSTALLED. THIS MAY BREAK YOUR EXISTING TOOLCHAIN."
        echo "YOU ACCEPT ALL RESPONSIBILITY BY PROCEEDING."
        read -p "Proceed? [Y/n] : " yn

        case $yn in
            Y|y) install;;
            *) ;;
        esac
    fi

    echo "Script complete."
}

install() {
  set -x
  UNAME=$(uname | tr "[:lower:]" "[:upper:]" )

  case $UNAME in
    DARWIN) install_mac ;;

    LINUX)
      version=$(cat /etc/os-release | grep VERSION_ID | cut -d '"' -f 2)
      case $version in
        22.04) install_linux ;;
        24.04) install_linux_2404 ;;  # 添加 Ubuntu 24.04 支持
        *) give_up ;;
      esac
      ;;

    *) give_up ;;
  esac
}

give_up() {
  set +x
  echo "Unsupported distribution '$UNAME'"
  echo "Please contact our support team for additional help."
  echo "Be sure to include the contents of this message."
  echo "Platform: $(uname -a)"
  echo
  echo "https://github.com/cmu-db/bustub/issues"
  echo
  exit 1
}

install_mac() {
  # Install Homebrew.
  if test ! $(which brew); then
    echo "Installing Homebrew (https://brew.sh/)"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
  # Update Homebrew.
  brew update
  # Install packages.
  brew ls --versions cmake || brew install cmake
  brew ls --versions coreutils || brew install coreutils
  brew ls --versions doxygen || brew install doxygen
  brew ls --versions git || brew install git
  (brew ls --versions llvm | grep 13) || brew install llvm@13
}

install_linux() {
  # Update apt-get.
  apt-get -y update
  # Install packages.
  apt-get -y install \
      build-essential \
      clang-12 \
      clang-format-12 \
      clang-tidy-12 \
      cmake \
      doxygen \
      git \
      g++-12 \
      pkg-config \
      zlib1g-dev
}

# 添加 Ubuntu 24.04 特定的安装函数
install_linux_2404() {
  # Update apt-get.
  apt-get -y update
  # Install packages.
  # Ubuntu 24.04 可能需要更新的版本
  apt-get -y install \
      build-essential \
      clang-14 \
      clang-format-14 \
      clang-tidy-14 \
      cmake \
      doxygen \
      git \
      g++-14 \
      pkg-config \
      zlib1g-dev
}

main "$@"
