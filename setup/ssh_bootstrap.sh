#!/usr/bin/env bash
set -euo pipefail

REPO="Darkstar085/ssh-keys"
WORK_DIR="$(mktemp -d)"
trap 'rm -rf "$WORK_DIR"' EXIT

log() {
    printf '\033[1;36m==>\033[0m %s\n' "$1"
}

die() {
    printf '\033[1;31mERROR:\033[0m %s\n' "$1" >&2
    exit 1
}

install_termux_deps() {
    if ! command -v pkg >/dev/null 2>&1; then
        return
    fi

    local packages=()

    command -v git >/dev/null 2>&1 || packages+=(git)
    command -v ssh >/dev/null 2>&1 || packages+=(openssh)
    command -v gh >/dev/null 2>&1 || packages+=(gh)

    if [ "${#packages[@]}" -gt 0 ]; then
        log "Installing bootstrap dependencies..."
        pkg update -y
        pkg install -y "${packages[@]}"
    fi
}

ensure_dependencies() {
    if [ -n "${TERMUX_VERSION:-}" ] || [ "${PREFIX:-}" = "/data/data/com.termux/files/usr" ]; then
        install_termux_deps
    fi

    command -v git >/dev/null 2>&1 || die "git is required."
    command -v gh >/dev/null 2>&1 || die "GitHub CLI (gh) is required. Install it and run this bootstrap again."
}

authenticate_github() {
    log "Checking GitHub authentication..."

    if gh auth status --hostname github.com >/dev/null 2>&1; then
        log "GitHub authentication is already available."
    else
        log "Starting GitHub authentication..."
        gh auth login --hostname github.com --git-protocol https --web
    fi

    gh auth status --hostname github.com >/dev/null 2>&1 || die "GitHub authentication was not completed."
    gh auth setup-git
}

install_ssh_setup() {
    log "Cloning private SSH setup..."
    git clone --depth 1 "https://github.com/${REPO}.git" "$WORK_DIR/ssh-keys"

    [ -f "$WORK_DIR/ssh-keys/setup.sh" ] || die "setup.sh was not found in the private SSH repository."

    log "Installing SSH keys and configuration..."
    bash "$WORK_DIR/ssh-keys/setup.sh"
}

main() {
    log "Darkstar SSH bootstrap started"
    ensure_dependencies
    authenticate_github
    install_ssh_setup

    printf '\n\033[1;32mSSH bootstrap complete.\033[0m\n'
    printf 'Future GitHub Git operations can use SSH authentication.\n'
}

main "$@"
