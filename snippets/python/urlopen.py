"""
Shows how to use urllib.request to do GET and POST requests
"""
import json
import sys

from http.client import HTTPResponse
from typing import Dict
from urllib import request


def create_request(url: str, headers: Dict[str, str]) -> request.Request:
    req = request.Request(url)
    for key, value in headers.items():
        req.add_header(key, value)

    return req


def http_get(url: str, headers: Dict[str, str]) -> HTTPResponse:
    req = create_request(url, headers)
    return request.urlopen(req)


def http_post(url: str, headers: Dict[str, str], payload: Dict[str, str]) -> HTTPResponse:
    req = create_request(url, headers)
    json_payload = json.dumps(payload).encode("utf-8")
    return request.urlopen(req, json_payload)


if __name__ == "__main__":
    if len(sys.argv) < 2:
        sys.exit(f"Usage: `urlopen.py GET` or `urlopen.py POST [<key1>=<value>...]`")
    method = sys.argv[1]
    headers = {"User-Agent": "urlopen.py"}
    if method == "GET":
        response = http_get("https://httpbin.org/get", headers)
    elif method == "POST":
        payload = dict(x.split("=", 1) for x in sys.argv[2:])
        headers["Content-Type"] = "application/json"
        response = http_post("https://httpbin.org/post", headers, payload)
    else:
        sys.exit(f"Invalid method {method}")

    print(f"{response.status} {response.reason}")
    print()
    print("Headers:")
    for key, value in response.getheaders():
        print(f"- {key}: {value}")
    print()
    print("Content:")
    content = response.read().decode("utf-8", errors="backslashreplace")
    print(content)
