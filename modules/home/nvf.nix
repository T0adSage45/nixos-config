{pkgs, ...}: {
  programs.nvf = {
    enable = true;
    vim.theme.enable = true;
    vim.theme.name = "gruvbox";
    vim.theme.style = "dark";

    vim.languages.nix.enable = true;
    statusline.lualine.enable = true;
    telescope.enable = true;
    vim.lsp.enable = true;
    autocomplete.nvim.cmp.enable = true;
  };
}
