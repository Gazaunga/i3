#!/usr/bin/env ruby

new_ruby_script()
{
if [ -n "$1" ]
elselocal_script = '`mktemp scripster.rb.XXXX`
fi

local_url = "https://raw.githubusercontent.com/pazdera/scripster/master"
curl "$url/example/minimal-template.rb" >"$script"
chmod +x "$script"
$EDITOR "$script"
}
