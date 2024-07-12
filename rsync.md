



---------------------------------------------------------------------------

# Archive Run (This command send files to destination and shows what files copied <b>This command will copy files</b>)

rsync -av source/location <username>@192.168.destination.ip:/path/of/destination
#rsync -av nibm/ root@192.168.125.130:/tmp/rsync_send

---------------------------------------------------------------------------

# Dry Run (This only shows what files are gonna be copy when you run -av command <b>This command won't copy files</b>)

rsync -avn source/location root@192.168.destination.ip:/path/of/
rsync -avn nibm/ root@192.168.125.130:/tmp/rsync_send

---------------------------------------------------------------------------

# --remove-source-files use to Send files to the Backup location and remove those sent Files from Source Location 



















