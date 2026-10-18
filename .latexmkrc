# Use pdfLaTeX and keep generated files together.
$pdf_mode = 1;
$out_dir = 'build';
@default_files = ('Ken_Xinhao_Wang_Resume.tex');
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';

# macOS GUI applications may not inherit the TeX distribution's PATH.
if (-d '/Library/TeX/texbin') {
    $ENV{'PATH'} = '/Library/TeX/texbin:' . $ENV{'PATH'};
}
