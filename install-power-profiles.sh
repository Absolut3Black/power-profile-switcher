#!/usr/bin/env bash
set -euo pipefail

install_dir="${HOME}/.local/bin"
mkdir -p "$install_dir"

cat > "$install_dir/powersave" <<'SCRIPT'
#!/usr/bin/env bash
set -euo pipefail
powerprofilesctl set power-saver
printf 'Power profile: %s\n' "$(powerprofilesctl get)"
SCRIPT

cat > "$install_dir/balance" <<'SCRIPT'
#!/usr/bin/env bash
set -euo pipefail
powerprofilesctl set balanced
printf 'Power profile: %s\n' "$(powerprofilesctl get)"
SCRIPT

cat > "$install_dir/performance" <<'SCRIPT'
#!/usr/bin/env bash
set -euo pipefail
powerprofilesctl set performance
printf 'Power profile: %s\n' "$(powerprofilesctl get)"
SCRIPT

chmod +x "$install_dir/powersave" "$install_dir/balance" "$install_dir/performance"
printf 'Installed power-profile commands in %s\n' "$install_dir"
