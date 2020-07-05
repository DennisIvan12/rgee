#!/bin/sh

# Decrypt the file
mkdir -p $HOME/.config/earthengine/ndef/

# --batch to prevent interactive command --yes to assume "yes" for questions
gpg --quiet --batch --yes --decrypt --passphrase="$RGEE_SECRET_PASSPHRASE" \
--output $HOME/.config/earthengine/ndef/GCS_AUTH_FILE.json \
./tests/credentials/GCS_AUTH_FILE.json.gpg

gpg --quiet --batch --yes --decrypt --passphrase="$RGEE_SECRET_PASSPHRASE" \
--output $HOME/.config/earthengine/ndef/cd26ed5dc626f11802a652e81d02762e_data.colec.fbf@gmail.com ./tests/credentials/cd26ed5dc626f11802a652e81d02762e_data.colec.fbf@gmail.com.gpg

gpg --quiet --batch --yes --decrypt --passphrase="$RGEE_SECRET_PASSPHRASE" \
--output $HOME/.config/earthengine/ndef/credentials ./tests/credentials/credentials.gpg