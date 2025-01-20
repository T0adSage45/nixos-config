{pkgs,...}:
{
  programs.nvf = {
        enable = true;
        settings = {
            vim.theme.enable = true;
            vim.theme.name = "gruvbox";
            vim.theme.style = "dark";

            vim.languages.nix.enable = true;
        };
    };
}
