
# Apipoint

Application aggregate client event data.

To connect client to apipoint just add this script to you page.
Do not forget set IP and port of apipoint app 
and replace pixel fb_id of your own pixel id.

```

<script>

this.ws = new WebSocket('ws://(here paste apipoint IP):(apipoint port default 4000)/socket/websocket/');

this.ws.onopen = () => {
  this.ws.send(JSON.stringify({
    "topic": "info",
    "app_token": 12345,
    "tracking_kind": "fb",
    "event": "phx_join",
    "payload": {"event": "PageView"},
    "ref": "some ref"
  }));
};

this.ws.onmessage = function(event) {

  !function(f,b,e,v,n,t,s){
    if(f.fbq)return;n=f.fbq=function(){n.callMethod?
      n.callMethod.apply(n,arguments):n.queue.push(arguments)};
        if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
          n.queue=[];t=b.createElement(e);t.async=!0;
            t.src=v;s=b.getElementsByTagName(e)[0];
              s.parentNode.insertBefore(t,s)}(window, document,'script',
                'https://connect.facebook.net/en_US/fbevents.js');

                  fbq('init', '1234567890'); // here edit fb_id on your own pixel fb_id 
                    fbq('track', 'PageView');
};
</script>
<noscript><img height="1" width="1" style="display:none" src="data:," /></noscript>

```

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
