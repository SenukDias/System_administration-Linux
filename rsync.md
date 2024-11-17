---------------------------------------------------------------------------

# Archive Run (This command send files to destination and shows what files copied <b>This command will copy files</b>) 📂

rsync -av source/location username@192.168.destination.ip:/path/of/destination 

rsync -av nibm/ root@192.168.125.130:/tmp/rsync_send

---------------------------------------------------------------------------

# Dry Run (This only shows what files are gonna be copy when you run -av command <b>This command won't copy files</b>) 📝

rsync -avn source/location root@192.168.destination.ip:/path/of/

rsync -avn nibm/ root@192.168.125.130:/tmp/rsync_send

---------------------------------------------------------------------------

# --remove-source-files use to Send files to the Backup location and remove all those sent Files from Source Location 🗑️

rsync -av --remove-source-files source/location root@192.168.destination.ip:/path/of/

rsync -av --remove-source-files ../nibm/ root@192.168.125.130:/tmp/rsync_send

---------------------------------------------------------------------------

# Send Files excluding some Files and Folders to Remote location 🚫

rsync -av --exclude={'filemame1','Orfoldername1','.extension'} source/location root@192.168.destination.ip:/path/of/

rsync -av --exclude={'new16','new17','.txt'} ../nibm root@192.168.125.130:/tmp/rsync_send

![Rsync](https://media.giphy.com/media/3oEjI6SIIHBdRxXI40/giphy.gif)
