#!/bin/env python3
import os
import asyncio

from viam.rpc.dial import DialOptions, Credentials
from viam.robot.client import RobotClient

async def connect():
    opts = RobotClient.Options.with_api_key(
            api_key=os.getenv('VIAM_API_KEY'),
            api_key_id=os.getenv('VIAM_API_KEY_ID')
    )
    return await RobotClient.at_address('test-and-development-main.yqlop2my9p.viam.cloud', opts)

async def main():
    machine = await connect()
    print('Resources:')
    print(machine.resource_names)
    await machine.close()

if __name__ == '__main__':
    asyncio.run(main())
