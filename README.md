# Custom Neovim Configuration

## Keymaps

```<leader>ca```    : code action from lsp  
```<leader>ff```    : find files  
```<leader>fg```    : live grep  
```<leader>wq```    : save all and exit all (ignores terminal buffers) 
```<leader>d```     : lsp diagnostics  
```<leader>cb```    : close buffer  
```<leader>sv```    : split window vertically  
```<leader>sh```    : split window horizontally  
```<leader>sc```    : close current split  
```<leader>f```     : format all (normal and visual mode)  
```<leader>y```     : yank to system clipboard (normal and visual)  
```<leader>p```     : copy from system clipboard (normal and visual)  

```[d```            : next diagnostics  
```]d```            : prev diagnostics  

```Tab```           : tab between buffers (multiple files)  
```S-Tab```         : previous tab (multiple files)  
```Esc```           : exit terminal mode  

## Plugins
```AlexvZyl/nordic.nvim```              : style plugin  
```nvim-telescope/telescope.nvim```     : search files  
```nvim-treesitter/nvim-treesitter```   : nested highlight  
```nvim-neo-tree/neo-tree.nvim"```      : file explorer 
```mason-org/mason.nvim```              : mason package manager
```mason-org/mason-lspconfig.nvim```    : mason lsp
```hrsh7th/nvim-cmp```                  : autocompletion with lsp
