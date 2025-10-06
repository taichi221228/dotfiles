{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      # For Alacritty. Alacritty can't display `☁️` using Apple Color Emoji.
      aws.symbol = "⛅  ";
      gcloud.symbol = "🌧️  ";
      openstack.symbol = "🌨️  ";
      os.symbols.OpenCloudOS = "🌩️  ";
      # Self implementation of Jujutsu integration.
      custom.jj = {
        command = ''
          jj log -r @ --ignore-working-copy --no-graph --color always --template '
            separate(" ",
              change_id.shortest(8),
              bookmarks,
              concat(
                raw_escape_sequence("\x1b[1;32m") ++ if(empty, "(empty)"),
                raw_escape_sequence("\x1b[1;31m") ++ if(conflict, "(conflict)"),
                raw_escape_sequence("\x1b[1;33m") ++ if(divergent, "(divergent)"),
                raw_escape_sequence("\x1b[1;33m") ++ if(hidden, "(hidden)"),
                raw_escape_sequence("\x1b[1;33m") ++ if(immutable, "(immutable)"),
              ),
              raw_escape_sequence("\x1b[1;32m") ++ coalesce(
                truncate_end(40, description.first_line(), "…"),
                "(no description set)",
              ) ++ raw_escape_sequence("\x1b[0m"),
            )
          '
        '';
        when = "jj root --ignore-working-copy";
      };
    };
  };
}
