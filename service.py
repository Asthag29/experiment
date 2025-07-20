from fastapi import FastAPI
from fastapi.responses import PlainTextResponse

astha = FastAPI()

@astha.get("/", response_class=PlainTextResponse)
async def read_root():
    return "hi this is astha"

@astha.get("/status")
async def get_status():
    return {"status": "running"}
