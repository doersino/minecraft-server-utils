# minecraft-server-utils

A few utility scripts I wrote that

1. start a [vanilla Minecraft server](https://minecraft.net/en/download/server) on system boot,
2. keep an up-to-date backup of the world,
3. as well as daily snapshots for the history books.

*In principle, these scripts should work on any *nix system (e.g. macOS or any Linux distribution). However, I have only tested them on a ridiculously old (but still almost fast enough to host a Minecraft server for two people) laptop running Ubuntu 14.04.4 LTS.*

## Setup

Make sure that `bash` and `cron` are installed on your system (if you're not sure, you likely have them). Then install `screen`:

```bash
brew install screen     # macOS
apt-get install screen  # Debian, Ubuntu etc.
```

Now, modify the included file `.mcurc` according to the instructions in the file and copy it to your home directory:

```bash
cp .mcurc ~
```

Finally, set up your crontab: Run `crontab -e` and paste the following lines at the end of the buffer:

```
TODO
```

After completing these steps, TODO
