# Dummy data generator

Collection of scripts that send dummy data to random channels

---

### [Python](./python/)

This script can be used for creating dummy data for Hub products, using prefix to scope down for which product you want the data.

**How to use:**

1. Install Ably using pip.
2. Run `python hub_demo.py api:key prefix`

---

### [CURL](./curl/README.md)

A bash script that uses curl to send a JSON payload to your channel on a recurring interval. You can edit the JSON and change the frequency of the interval. The [README](./curl/README.md) contains more details.

---

If you would like to contribute a language please clone this repo, and send us a pull request.

