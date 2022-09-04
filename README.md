# cFakeplates V.2
cFakeplates for fivem server

## New
- Add Item: fake_plate

## Help
if need help join the discord
https://discord.gg/Pf8BFErz3X

## Contact
You can either contact me through discord or with twitter

Discord: https://discord.gg/Pf8BFErz3X

Twitter: https://twitter.com/blocdedev

## Preview
![image](https://user-images.githubusercontent.com/67842030/161610828-8ce92212-1218-4d97-ba3c-446228429aac.png)


## Download & Installation

### Using Git
```
cd resources
cd [esx]
git clone https://github.com/ChefFivem/esx_advancedltd
```

### Manually
- Download https://github.com/ChefFivem/cFakeplates
- Put it in the `[esx]` directory

## Installation
- Add this in your `server.cfg`:

```
start cFakeplates
```
- Add this in your database:
```
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
    ('fake_plate', 'Fausse plaque', -1, 0, 1)
;
```

By ChefFivem

## MIT License

Copyright (c) 2022 Chef

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
