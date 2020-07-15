#!/bin/bash
# Your Ably API key (best to use root)
# It is very important the you keep the API Key secrect
# the safest place to keep the key is in your shell profile
#
# Add your key to .bashrc by adding this line:
# export ABLY_API_KEY="aBcDEf.ABcdeF.0123456789aBcDeF"
#
# To check it works type this in your terminal
# (you may need to re-open your shell or `source .bashrc` first)
# $ echo $ABLY_API_KEY

api_key="${ABLY_API_KEY}"

# Your App details that will constitue
# the Fully Qualified Channel Name
# eg [product:fliptopbox/zero]tick-tock

api_name="fliptopbox"
source_app="zero"
namespace="tick-tock"

# Second interval between payload polls
snooze=25
