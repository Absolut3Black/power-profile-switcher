# Power Profile Switcher

A small installer that creates three commands for switching the power profile
on Linux systems managed by `power-profiles-daemon`:

| Command | Power profile |
| --- | --- |
| `powersave` | `power-saver` |
| `balance` | `balanced` |
| `performance` | `performance` |

Each command activates its profile with `powerprofilesctl` and prints the
active profile. The installer places the commands in `~/.local/bin`; it does
not require `sudo`.

## Requirements

- Bash
- `power-profiles-daemon`, including the `powerprofilesctl` command
- `~/.local/bin` on your `PATH`

## Install

Clone this repository, then run the installer:

```bash
git clone https://github.com/Absolut3Black/power-profile-switcher.git
cd power-profile-switcher
./install-power-profiles.sh
```

## Use

Run any of these commands in a terminal:

```bash
powersave
balance
performance
```

The power profile must be supported by the system's power profile daemon.
