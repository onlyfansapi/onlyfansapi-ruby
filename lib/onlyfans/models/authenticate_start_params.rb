# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Authenticate#start
    class AuthenticateStartParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute _internal_automatic_syncs_disabled
      #
      #   @return [Boolean, nil]
      optional :_internal_automatic_syncs_disabled, Onlyfans::Internal::Type::Boolean

      # @!attribute auth_id
      #   The auth_id from OnlyFans session cookies. Required when auth_type is
      #   `raw_data`.
      #
      #   @return [String, nil]
      optional :auth_id, String

      # @!attribute auth_type
      #   The authentication method to use. Defaults to `email_password` if omitted. Use
      #   `mobile_app` to authenticate via the FansAPI Auth+ mobile app (no credential
      #   fields required).
      #
      #   @return [Symbol, Onlyfans::Models::AuthenticateStartParams::AuthType, nil]
      optional :auth_type, enum: -> { Onlyfans::AuthenticateStartParams::AuthType }

      # @!attribute cookies
      #   The full cookie string (semicolon-separated). Required when auth_type is
      #   `raw_data`.
      #
      #   @return [String, nil]
      optional :cookies, String

      # @!attribute custom_proxy
      #   Custom proxy configuration. Cannot be used together with proxyCountry.
      #
      #   @return [Onlyfans::Models::AuthenticateStartParams::CustomProxy, nil]
      optional :custom_proxy, -> { Onlyfans::AuthenticateStartParams::CustomProxy }, api_name: :customProxy

      # @!attribute email
      #   The email address of the OnlyFans account. Required when auth_type is
      #   `email_password`.
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute force_connect
      #   Set to true to connect the account even if it already exists
      #
      #   @return [Boolean, nil]
      optional :force_connect, Onlyfans::Internal::Type::Boolean

      # @!attribute name
      #   A display name for the account. If omitted, defaults to the email address or
      #   auth_id.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute password
      #   The password of the OnlyFans account. Required when auth_type is
      #   `email_password`.
      #
      #   @return [String, nil]
      optional :password, String

      # @!attribute proxy_country
      #   The country of the managed proxy server you want to use. Eg. "us" for United
      #   States. Cannot be used together with customProxy.
      #
      #   @return [Symbol, Onlyfans::Models::AuthenticateStartParams::ProxyCountry, nil]
      optional :proxy_country,
               enum: -> { Onlyfans::AuthenticateStartParams::ProxyCountry },
               api_name: :proxyCountry

      # @!attribute user_agent
      #   The browser User-Agent string. Required when auth_type is `raw_data`.
      #
      #   @return [String, nil]
      optional :user_agent, String

      # @!attribute xbc
      #   The X-BC token from request headers. Required when auth_type is `raw_data`.
      #
      #   @return [String, nil]
      optional :xbc, String

      # @!method initialize(_internal_automatic_syncs_disabled: nil, auth_id: nil, auth_type: nil, cookies: nil, custom_proxy: nil, email: nil, force_connect: nil, name: nil, password: nil, proxy_country: nil, user_agent: nil, xbc: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::AuthenticateStartParams} for more details.
      #
      #   @param _internal_automatic_syncs_disabled [Boolean]
      #
      #   @param auth_id [String] The auth_id from OnlyFans session cookies. Required when auth_type is `raw_data`
      #
      #   @param auth_type [Symbol, Onlyfans::Models::AuthenticateStartParams::AuthType] The authentication method to use. Defaults to `email_password` if omitted. Use `
      #
      #   @param cookies [String] The full cookie string (semicolon-separated). Required when auth_type is `raw_da
      #
      #   @param custom_proxy [Onlyfans::Models::AuthenticateStartParams::CustomProxy] Custom proxy configuration. Cannot be used together with proxyCountry.
      #
      #   @param email [String] The email address of the OnlyFans account. Required when auth_type is `email_pas
      #
      #   @param force_connect [Boolean] Set to true to connect the account even if it already exists
      #
      #   @param name [String] A display name for the account. If omitted, defaults to the email address or aut
      #
      #   @param password [String] The password of the OnlyFans account. Required when auth_type is `email_password
      #
      #   @param proxy_country [Symbol, Onlyfans::Models::AuthenticateStartParams::ProxyCountry] The country of the managed proxy server you want to use. Eg. "us" for United Sta
      #
      #   @param user_agent [String] The browser User-Agent string. Required when auth_type is `raw_data`.
      #
      #   @param xbc [String] The X-BC token from request headers. Required when auth_type is `raw_data`.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # The authentication method to use. Defaults to `email_password` if omitted. Use
      # `mobile_app` to authenticate via the FansAPI Auth+ mobile app (no credential
      # fields required).
      module AuthType
        extend Onlyfans::Internal::Type::Enum

        EMAIL_PASSWORD = :email_password
        RAW_DATA = :raw_data
        MOBILE_APP = :mobile_app

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class CustomProxy < Onlyfans::Internal::Type::BaseModel
        # @!attribute host
        #   The hostname or IP address of your custom proxy server
        #
        #   @return [String, nil]
        optional :host, String

        # @!attribute password
        #   The password for proxy authentication (optional)
        #
        #   @return [String, nil]
        optional :password, String

        # @!attribute port
        #   The port number of your custom proxy server (1-65535)
        #
        #   @return [Integer, nil]
        optional :port, Integer

        # @!attribute username
        #   The username for proxy authentication (optional)
        #
        #   @return [String, nil]
        optional :username, String

        # @!method initialize(host: nil, password: nil, port: nil, username: nil)
        #   Custom proxy configuration. Cannot be used together with proxyCountry.
        #
        #   @param host [String] The hostname or IP address of your custom proxy server
        #
        #   @param password [String] The password for proxy authentication (optional)
        #
        #   @param port [Integer] The port number of your custom proxy server (1-65535)
        #
        #   @param username [String] The username for proxy authentication (optional)
      end

      # The country of the managed proxy server you want to use. Eg. "us" for United
      # States. Cannot be used together with customProxy.
      module ProxyCountry
        extend Onlyfans::Internal::Type::Enum

        US = :us
        UK = :uk

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
