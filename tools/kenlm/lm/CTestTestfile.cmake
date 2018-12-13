# CMake generated Testfile for 
# Source directory: /home/jeremie/dev/kenlm/lm
# Build directory: /home/jeremie/dev/kenlm/build/lm
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(left_test "/home/jeremie/dev/kenlm/build/tests/left_test" "/home/jeremie/dev/kenlm/lm/test.arpa")
add_test(partial_test "/home/jeremie/dev/kenlm/build/tests/partial_test" "/home/jeremie/dev/kenlm/lm/test.arpa")
add_test(model_test "/home/jeremie/dev/kenlm/build/tests/model_test" "/home/jeremie/dev/kenlm/lm/test.arpa" "/home/jeremie/dev/kenlm/lm/test_nounk.arpa")
subdirs(common)
subdirs(builder)
subdirs(filter)
subdirs(interpolate)
