# 🌌 Aesthetic Arch Linux & Hyprland Dotfiles

Welcome to my personal dotfiles repository! This setup is designed for **Arch Linux** using **Hyprland** as the Wayland compositor, featuring a beautiful glassmorphism aesthetic, fast terminal workflows, and the highly customizable **Caelestia** shell UI.

## 💻 System Architecture

*   **OS:** Arch Linux
*   **Compositor / Window Manager:** Hyprland (Wayland)
*   **Desktop Shell / UI:** Caelestia (powered by Quickshell)
*   **Terminal Emulator:** Kitty
*   **Interactive Shell:** Fish
*   **Shell Prompt:** Starship
*   **System Monitor:** Btop
*   **Status Bar:** Waybar (Alternative/Fallback)

---

## 🚀 User Manual & Installation Guide

### 1. Prerequisites
Before applying these configurations, ensure you have a working installation of Arch Linux with Hyprland and an AUR helper (like `yay` or `paru`). 

Install the required core packages:
```bash
sudo pacman -S hyprland kitty fish starship btop waybar git unzip
yay -S caelestia-shell quickshell
```
