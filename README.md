# Octo Events

This is a test for Jaya. Octo Events is an application that listens to GitHub events via webhooks and expose them by an API for later use.

## Versions:
* Ruby version: 2.5.3p105
* Rails version: 5.2.3

## Services

|HTTP verb|URI|Description|
|---------|:----|:----------|
|POST|/events|Receives data from GitHub webhooks and saves it.
|GET|/events|Returns a list of all the stored issues data.|
|GET|/events/:number|Returns all events of the specified issue number.|

## Deployment instructions
Run the application locally using in the application root.
```
rails server
```

It is suggested to use ngrok to expose the local URL to an external one, using the same port from your local application. You can download ngrok [here](https://ngrok.com/download). In ngrok, use for example, where 3000 is the number of your port:
```
sudo ngrok http 3000
```
Create a webhook on GitHub following [these instructions](https://developer.github.com/webhooks/creating/) in the repository of your choice. When creating your webhook, under "Which events would you like to trigger this webhook?", select "Let me select individual events". Under this option, make sure to select the only the option Issues as shown below:

![alt-text](/assets/images/add_webhook.png "Choose 'Let me select individual events'") 


![alt-text](/assets/images/issues.png)

Use the authentication user and password in the Payload URL and point to the /events URI as in the example below:
```https://xxx:xxx@ngroklink.ngrok.io/events```

By now you should be able to receive the issues events from GitHub and get them stored in the application.

You can access the information stored using the GET routes described in the Services section.





