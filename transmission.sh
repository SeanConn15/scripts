# shows status of seeded torrents

terminalwidth=$(stty size | awk '{print $2}')
# get torrent list | use awk to get nice ouput | cut to terminal size
transmission-remote -l | sed "s/\(.\{$terminalwidth\}\).*/\1/"
