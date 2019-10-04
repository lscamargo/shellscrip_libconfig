# shellscrip_libconfig
shell lib to read and write to a config file

% cfg_write test.conf mykey myvalue
% cfg_read test.conf mykey
myvalue
% cfg_delete test.conf mykey
% cfg_haskey test.conf mykey || echo "It's not here anymore"
It's not here anymore

Script posted as an answer to
https://unix.stackexchange.com/questions/175648/use-config-file-for-my-shell-script
Thanks to 
https://unix.stackexchange.com/users/212926/therealfarfetchd
