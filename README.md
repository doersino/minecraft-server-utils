# minecraft-server-utils

A few utility scripts I wrote that

1. start a [vanilla Minecraft server](https://minecraft.net/en/download/server) on system boot,
2. keep an up-to-date incremental backup of the world and server files,
3. as well as daily snapshots for the history books,
4. and optionally purge old snapshots whenever disk space runs low.

*In principle, these scripts should work on any *nix system (e.g. macOS or any Linux distribution). However, I have only tested them on a ridiculously old (but still almost fast enough to host a Minecraft server for two people) laptop running Ubuntu 14.04.4 LTS.*

## Setup

1. Make sure that `bash`, `cron` and `rsync` (among others) are installed on your system (if you're not sure, you likely have them). Then install `screen`:

    ```bash
    apt-get install screen
    ```

2. Now, **modify** the included file `.mcsurc` according to the **instructions in the file** and copy it to your home directory:

    ```bash
    # first modify .mcsurc, then:
    cp .mcsurc ~
    ```

3. Finally, set up your crontab: Run `crontab -e` and paste the contents of `crontab.txt` at the end of the buffer. If you don't want to purge old snapshots, comment-out the corresponding line.

After completing these steps, reboot. Once your system is up again, the Minecraft server should be up and running (you can manage it by attaching to the screen session "mcs": `screen -r mcs`) and backups should be performed regularly (check this by looking at the target directory you've configured in step 2, or if it's still empty after a while, inspect the log files).
