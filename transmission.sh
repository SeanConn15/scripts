# shows status of seeded torrents

terminalwidth=$(stty size | awk '{print $2}')
# get torrent list | use awk to get nice ouput | cut to terminal size
transmission-remote -l | awk '{printf "%5s %5s %5s ", $6, $7, $8; for (i=10; i<NF; i++) printf $i " "; if (NF >= 4) print $NF;}' | sed "s/\(.\{$terminalwidth\}\).*/\1/"
