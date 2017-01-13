## Blocmetrics: an analytics application to track events on websites

When registering an application with Blocmetrics, be sure to include the full URL. For example:

`http://www.justinboltz.com`  // works
`http://justinboltz.com`      // doesn't work
`www.justinboltz.com`         // doesn't work
`justinboltz.com`             // doesn't work

`https://www.justinboltz.com` // works, but you must allow the site to load unsafe scripts

For use with a registered Blocmetrics app, please insert the following JavaScript snippet into your application.js file. It is also advised to avoid the use of turbo-links for proper tracking functionality.

```
var blocmetrics = {};
blocmetrics.report = function(eventName) {
   var event = {event: { name: eventName }};
   var request = new XMLHttpRequest();
   request.open("POST", "http://blocmetrics-boltz.herokuapp.com/api/v1/events", true);
   request.setRequestHeader('Content-Type', 'application/json');
   request.send(JSON.stringify(event));
};```

Then add scripts for whatever event you want to track, for example:

```
$(document).ready(function() {
  blocmetrics.report("page load");
});```
