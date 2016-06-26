require 'omniauth/strategies/oauth2'
# require 'omniauth-oauth'
require 'multi_json'

module OmniAuth
  module Strategies

    class Weddingwire < OmniAuth::Strategies::OAuth2

      # option :name, 'weddingwire'

      option :client_options, {
        :site => ENV['OAUTH_WEDDINGWIRE_SITE'],
        :authorize_url => ENV['OAUTH_WEDDINGWIRE_AUTHORIZE_URL'],
        :token_url => ENV['OAUTH_WEDDINGWIRE_TOKEN_URL']
      }

      uid {
        user_info['encrypted_user_id']
      }

      info do
        {
          email: user_info['email'],
          first_name: user_info['first_name'],
          last_name: user_info['last_name'],
          status: user_info['status']
        }
      end

      extra do
        {
          :raw_info => raw_info
        }
      end

      # Return info gathered from the weddingwire API call

      def raw_info
        @raw_info ||= JSON.parse(access_token.get(ENV['OAUTH_WEDDINGWIRE_PROFILE_URL']).body)
      rescue ::Errno::ETIMEDOUT
        raise ::Timeout::Error
      end

      # Provide the "User" portion of the raw_info

      def user_info
        @user_info ||= raw_info
      end

      def request_phase
        options[:authorize_params] = {:perms => options[:scope]} if options[:scope]
        super
      end
    end
  end
end
