# exampleACEScript - 27/02/2016

## Notes
# - ensure that .ace...
#   - is located on usr/local/bin;
#   -

# 1. compile grammars (doesn't take long at all)
# # mock code: files dont' exist yet
./ace -G mini-sclera.dat -g mini-sclera/ace/config.tdl;
./ace -G mini-dutch.dat -g mini-dutch/ace/config.tdl;


# idea (prior to #2): add possibility of specifying parse input in STDIN.

# echo "Please provide the path to the file containing the sequence of pictogram tokens that you would like to parse below:";
#
# read parsethis;
#
# # 2. (as a test) parse input & generate from MRS
# ace -g mini-sclera.dat -T parsethis | ace -g mini-dutch.dat -e;
