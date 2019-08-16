## --- configuration ---
export ECLIPSE_SOURCE_PATH="http://ftp.fau.de/eclipse/technology/epp/downloads/release/2019-09/M2/eclipse-jee-2019-09-M2-linux-gtk-x86_64.tar.gz"
export ECLIPSE_STORE_DIR=/vagrant_setup/data
export ECLIPSE_ARCH_NAME=eclipse_jee.tar.gz

## --- install ---

echo "Installing eclipse from: $ECLIPSE_SOURCE_PATH"

cd ${ECLIPSE_STORE_DIR}

if [ ! -f ${ECLIPSE_STORE_DIR}/$ECLIPSE_ARCH_NAME ]; then
  echo "Downloading eclipse from: $ECLIPSE_SOURCE_PATH"
  wget -O $ECLIPSE_ARCH_NAME ${ECLIPSE_SOURCE_PATH}
else 
  echo "Setup file already downloaded, processing..."
fi   
  
if [ ! -d /opt/eclipse ]; then
  
## create and go to a temporary temp dir
    cd $(mktemp -d)  

    cp ${ECLIPSE_STORE_DIR}/$ECLIPSE_ARCH_NAME ./

    tar xf $ECLIPSE_ARCH_NAME

## Finally move the file you need to the desired location:
    sudo mv eclipse /opt/

    [ $? -eq 0 ] || { echo "failure at step 1 - creation of /opt/eclipse failed!"; exit 1; }
else 
    echo "Setup package already in /opt, processing..."
fi

eclipse_command='
#!/bin/sh
export ECLIPSE_HOME="/opt/eclipse"

$ECLIPSE_HOME/eclipse $*'

if [ ! -f /usr/bin/eclipse ]; then

    echo -e "$eclipse_command" | sudo tee /usr/bin/eclipse
    sudo chmod 755 /usr/bin/eclipse

    [ $? -eq 0 ] || { echo "failure at step 2 - creation of eclipse command file failed!"; exit 1; }
else 
    echo "Command file already exists in /usr/bin, processing..."
fi

## Setup desktop icon
eclipse_desktop="[Desktop Entry]
Encoding=UTF-8
Name=Eclipse
Comment=Eclipse JEE 
Exec=eclipse
Icon=/opt/eclipse/icon.xpm
Terminal=false
Type=Application
Categories=GNOME;Application;Development;
StartupNotify=true"

if [ ! -f /usr/share/applications/eclipse.desktop ]; then

    echo -e "$eclipse_desktop" | sudo tee /usr/share/applications/eclipse.desktop

    [ $? -eq 0 ] || { echo "failure at step 3 - creation of desktop file failed!"; exit 1; }
else 
    echo "Desktop shortcut already exists..."
fi

find /opt/eclipse -type d -perm 700 -print -exec chmod 755 {} \;
find /opt/eclipse -type f -perm 700 -exec chmod 755 {} \;

if [ ! -f /usr/bin/eclipse ]; then
  echo "Something went wrong - Eclipse installation failed!"; exit 1;
else 
  echo "Eclipse installed"
fi

