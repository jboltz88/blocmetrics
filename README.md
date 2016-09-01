## Blocmetrics: an analytics application to track events on websites

For use with a registered Blocmetrics app, please insert the following JavaScript snippet into your application.js file. It is also advised to avoid the use of turbo-links for proper tracking functionality.

```
var blocmetrics = {};
blocmetrics.report = function(eventName) {
   var event = {event: { name: eventName }};
   var request = new XMLHttpRequest();
   request.open("POST", "http://localhost:4000/api/events", true);
   request.setRequestHeader('Content-Type', 'application/json');
   request.send(JSON.stringify(event));
}
