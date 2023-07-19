from kaleido.scopes.plotly import PlotlyScope
import subprocess


subprocess.run(["pip", "check"], check=True)

scope = PlotlyScope()
assert scope.transform({"data": []}).startswith(b"\x89PNG")
