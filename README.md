# Working with Environment Variables

## Summary
As we build more advanced applications, it's common to begin integrating with third-party services.  We might want to use the [Twitter API][] to allow users to tweet from our application or the [Yelp API][] to pull restaurant reviews.  Perhaps we want to use [Amazon S3] to store uploaded photos.  When we use these services we need to authenticate ourselves with each request.  This means sending data along with our requests to verify who we are:  username and password, an access token, etc.  

Different services have different requirements, but whatever those requirements are, we want to keep our passwords and tokens secure.  We do not want to share them with anyone.  We definitely need to keep them out of GitHub.

Assume we need a token to authenticate requests to a service.  We need to know the value of the token.  But at the same time, we don't want that value anywhere in our code base.  How do we have access to the token while not declaring it in our code?  We can use [environment variables][wikipedia environment variables].  In this challenge we'll explore environment variables, setting them, and making them available to our ruby processes.


## Releases
### Release 0:  Environment Variables in Ruby Processes
Let's take a look at environment variables and how to access them in our ruby programs.  Open the terminal and run the `env` command:

```
$ env
```

This command prints a list of environment variables specific to this shell.  We'll see environment variables with names like `HOME`, `USER`, `PATH`, etc.  Take a look at some of their values:

```
$ echo $HOME
/Users/Apprentice
$ echo $USER
Apprentice
```

When we run a process inside this shell, these environment variables are passed to that process.  So, they are available when we run a `ruby` process or `irb`.

In Ruby processes, these environment variables are stored in the `ENV` object.  `ENV` is like a hash with key-value pairs.  Open IRB and access some of the environment variables:

```
$ irb
2.2.1 :001 > ENV["HOME"]
# => "/Users/Apprentice"
2.2.1 :002 > ENV["USER"]
# => "Apprentice"
```

Notice that they have the same values as they did in the terminal.  So, to make a value like a token accessible in our program, we can set it as an environment variable in the environment in which our program runs.  In this case, in the terminal.



[amazon s3]: https://aws.amazon.com/s3/
[twitter api]: https://dev.twitter.com/
[wikipedia environment variables]: https://en.wikipedia.org/wiki/Environment_variable
[yelp api]: https://www.yelp.com/developers/documentation/v2/overview