$clean_ext = 'bbl nav out snm aux sta synctex';
$latex = 'platex -kanji=utf-8 -synctex=1 %S';
$dvipdf = 'dvipdfmx %S';
$bibtex = 'pbibtex';
$pdf_mode = 3; # use dvipdf
$latex = 'platex -synctex=1 -halt-on-error';
$bibtex = 'pbibtex';
$biber = 'biber --bblencoding=utf8 -u -U --output_safechars';
$dvipdf = 'dvipdfmx %O -o %D %S';
$makeindex = 'mendex %O -o %D %S';
$pdf_update_method = 2;
$max_repeat       = 5;
$pdf_mode = 3;
$out_dir = 'build';
# Prevent latexmk from removing PDF after typeset.
$pvc_view_file_via_temporary = 0;
$pdf_previewer = "mupdf";
