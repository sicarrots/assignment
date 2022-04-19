import aiohttp

from fastapi import FastAPI
from pydantic import BaseModel, AnyHttpUrl


app = FastAPI()


class PingRequest(BaseModel):
    url: AnyHttpUrl


@app.post("/ping")
async def ping(req: PingRequest):
    async with aiohttp.ClientSession() as session:
        async with session.get(req.url) as response:
            response_body = await response.text()
    return response_body


@app.get('/info')
async def info():
    return {'Receiver': 'Cisco is the best!'}
