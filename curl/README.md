# Using CURL and Bash

#### Add your API key to your bash profile (always keep it secrect)

```bash
# add this to .bashrc
export ABLY_API_KEY="{your-ably-api-key}"

# check it works with
$ echo $ABLY_API_KEY
```

(don't forget to restart the shell to activate the new values)

#### Edit the `.config.sh` file to set your channel and other options

```bash
# Fully Qualified Channel Name:
# eg [product:fliptopbox/zero]tick-tock

api_name="fliptopbox"
source_app="zero"
namespace="tick-tock"
```

You can change the frequency of the poll

```bash
# wait for 25 seconds
snooze=25
```

#### Run the bash script

```bash
$ cd curl/
$ ./run.sh
```

#### Edit the JSON payload (optional)

You can data that is sent to your channel by editing [payload.json](./curl/payload.json) please be careful that the JSON is valid.

```json
{
  "name": "event",
  "data": {
    "id": 123123123,
    "name": "kilroy",
    "note": "was here"
  }
}
```

To check your JSON we recommend the [The JSON Validator](https://jsonlint.com/)
