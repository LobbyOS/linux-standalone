Hey, Thanks for downloading Lobby Linux standalone package.

How To Run
==========

Make the `Lobby.sh` file executable

```
chmod a+x Lobby.sh Lobby.desktop "LobbyServerStop.desktop"
```

Then run the `Lobby` desktop file. If that doesn't work, run `Lobby.sh`.

What Happens When I Run ?
=========================

* A PHP server is started and it will listen to `127.0.0.1:2020`
* The URL according to the server will be opened in your default browser (http://127.0.0.1:2020)

Stop Lobby Server
=================

After using Lobby, you may wish to terminate the server that is running in the background.

You can do this by running `Stop Lobby Server.desktop`
