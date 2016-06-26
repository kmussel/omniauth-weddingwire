
# OmniAuth Weddingwire


Weddingwire OAuth2 Strategy for OmniAuth.

Supports the OAuth 2.0 server-side and client-side flows.

## Installing

Add to your `Gemfile`:

```ruby
gem 'omniauth-weddingwire'
```

Then `bundle install`.

**Set these Environment Variables:**

```
OAUTH_WEDDINGWIRE_SITE
OAUTH_WEDDINGWIRE_AUTHORIZE_URL
OAUTH_WEDDINGWIRE_TOKEN_URL
OAUTH_WEDDINGWIRE_PROFILE_URL
```

## Usage

`OmniAuth::Strategies::Weddingwire` is simply a Rack middleware. Read the OmniAuth docs for detailed instructions: https://github.com/intridea/omniauth.

Here's a quick example, adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :weddingwire, ENV['WEDDINGWIRE_CLIENT_ID'], ENV['WEDDINGWIRE_CLIENT_SECRET']
end
```

If you are using Devise place the following inside the devise.rb initializer
```ruby
config.omniauth :weddingwire, ENV['WEDDINGWIRE_CLIENT_ID'], ENV['WEDDINGWIRE_CLIENT_SECRET'], :client_options => { :ssl => { :verify => !Rails.env.development? } }
```




## License

Copyright (c) 2016 by Kevin Musselman

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
