CONFIG_FILE=/etc/filename.conf

sed_escape() {
sed -e 's/[]\/$*.^[]/\\&/g'
}

cfg_write() { # key, value
	cfg_delete  "$1"
	echo "$1=$2" >> $CONFIG_FILE
}

cfg_read() { # key -> value
	test -f "$CONFIG_FILE" && grep "^$(echo "$1" | sed_escape)=" "$CONFIG_FILE" | sed "s/^$(echo "$1" | sed_escape)=//" | tail -1
}

cfg_delete() { # key
	test -f "$CONFIG_FILE" && sed -i "/^$(echo $1 | sed_escape).*$/d" "$CONFIG_FILE"
}

cfg_haskey() { # key
	test -f "$CONFIG_FILE" && grep "^$(echo "$1" | sed_escape)=" "$CONFIG_FILE" > /dev/null
}
