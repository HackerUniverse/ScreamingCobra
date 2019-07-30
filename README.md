# F.A.Q

# ScreamingCobra
- Swiss knife for XSS Fuzzing on any given URI
- Swiss knife for XSS Finding on any given URI
- Any logic is valid logic

# License
- EULA

# Screenshot
<div align="center">
    <img src="https://i.ibb.co/xgSzyKq/screamingcobra.png" width="600px"</img> 
</div>

# Server Side URL hash (#) feature:
The hash (#) character in a URI denotes the beginning of a URI fragment. According to the RFC 3986, clients are not supposed to send URI fragments to the server, as the client should recognize that they reference a resource secondary to the current, or primary, resource. What does this mean for DOM based XSS! First, the fragment is stored in the DOM as a part of the document.location object, as well as in the document.location.href and document.URL attributes. If a developer parses either of these elements, the fragment will be included. Depending on how the developer parses the URL to extract parameter values, the use of a hash may have no effect on the parser, allowing an attacker to use a hash to inject the payload into the URL, but prevent the payload from being sent to the server where it may be scrutinized. Below is the same example as before, but the exploit is changed by introducing the hash character.

- Example: <script> var x = document.URL.substring(document.URL.indexOf("name=")+5);document.write(name + "!"); </script>
- Exploit: http://example.com?name=Tim#<script>alert(42)</script>
- Result: Hello Tim#<script>alert(42)</script>!


# Linux Installation
- pip install -r requirements.txt 
- pip install httplib2
- pip install mechanize
- pip install Python 2.7

# Android Installation
- pip2 install -e requirements.txt
- pip2 install httplib2
- pip2 install mechanize

# Compatible
- Android Led TV, Termux, Linux, Windows

# URI Payloads
- Parameter :
- https://example.com.pk/pages.php?id=

- Fuzzing :
- https://example.com.pk/pages.php?id=id=id=id=

- Exclusives :
- https://example.com.pk/pages.php#
- https://example.com.pk/pages/
- https://example.com.pk/pages.php?id#

