# Neovim Configuration

My personal Neovim configuration optimized for **Go development** and my daily workflow. While it supports multiple languages,
it's specifically tailored for Go developers and may not suit everyone's needs (or preferences).

## ✨ Features

- **🔍 Fuzzy Finding**: Telescope integration for file navigation and content search
- **🌳 File Explorer**: nvim-tree with git integration and intuitive navigation
- **🧠 LSP Support**: Full Language Server Protocol support for 8+ languages
- **⚡ Auto-completion**: Intelligent code completion with nvim-cmp
- **🎨 Syntax Highlighting**: Tree-sitter powered syntax highlighting
- **🔧 Auto-formatting**: Format on save with language-specific formatters
- **📊 Git Integration**: Real-time git status and hunk navigation with gitsigns
- **🎯 Modern Keybindings**: Intuitive key mappings with GUI-like behavior

## 📋 Requirements

- **Neovim** 0.11.x
- **Git** (for plugin management)
- **Node.js** (for LSP servers)
- **Ripgrep** (for Telescope live grep)
- A **Nerd Font** (for icons)

## 🚀 Installation

1. **Backup existing config** (if any):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

2. **Install Lazy.nvim plugin manager**:
   ```bash
   git clone --filter=blob:none --branch=stable https://github.com/folke/lazy.nvim.git ~/.local/share/nvim/lazy/lazy.nvim
   ```

3. **Clone this configuration**:
   ```bash
   git clone https://github.com/ahmedkamalio/nvim ~/.config/nvim
   ```

4. **Start Neovim**:
   ```bash
   nvim
   ```

   Lazy.nvim will automatically install all plugins on first run.

5. **Install language servers** (optional):
   - Open Neovim and run `:Mason` to install additional LSP servers
   - Or let them install automatically when opening supported file types

## 🎮 Key Bindings Reference

## Leader Keys
- **Leader**: `<Space>`
- **Local Leader**: `\`

## File Navigation & Search (Telescope)

| Key | Action | Description |
|-----|--------|-------------|
| `<leader>fa` | Find All Files | Search through all files in project |
| `<leader>ff` | Find Git Files | Search through git-tracked files only |
| `<leader>fg` | Live Grep | Search text content across files |
| `<leader>fb` | Buffers | Switch between open buffers |
| `<leader>fh` | Help Tags | Search Neovim help documentation |

## General Navigation & Editing

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>pv` | Normal | File Explorer | Open Neovim's built-in file explorer |
| `<leader>e` | Normal | Toggle nvim-tree | Toggle nvim-tree file explorer |
| `<leader>ef` | Normal | Find in nvim-tree | Find current file in nvim-tree |
| `<Home>` / `fn+←` | All | Start of Line | Go to beginning of line |
| `<End>` / `fn+→` | All | End of Line | Go to true end of line (after last character) |
| `<C-d>` | Normal | Half Page Down | Move down and center cursor |
| `<C-u>` | Normal | Half Page Up | Move up and center cursor |
| `n` | Normal | Next Search | Next search result and center |
| `N` | Normal | Previous Search | Previous search result and center |
| `<Esc>` | Normal | Clear Highlights | Clear search highlights |

## Text Manipulation

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `J` | Visual | Move Lines Down | Move selected lines down |
| `K` | Visual | Move Lines Up | Move selected lines up |
| `<leader>p` | Visual | Smart Paste | Paste without losing register |
| `p` | Normal | Paste Before | Paste before cursor (GUI-style, cursor after pasted text) |
| `P` | Normal | Paste After | Paste after cursor |
| `<leader>y` | Normal/Visual | Copy to Clipboard | Copy to system clipboard |
| `<leader>Y` | Normal | Copy Line to Clipboard | Copy current line to system clipboard |
| `<leader>d` | Normal/Visual | Delete (No Copy) | Delete without copying to register |
| `<leader>s` | Normal | Replace Word | Replace word under cursor globally |
| `<` | Visual | Indent Left | Indent left and reselect |
| `>` | Visual | Indent Right | Indent right and reselect |

## Buffer Management

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>bn` | Normal | Next Buffer | Switch to next buffer |
| `<leader>bp` | Normal | Previous Buffer | Switch to previous buffer |
| `<leader>bd` | Normal | Delete Buffer | Close current buffer |

## Window Management

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>h` | Normal | Move Left | Move to left window |
| `<leader>l` | Normal | Move Right | Move to right window |
| `<leader>j` | Normal | Move Down | Move to window below |
| `<leader>k` | Normal | Move Up | Move to window above |
| `<C-Up>` | Normal | Resize Up | Increase window height |
| `<C-Down>` | Normal | Resize Down | Decrease window height |
| `<C-Left>` | Normal | Resize Left | Decrease window width |
| `<C-Right>` | Normal | Resize Right | Increase window width |

## Quick Fix & Location Lists

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<C-k>` | Normal | Next Quickfix | Next quickfix item |
| `<C-j>` | Normal | Previous Quickfix | Previous quickfix item |
| `<leader>ln` | Normal | Next Location | Next location list item |
| `<leader>lp` | Normal | Previous Location | Previous location list item |

## Utility

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>x` | Normal | Make Executable | Make current file executable |
| `Q` | Normal | Disabled | Disabled to prevent accidental Ex mode |

## Treesitter Features

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<C-space>` | Normal | Start Selection | Begin incremental selection |
| `<C-space>` | Visual | Expand Selection | Expand selection to next syntax node |
| `<bs>` | Visual | Shrink Selection | Shrink selection to previous syntax node |

## Code Completion (nvim-cmp)

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<Tab>` | Insert | Next Item | Navigate to next completion item |
| `<S-Tab>` | Insert | Previous Item | Navigate to previous completion item |
| `<CR>` | Insert | Confirm | Accept selected completion |
| `<C-Space>` | Insert | Complete | Manually trigger completion |
| `<C-e>` | Insert | Abort | Close completion menu |
| `<C-b>` | Insert | Scroll Up | Scroll documentation up |
| `<C-f>` | Insert | Scroll Down | Scroll documentation down |

## LSP (Language Server Protocol)

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `gd` | Normal | Go to Definition | Jump to symbol definition |
| `gi` | Normal | Go to Implementation | Jump to symbol implementation |
| `gr` | Normal | References | Find all references to symbol |
| `K` | Normal | Hover | Show documentation for symbol under cursor |
| `<C-k>` | Normal | Signature Help | Show function signature |
| `<space>rn` | Normal | Rename | Rename symbol across project |
| `<space>ca` | Normal | Code Action | Show available code actions |

## Code Formatting

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>f` | Normal/Visual | Format | Format current buffer or selection |

## Auto-formatting
- **Format on Save**: Enabled (500ms timeout)
- **Supported Languages**: Lua (stylua), Python (isort, black), JavaScript/TypeScript (prettier), Go (gofmt)

## Language Server Protocol (LSP) Support

### Configured Language Servers
- **Go** (gopls): Primary focus - import completion, placeholders, unused parameter detection
- **Lua** (lua_ls): Neovim configuration development
- **TypeScript/JavaScript** (ts_server): Full TypeScript and JavaScript support
- **Python** (pyright): Type checking and intelligent code completion
- **Rust** (rust-analyzer): Advanced Rust development with Cargo integration
- **C/C++** (clangd): Cross-platform C/C++ language server
- **JSON** (jsonls): JSON schema validation and completion
- **YAML** (yamlls): YAML syntax and schema support

## Go-Focused Features
This configuration is heavily optimized for Go development:
- **vim-go integration**: Advanced Go tooling and commands
- **gopls optimization**: Tuned for Go module development
- **Go-specific keybindings**: Workflow optimized for Go projects

## Default Vim Motions (Essential)

### Movement
| Key | Action |
|-----|--------|
| `h/j/k/l` | Left/Down/Up/Right |
| `w/b` | Next/Previous word |
| `0/$` | Beginning/End of line |
| `gg/G` | Top/Bottom of file |
| `{/}` | Previous/Next paragraph |

### Editing
| Key | Action |
|-----|--------|
| `i/a` | Insert before/after cursor |
| `I/A` | Insert at beginning/end of line |
| `o/O` | Open line below/above |
| `x/X` | Delete character after/before cursor |
| `dd` | Delete line |
| `yy` | Yank (copy) line |
| `p/P` | Paste after/before cursor |
| `u` | Undo |
| `<C-r>` | Redo |

### Visual Mode
| Key | Action |
|-----|--------|
| `v` | Character-wise visual |
| `V` | Line-wise visual |
| `<C-v>` | Block-wise visual |

### Search & Replace
| Key | Action |
|-----|--------|
| `/` | Search forward |
| `?` | Search backward |
| `n/N` | Next/Previous search result |
| `:%s/old/new/g` | Replace all instances |

### Buffers & Windows
| Key | Action |
|-----|--------|
| `:e filename` | Edit file |
| `:w` | Save |
| `:q` | Quit |
| `:wq` | Save and quit |
| `<C-w>s` | Split horizontally |
| `<C-w>v` | Split vertically |
| `<C-w>w` | Switch windows |

## nvim-tree Navigation

### Switching between tree and editor:
- Use `<leader>h` and `<leader>l` to move between nvim-tree and editor windows
- Or click with mouse to focus different windows

### Within nvim-tree window:
| Key | Action |
|-----|--------|
| `Enter` / `o` | Open file or expand/collapse directory |
| `a` | Create new file or directory |
| `d` | Delete file or directory |
| `r` | Rename file or directory |
| `c` | Copy file or directory |
| `x` | Cut file or directory |
| `p` | Paste file or directory |
| `y` | Copy name to clipboard |
| `Y` | Copy relative path to clipboard |
| `gy` | Copy absolute path to clipboard |
| `R` | Refresh tree |
| `H` | Toggle hidden files |
| `q` | Close nvim-tree |

## Git Integration (Gitsigns)

### Git Status Indicators (in sign column):
- `│` - Added lines (green)
- `│` - Modified lines (blue)
- `_` - Deleted lines (red)
- `~` - Changed+deleted lines
- `┆` - Untracked lines

### Git Navigation & Actions:
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `]c` | Normal | Next Hunk | Jump to next git change |
| `[c` | Normal | Previous Hunk | Jump to previous git change |
| `<leader>hs` | Normal/Visual | Stage Hunk | Stage current hunk or selection |
| `<leader>hr` | Normal/Visual | Reset Hunk | Reset current hunk or selection |
| `<leader>hS` | Normal | Stage Buffer | Stage entire file |
| `<leader>hR` | Normal | Reset Buffer | Reset entire file |
| `<leader>hu` | Normal | Undo Stage | Undo last stage operation |
| `<leader>hp` | Normal | Preview Hunk | Preview hunk changes |
| `<leader>hb` | Normal | Blame Line | Show git blame for current line |
| `<leader>tb` | Normal | Toggle Blame | Toggle inline git blame |
| `<leader>hd` | Normal | Diff This | Show diff for current file |
| `ih` | Visual/Operator | Select Hunk | Text object for git hunk |

## 🔌 Plugin Ecosystem

This configuration uses [Lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management and includes:

### Core Plugins
- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** - Fuzzy finder and picker
- **[nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)** - File explorer
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** - LSP configurations
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)** - Auto-completion engine
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** - Syntax highlighting
- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)** - Git integration

### Developer Tools
- **[mason.nvim](https://github.com/mason-org/mason.nvim)** - LSP server management
- **[conform.nvim](https://github.com/stevearc/conform.nvim)** - Code formatting
- **[vim-go](https://github.com/fatih/vim-go)** - Go development tools

### Theme
- **[rose-pine.nvim](https://github.com/rose-pine/neovim)** - Beautiful, minimal theme

## 💡 Tips & Usage

1. **Real-time completion** is enabled - suggestions appear as you type
2. Use `<C-Space>` if completion doesn't appear automatically
3. **Format on save** is enabled for supported file types
4. Use Telescope (`<leader>f*`) for quick file navigation
5. Use nvim-tree (`<leader>e`) for visual file management
6. **Navigate between tree and editor** with `<leader>h` and `<leader>l`
7. **GUI-style behavior** - cursor positioning and paste work like modern editors
8. **Git integration** - see changes in real-time with gitsigns
9. LSP features work best with properly configured language servers

## 🛠️ Customization

The configuration is modular and easy to customize:

- **Options**: Edit `lua/config/options.lua`
- **Keymaps**: Edit `lua/config/keymaps.lua`
- **Plugins**: Add/modify files in `lua/plugins/`
- **LSP**: Configure servers in `lua/plugins/nvim-lspconfig.lua`

## 🤝 Contributing

Feel free to:
- Report issues
- Suggest improvements
- Submit pull requests
- Share your customizations

## 📄 License

This configuration is open source and available under the MIT License.
