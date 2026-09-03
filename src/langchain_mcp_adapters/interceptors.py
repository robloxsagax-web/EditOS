from typing import Any, Dict, List, Optional
from pydantic import BaseModel

class MCPToolCallRequest(BaseModel):
    name: str = ""
    arguments: Dict[str, Any] = {}

class MCPToolCallResult(BaseModel):
    content: List[Any] = []
    isError: bool = False
