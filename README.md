# donkeybrains

Garmin Connect IQ SDK Docker image

Image supports running the `monkeyc` command for build source.

Usage

```bash
docker run -v [SOURCE_DIR]/:/development jokarls/donkeybrains monkeyc -d [DEVICE] -o /development/bin/app.prg -f /development/monkey.jungle -y /development/[DEVELOPER_KEY]
```
