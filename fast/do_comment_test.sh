source "$rvm_path/scripts/rvm"
: do
rvm 9.9.9 do rvm gemdir # status=1; match=/is not installed/
rvm 1.8.7 do rvm gemdir # status=0; match=/1.8.7/
