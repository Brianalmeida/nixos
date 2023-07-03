
{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.programs.vim;
in {
  options.programs.vim = {

    package = mkOption {
      type = types.package;
      default = pkgs.vim;
      defaultText = literalExpression "pkgs.vim";
      example = literalExpression "pkgs.vim-full";
      description = lib.mdDoc ''
        vim package to use.
      '';
    };
  };

}
