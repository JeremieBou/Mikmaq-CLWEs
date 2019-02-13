# CMake generated Testfile for 
# Source directory: /home/jeremie/dev/kenlm2/kenlm/lm/interpolate
# Build directory: /home/jeremie/dev/kenlm2/kenlm/build/lm/interpolate
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(backoff_reunification_test "/home/jeremie/dev/kenlm2/kenlm/build/tests/backoff_reunification_test")
add_test(bounded_sequence_encoding_test "/home/jeremie/dev/kenlm2/kenlm/build/tests/bounded_sequence_encoding_test")
add_test(normalize_test "/home/jeremie/dev/kenlm2/kenlm/build/tests/normalize_test")
add_test(tune_derivatives_test "/home/jeremie/dev/kenlm2/kenlm/build/tests/tune_derivatives_test")
add_test(tune_instances_test "/home/jeremie/dev/kenlm2/kenlm/build/tests/tune_instances_test" "--" "/home/jeremie/dev/kenlm2/kenlm/lm/interpolate/../common/test_data/toy0.1")
add_test(merge_vocab_test "/home/jeremie/dev/kenlm2/kenlm/build/tests/merge_vocab_test" "/home/jeremie/dev/kenlm2/kenlm/lm/interpolate/merge_test/test1" "/home/jeremie/dev/kenlm2/kenlm/lm/interpolate/merge_test/test2" "/home/jeremie/dev/kenlm2/kenlm/lm/interpolate/merge_test/test3" "/home/jeremie/dev/kenlm2/kenlm/lm/interpolate/merge_test/test_bad_order" "/home/jeremie/dev/kenlm2/kenlm/lm/interpolate/merge_test/test_no_unk")
