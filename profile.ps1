function emacs($File) {
    $File = $File -replace "\\", "/"
    bash -c "emacs $File"
}