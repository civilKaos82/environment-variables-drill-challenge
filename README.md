# Working with Environment Variables

## Summary
As we build more advanced applications, it's common to begin integrating with third-party services.  We might want to use the [Twitter API][] to allow users to tweet from our application or the [Yelp API][] to pull restaurant reviews.  Perhaps we want to use [Amazon S3] to store uploaded photos.  When we use these services we need to authenticate ourselves with each request.  This means sending data along with our requests to verify who we are:  username and password, an access token, etc.  

Different services have different requirements, but whatever those requirements are, we want to keep our passwords and tokens secure.  We do not want to share them with anyone.  We definitely need to keep them out of GitHub.

Assume we need a token to authenticate requests to a service.  We need to know the value of the token.  But at the same time, we don't want that value anywhere in our code base.  How do we have access to the token while not declaring it in our code?  We can use [environment variables][wikipedia environment variables].  In this challenge we'll explore environment variables, setting them, and making them available to our ruby processes.



[amazon s3]: https://aws.amazon.com/s3/
[twitter api]: https://dev.twitter.com/
[wikipedia environment variables]: https://en.wikipedia.org/wiki/Environment_variable
[yelp api]: https://www.yelp.com/developers/documentation/v2/overview