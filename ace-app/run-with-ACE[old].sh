# exampleACEScript - 27/02/2016

## Preliminaries:
# 1. optional: place ace on usr/local/bin
# 2. will work on OSX and GNU/Linux

# Detect OS using something like...

    # if [[ "$OSTYPE" == "linux-gnu" ]]; then
        # ...
    # elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX

# then = select appropriate ACE binary.

# 1. compile grammars as ACE images
./ace -G mini-sclera.dat -g mini-sclera/ace/config.tdl;
./ace -G mini-dutch.dat -g mini-dutch/ace/config.tdl;
./ace -G transfer-nl.dat -g transfer-nl/ace/config.tdl;

# idea (prior to #2): add possibility of specifying parse input in STDIN.

# echo "Please provide the path to the file containing the sequence of pictogram tokens that you would like to parse below:";
#
# read parsethis;


# # 2. (as a test) parse input & generate from MRS
# ace -g mini-sclera.dat -T parsethis | ace -g mini-dutch.dat -e >> system-io/out.txt


### SCRATCH (ignore)

## 1. (works)
# echo "meisje slaap" | ./ace -g mini-sclera.dat -T | ./ace -g mini-dutch.dat -e;
