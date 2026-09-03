#!/usr/bin/bash

install -d /app/bin

for b in verge{d,-qt,-cli,-tx}
do
  echo '#!/usr/bin/bash' > /app/bin/$b
  echo "exec /app/lib/verge/$b.AppDir/AppRun" '-datadir="${XDG_DATA_HOME}" "$@"' >> /app/bin/$b
  chmod 744 /app/bin/$b
done
