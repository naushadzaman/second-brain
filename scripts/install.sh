#!/bin/bash
# Second Brain in a Box - Executive Edition
# One-shot installation script

set -e

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}Second Brain in a Box - Installation${NC}"
echo "======================================"
echo ""

# Default location
INSTALL_DIR="${1:-$HOME/Documents/second-brain}"

echo -e "Installing to: ${GREEN}$INSTALL_DIR${NC}"
echo ""

# Check if directory exists
if [ -d "$INSTALL_DIR" ]; then
    echo "Directory already exists. Backing up to $INSTALL_DIR.backup"
    mv "$INSTALL_DIR" "$INSTALL_DIR.backup.$(date +%Y%m%d%H%M%S)"
fi

# Get script directory
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"

# Copy vault template
echo "1. Creating vault structure..."
cp -r "$PROJECT_DIR/vault-template" "$INSTALL_DIR"
echo -e "   ${GREEN}✓${NC} Vault created"

# Install skills
echo "2. Installing skills..."
mkdir -p ~/.claude/skills
cp -r "$PROJECT_DIR/skills"/* ~/.claude/skills/
echo -e "   ${GREEN}✓${NC} Skills installed to ~/.claude/skills/"

# Install automation scripts
echo "3. Installing automation scripts..."
mkdir -p ~/.local/bin ~/.local/share/second-brain
cp "$PROJECT_DIR/scripts/digest-inbox" ~/.local/bin/
cp "$PROJECT_DIR/scripts/digest-watcher" ~/.local/bin/
chmod +x ~/.local/bin/digest-inbox ~/.local/bin/digest-watcher

# Update scripts with correct vault path
sed -i.bak "s|\$HOME/Documents/second-brain|$INSTALL_DIR|g" ~/.local/bin/digest-inbox
sed -i.bak "s|\$HOME/Documents/second-brain|$INSTALL_DIR|g" ~/.local/bin/digest-watcher
rm -f ~/.local/bin/*.bak
echo -e "   ${GREEN}✓${NC} Automation scripts installed"

# Set permissions
echo "4. Setting permissions..."
chmod -R 755 "$INSTALL_DIR"
echo -e "   ${GREEN}✓${NC} Permissions set"

echo ""
echo -e "${GREEN}Installation complete!${NC}"
echo ""
echo "Next steps:"
echo "  1. Open Obsidian"
echo "  2. Click 'Open folder as vault'"
echo "  3. Select: $INSTALL_DIR"
echo "  4. Install Dataview plugin (Settings → Community plugins)"
echo "  5. Restart Claude Code to load skills"
echo ""
echo "Quick commands:"
echo "  cd $INSTALL_DIR"
echo "  claude \"/digest\"     # Process inbox"
echo "  claude \"/review\"     # Weekly review"
echo "  claude \"/ideas\"      # Generate ideas"
echo "  claude \"/patterns\"   # Find patterns"
echo ""
echo -e "${YELLOW}Optional: Enable automatic inbox processing${NC}"
echo ""
echo "  # Start the watcher (runs in background)"
echo "  ~/.local/bin/digest-watcher &"
echo ""
echo "  # Or add to crontab for auto-start on reboot:"
echo "  (crontab -l 2>/dev/null; echo '@reboot ~/.local/bin/digest-watcher') | crontab -"
echo "  (crontab -l 2>/dev/null; echo '*/5 * * * * pgrep -f digest-watcher > /dev/null || ~/.local/bin/digest-watcher') | crontab -"
echo ""
echo "Happy thinking!"
