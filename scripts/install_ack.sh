#!/bin/bash
CHECKSUM=535bc3ef31f95a666c0e91a8185ac9c63dc4a344;
curl https://beyondgrep.com/ack-2.22-single-file > ~/bin/ack;
cd ~/bin;
if echo "$CHECKSUM  ack" | shasum -c -; then
    chmod 0755 ack;
else 
    rm -f ack;
    echo "The downloaded file is invalid!";
    exit 1;
fi

