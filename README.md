# SDPG
Secure Diceware Passphrase Generator

This is a passphrase generator that you can run in a javascript-enabled web browser.  Choose the number of words for your passphrase and click the Start button, then move the mouse inside the square to generate a random sequence of bytes.  These bytes will be hashed and combined with a hash of system-generated random bytes, which is then hashed a random number of times and used to generate a dice roll set.

It is recommended that you download and save SDPG.html and run it on an offline computer to generate passphrases.  The output can be easily verified using the included bash script that uses openssl to perform the same hash iterations.