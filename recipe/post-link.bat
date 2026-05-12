@echo off
rem Display a post-install message about Chrome being required for kaleido 1.x.
rem Per https://docs.conda.io/projects/conda-build/en/latest/resources/link-scripts.html
rem the contents of %PREFIX%\.messages.txt are shown after conda completes.
rem Tracks PKG-11971.
(
echo.
echo ================================ python-kaleido =================================
echo As of version 1.0.0, kaleido requires Google Chrome to be installed.
echo.
echo If you already have Chrome on your system, kaleido will find it. Otherwise,
echo install a compatible Chrome version with:
echo.
echo     kaleido_get_chrome
echo.
echo See https://github.com/plotly/kaleido for details.
echo =================================================================================
echo.
) >> "%PREFIX%\.messages.txt"
