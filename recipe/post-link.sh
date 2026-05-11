#!/bin/bash
# Display a post-install message about Chrome being required for kaleido 1.x.
# Per https://docs.conda.io/projects/conda-build/en/latest/resources/link-scripts.html
# the contents of $PREFIX/.messages.txt are shown after conda completes.
# Tracks PKG-11971.
cat >> "$PREFIX/.messages.txt" <<'EOF'

================================ python-kaleido =================================
As of version 1.0.0, kaleido requires Google Chrome to be installed.

If you already have Chrome on your system, kaleido will find it. Otherwise,
install a compatible Chrome version with:

    kaleido_get_chrome

See https://github.com/plotly/kaleido for details.
=================================================================================

EOF
