# Maintainers: Portergos Linux <portergoslinux@gmail.com>
# Maintainers: TOS Linux <tom@odex.be>

pkgname=installer
_reponame=calamares
pkgver=3.2.12
pkgrel=7
pkgdesc="calamares installer for TOS"
arch=('any')
url="https://github.com/ODEX-TOS"
license=('GPL3')
optdepends=('update-mirrorlist')
makedepends=('git' 'cmake' 'extra-cmake-modules')
depends=(
    qt5-svg
    qt5-webengine
    yaml-cpp
    networkmanager
    upower
    qt5-webengine
    yaml-cpp
    boost
    networkmanager
    upower
    kcoreaddons
    kconfig
    ki18n
    kservice
    kwidgetsaddons
    kpmcore
    squashfs-tools
    rsync
    cryptsetup
    qt5-xmlpatterns
    doxygen
    dmidecode
    gptfdisk
    hwinfo
    kparts
    polkit-qt5
    python
    qt5ct
    solid
    qt5-tools)

provides=("${pkgname}")
options=(!strip !emptydirs)
source=(
  "git+https://github.com/ODEX-TOS/installer.git#branch=master"
  "https://github.com/calamares/calamares/releases/download/v$pkgver/$_reponame-$pkgver.tar.gz"
)
sha256sums=(
'SKIP'
'SKIP'
)

prepare() {
    cd $srcdir
    # tos' calamares is cloned at source variable, the original calamares is wget below
    if [ ! -d $_reponame ]
        then 
            # wget https://github.com/calamares/calamares/releases/download/v$pkgver/$_reponame-$pkgver.tar.gz
            # tar -zxvf $_reponame-$pkgver.tar.gz
            # rm $_reponame-$pkgver.tar.gz
            mv $_reponame-$pkgver $_reponame
            rsync -va $pkgname/* $_reponame
            rm -rf $pkgname
    fi

    # Build proccess can't understand our personal files, so we adjust here
    cp $pkgname/src/modules/packages/packages.conf_offline $_reponame/src/modules/packages/packages.conf
    cp $pkgname/settings.conf_offline                      $_reponame/settings.conf
    cp $pkgname/src/modules/welcome/welcome.conf_offline   $_reponame/src/modules/welcome/welcome.conf 

    mkdir -p $_reponame/build/$pkgname

    # remove some calamares modules we don't need
    rm -r $_reponame/src/modules/{dracut,dracutlukscfg,dummycpp,dummyprocess,dummypython,dummypythonqt,initramfs,plymouthcfg,tracking,webview} ||true

    # change some files on the go - distro-specific
    sed -i "s?configuration files\" OFF?configuration files\" ON?g"               $_reponame/CMakeLists.txt
    sed -i "s?username: live?username: liveuser?g"                                $_reponame/src/modules/removeuser/removeuser.conf
    sed -i 's/\"mkinitcpio\", \"-p\", m_kernel/\"mkinitcpio\", \"-P\"/'           $_reponame/src/modules/initcpio/InitcpioJob.cpp
    sed -i "s?./example.sqfs?\"/run/archiso/bootmnt/arch/x86_64/airootfs.sfs\"?g" $_reponame/src/modules/unpackfs/unpackfs.conf

}

build() {

    cd $_reponame/build
    cmake .. -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_LIBDIR=/usr/lib -DCMAKE_INSTALL_PREFIX=/usr
    export DESTDIR="$srcdir/$_reponame/build/$pkgname" && make -j4 install

}

package() {
    local destdir="/usr"
    cd $srcdir
    # Build proccess can't understand our personal files, so we explicitly copy them here to be packed along calamares files

    cp -r $pkgname/src/branding                                    $_reponame/build/$pkgname/usr/share/calamares/
    cp -r $pkgname/settings.conf_{on,off}line                      $_reponame/build/$pkgname/usr/share/calamares/
    cp -r $pkgname/src/modules/welcome/welcome.conf_{on,off}line   $_reponame/build/$pkgname/usr/share/calamares/modules/
    cp -r $pkgname/src/modules/packages/packages.conf_{on,off}line $_reponame/build/$pkgname/usr/share/calamares/modules/

    # Commom install -D doen't work
    cp -r "${srcdir}/${_reponame}/build/$pkgname/"* "${pkgdir}${destdir}"

}
