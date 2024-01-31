<h1 align="center">LEARN FASTAPI</h1>

<h2 align="left">LEARN FASTAPI</h2>

Our website will allow to:

- Retrieve
- Create
- Modify
- Replace
- Delete

<h2 align="left">RESTful API Design</h2>

HTTP is a way to get commands and data between web clients and servers.

- **Resources:** The data elements your application manages
- **IDs:** Unique resource identifiers
- **URLs:** Structured resource and ID strings
- **Verbs or actions:** Terms that accompany URLs for different purposes:
  - **GET:** Retrieve a resource.
  - **POST:** Create a new resource.
  - **PUT:** Completely replace a resource.
  - **PATCH:** Partially replace a resource.
  - **DELETE:** Resource goes kaboom.

Web requests often carry more information, indicating to do the following:

- Sort results
- Paginate results
- Perform another function

**Parameters** for these can sometimes be expressed as **path** parameters (tacked onto the end, after another `/`) but are often included as query parameters (var=val stuff after the `?` in the URL). Because URLs have size limits, large requests are often conveyed in the HTTP body.

<h2 align="left">File and Directory Site Layout</h2>

<h2 align="left">How to run the FastAPI Application</h2>

```python
from fastapi import FastAPI

app = FastAPI()

@app.get(path="/")
def top():
    return "top here"
```

```bash
$ uvicorn main:app --reload
```

or include this in your `main.py` module.

```python
if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app="main:app", reload=True)
```

After successfull execution, you can use this command:

```bash
$ http localhost:8000 # print everything
$ http -b localhost:8000 # to print only the body
```

```
HTTP/1.1 200 OK
content-length: 10
content-type: application/json
date: Wed, 31 Jan 2024 14:20:43 GMT
server: uvicorn

"top here"
```

```
"top here"
```

<h2 align="left">Requests</h2>

An HTTP request consists of a text header followed by one or more body sections. You could write your own code to parse HTTP into Python data structures, but you wouldn’t be the first. In your web application, it’s more productive to have these details done for you by a framework.

FastAPI’s dependency injection is particularly useful here. Data may come from different parts of the HTTP message, and you’ve already seen how you can specify one or more of these dependencies to say where the data is located:

- **Header:** In the HTTP headers
- **Path:** In the URL
- **Query:** After the `?` in the URL
- **Body:** In the HTTP body

Other, more indirect, sources include the following:

- **Environment variables**
- **Configuration settings**

```bash
# ignoring the returned HTML body data
$ http -p HBh http://example.com/
```

```
# HTTP request headers

GET / HTTP/1.1
Accept: */*
Accept-Encoding: gzip, deflate
Connection: keep-alive
Host: example.com
User-Agent: HTTPie/3.2.2

# HTTP response headers

HTTP/1.1 200 OK
Age: 524754
Cache-Control: max-age=604800
Content-Encoding: gzip
Content-Length: 648
Content-Type: text/html; charset=UTF-8
Date: Wed, 31 Jan 2024 14:42:59 GMT
Etag: "3147526947+gzip"
Expires: Wed, 07 Feb 2024 14:42:59 GMT
Last-Modified: Thu, 17 Oct 2019 07:18:26 GMT
Server: ECS (nyb/1D1B)
Vary: Accept-Encoding
X-Cache: HIT
```

The first line asks for the top page at example.com (a free website that anyone can use in, well, examples). It asks only for a URL, with no parameters anywhere else. The first block of lines is the HTTP request headers sent to the website, and the next block contains the HTTP response headers.

<h2 align="left">Multiple Routers</h2>
