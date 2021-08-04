# shows status of seeded torrents

terminalwidth=$(stty size | awk '{print $2}')
# get torrent list, replace whitespace with tabs, get columns, get spaces back, cut to terminal width
transmission-remote -l | sed 's/\s\s\+/\t/g' | cut -f6,7,8,10 | sed 's/\t/  /g' | sed "s/\(.\{$terminalwidth\}\).*/\1/"
