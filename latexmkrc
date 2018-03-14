$pdf_mode = 1;
$out_dir = "_build";
$pdflatex = '(echo "\\\\\\\\newcommand{\\\\\\\\version}{"`(git describe --always --long --dirty 2>/dev/null || echo "unknown")`"}") > _build/version.tex; pdflatex -interaction nonstopmode -halt-on-error -file-line-error -synctex=1 %O %S';
$pdf_previewer = 'zathura -x "vim --servername %R --remote-send %{line}gg" %S & gvim --servername %R %T';
$pdf_update_mode = 1;