# install Apache Derby bin

## --- configuration ---
export DERBY_SOURCE_PATH="http://ftp.ps.pl/pub/apache/db/derby/db-derby-10.15.1.3/db-derby-10.15.1.3-bin.tar.gz"
export DERBY_STORE_DIR=/vagrant_setup/data
export DERBY_ARCH_NAME=derby.tar.gz

## --- install ---

echo "Installing Derby from: $DERBY_SOURCE_PATH"

cd ${DERBY_STORE_DIR}

if [ ! -f ${DERBY_STORE_DIR}/$DERBY_ARCH_NAME ]; then
  echo "Downloading Derby from: $DERBY_SOURCE_PATH"
  wget -O $DERBY_ARCH_NAME ${DERBY_SOURCE_PATH}
else 
  echo "Setup file already downloaded, processing..."
fi   
  
if [ ! -d /usr/share/derby ]; then
  
    mkdir -p /usr/share/derby
    
## create and go to a temporary temp dir
    cd $(mktemp -d)  

    cp ${DERBY_STORE_DIR}/$DERBY_ARCH_NAME ./

    tar xf $DERBY_ARCH_NAME

## Finally move the file you need to the desired location:
    
    sudo mv -v ./db-derby*/* /usr/share/derby
    
    find /usr/share/derby -type d -perm 700 -print -exec chmod 755 {} \;
    find /usr/share/derby -type f -perm 700 -exec chmod 755 {} \;

else 
    echo "Setup package already in /usr/share/derby..."
fi

echo "Derby installed"
echo ""
echo "To setup Derby in Eclipse:"
echo "  Add derby.jar, derbytools.jar as user external library to project or to IDE"
echo "  See Project\Properties\Java Build Path\Libraries\Add Library\User library"
echo ""
