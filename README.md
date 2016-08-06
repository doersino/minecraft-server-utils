# minecraft-server-utils

A few utility scripts I wrote that

1. start a [vanilla Minecraft server](https://minecraft.net/en/download/server) on system boot,
2. keep an up-to-date incremental backup of the world and server files,
3. as well as daily snapshots for the history books,
4. and optionally purge old snapshots whenever disk space runs low.

*In principle, these scripts should work on any *nix system (e.g. macOS or any Linux distribution). However, I have only tested them on a ridiculously old (but still almost fast enough to host a Minecraft server for two people) laptop running Ubuntu 14.04.4 LTS.*

## Setup

TODO minecraft server files incl world must all be in one folder

1. Make sure that `bash` and `cron` are installed on your system (if you're not sure, you likely have them). Then install `screen`:

    ```bash
    brew install screen     # macOS
    apt-get install screen  # Debian, Ubuntu etc.
    ```

2. Now, **modify** the included file `.mcurc` according to the **instructions in the file** and copy it to your home directory:

    ```bash
    cp .mcurc ~
    ```

3. Finally, set up your crontab: Run `crontab -e` and paste the following lines (also available in `crontab.txt`) at the end of the buffer:

    ```
    TODO
    ```

After completing these steps, TODO what will happen?
