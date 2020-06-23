from ably import AblyRest
import time
import string
import random
import sys


def id_generator(size=6, chars=string.ascii_uppercase + string.digits):
    return ''.join(random.choice(chars) for _ in range(size))


api_key = ""
channel_prefix = ""

if len(sys.argv) > 2:
    api_key = sys.argv[1]
    channel_prefix = sys.argv[2] + ":"
else:
    print("please provide API Key as argument")
    exit()


client = AblyRest(api_key, environment="sandbox")
channels = []
for _ in range(5):
    channels.append(client.channels.get(
        channel_prefix + id_generator(10) + ":" + id_generator(10) + ":" +
        id_generator(20)))
while(True):
    for channel in channels:
        event = id_generator(15)
        msg_part1 = id_generator(36)
        msg_part2 = id_generator(36)
        msg_part3 = id_generator(36)
        message = "{ p1: \"" + msg_part1 + "\", p2: \"" + \
            msg_part2 + "\", p3: \"" + msg_part3 + "}"
        channel.publish("event:" + event, message)
    print("Messages sent!")
    time.sleep(5)
