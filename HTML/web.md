# Task 6 

## How the web works.
  ### Clients and servers
Computers connected to the internet are called clients and servers. A simplified diagram of how they interact might look like this:


  <img title="a title" alt="Alt text" src="https://developer.mozilla.org/en-US/docs/Learn_web_development/Getting_started/Web_standards/How_the_web_works/simple-client-server.png">

  Clients are the typical web user's internet-connected devices (for example, your computer connected to your Wi-Fi, or your phone connected to your mobile network) and web-accessing software available on those devices (usually a web browser like Firefox or Chrome).
Servers are computers that store webpages, sites, or apps. When a client wants to access a webpage, a copy of the webpage code is downloaded from the server onto the client machine to rendered by the browser and displayed to the user.

For now, let's imagine that the internet is a road. On one end of the road is the client, which is like your house. On the other end of the road is the server, which is like a shop you want to buy something from.

In order for data to get back and forth, we need the following things:

- **Your internet connection**: Allows you to send and receive data on the internet. It's basically like the street between your house and the shop.

- **TCP/IP**: Transmission Control Protocol and Internet Protocol (TCP/IP) are communication protocols that define how data should travel across the internet. This is like the transport mechanisms that let you place an order, go to the shop, and buy your goods. In our example, this is like a car or a bike (or however else you might travel along the road).

- **DNS**: The Domain Name System (DNS) is like an address book for websites. When you type a web address in your browser, the browser looks at the DNS to find the website's IP address — the actual address the server is located at — before it can retrieve the website . The browser needs to find out which server the website lives on, so it can send HTTP messages to the right place. This is like looking up the address of the shop before you visit it.

- **HTTP**: Hypertext Transfer Protocol (HTTP) is an application protocol that defines a language for clients and servers to speak to each other. This is like the language you use to order your goods.

- **Files**: A website is made up of many different files, which are like the different goods you buy from the shop. These files come in two main types:

- **Code**: Websites are built primarily from HTML, CSS, and JavaScript — the different programming languages websites are written in, which the browser interprets and assembles into a web page to display to a user.
- **Assets**: This is a collective term for all the other items that appear on a website — such as images, music, video, Word documents, and PDFs — that aren't code that the browser interprets.

### So what happens, exactly?
When you type a web address (which is technically part of a URL) into your browser address bar, the following steps occur:

1. The browser goes to the DNS server and finds the real address of the server that the website lives on (you look up the address of the shop).
1. The browser sends an HTTP request message to the server, asking it to send a copy of the website to the client (you go to the shop and order your goods). This message, and all other data sent between the client and the server, is sent across your internet connection using TCP/IP.
1. If the server approves the client's request, the server sends the client a "200 OK" message, which means "Of course you can look at that website! Here it is", and then starts sending the website's files to the browser as a series of small chunks called data packets (the shop gives you your goods, and you bring them back to your house).
1. The browser assembles the small chunks into a complete web page and displays it to you.

### [reference](https://developer.mozilla.org/en-US/docs/Learn_web_development/Getting_started/Web_standards/How_the_web_works)


## HTTP VS HTTPS.
HTTPS is HTTP with encryption and verification. The only difference between the two protocols is that HTTPS uses TLS (SSL) to encrypt normal HTTP requests and responses, and to digitally sign those requests and responses. As a result, HTTPS is far more secure than HTTP. A website that uses HTTP has http:// in its URL, while a website that uses HTTPS has https://.

HTTP stands for Hypertext Transfer Protocol, and it is a protocol — or a prescribed order and syntax for presenting information — used for transferring data over a network. Most information that is sent over the Internet, including website content and API calls, uses the HTTP protocol. There are two main kinds of HTTP messages: requests and responses.

### Example: HTTP Request
Here’s an example of how an HTTP request looks when fetching data from a server:

```HTTP
GET /index.html HTTP/1.1
Host: example.com
User-Agent: Mozilla/5.0
Accept: text/html
```
### Example: HTTP Response
```HTML
HTTP/1.1 200 OK
Content-Type: text/html

<!DOCTYPE html>
<html>
<head>
    <title>Example Page</title>
</head>
<body>
    <h1>Hello, World!</h1>
</body>
</html>
```

### What is HTTPS?
**HTTPS (Hypertext Transfer Protocol Secure)** is HTTP with a layer of encryption, provided by SSL/TLS (Secure Sockets Layer/Transport Layer Security). It secures communication between the client and the server by encrypting the data, ensuring that even if someone intercepts the communication, they cannot read the data.

To use HTTPS, a website must have an SSL/TLS certificate, which serves two purposes:

1. Encryption — It encrypts the data transmitted between the browser and the server.
1. Authentication — It ensures that the website you are connecting to is legitimate.
### How HTTPS Works
When a browser connects to a website using HTTPS, several steps occur behind the scenes:

1. **TLS Handshake** — The browser and server agree on encryption methods.
1. **Certificate Verification** — The server presents its SSL certificate, which the browser verifies.
1. **Encrypted Communication** — Data is exchanged in an encrypted format using the agreed-upon encryption algorithm.
The S in HTTPS stands for “secure.” HTTPS uses TLS (or SSL) to encrypt HTTP requests and responses, so in the example above, instead of the text, an attacker would see a bunch of seemingly random characters.

### [reference](https://medium.com/@vitaliykorzenkoua/http-vs-https-what-are-the-differences-4dfd2fecf28d)

## Web servers.

A web server is a computer program that stores, processes, and delivers web pages to clients. Web servers are an essential component of the web, as they are responsible for delivering the content of a website to the users. The most common web servers are Apache, Nginx, and Microsoft Internet Information Services (IIS).

### [reference](https://developer.mozilla.org/en-US/docs/Learn_web_development/Howto/Web_mechanics/What_is_a_web_server)

## DNS

The Domain Name System (DNS) is a hierarchical and decentralized naming system for computers, services, or other resources connected to the Internet or a private network. It associates various information with domain names assigned to each of the participating entities. Most prominently, it translates more readily memorized domain names to the numerical IP addresses needed for locating and identifying computer services and devices with the underlying network protocols. By providing a worldwide, distributed directory service, the Domain Name System has been an essential component of the functionality of the Internet since 1985.

### [reference](https://developer.mozilla.org/en-US/docs/Learn_web_development/Getting_started/Web_standards/How_the_web_works#the_other_parts_of_the_toolbox)