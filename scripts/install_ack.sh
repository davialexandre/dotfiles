#!/bin/bash
CHECKSUM=49c43603420521e18659ce3c50778a4894dd4a5f;
curl http://beyondgrep.com/ack-2.14-single-file > ~/bin/ack;
cd ~/bin;
if echo "$CHECKSUM  ack" | shasum -c -; then
    chmod 0755 ack;
else 
    rm -f ack;
    echo "O arquivo baixado é inválido!";
    exit 1;
fi

