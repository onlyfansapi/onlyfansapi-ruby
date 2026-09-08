# typed: strong

module Onlyfans
  module Models
    class AuthenticateStartParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::AuthenticateStartParams, Onlyfans::Internal::AnyHash)
        end

      # The auth_id from OnlyFans session cookies. Required when auth_type is
      # `raw_data`.
      sig { returns(T.nilable(String)) }
      attr_reader :auth_id

      sig { params(auth_id: String).void }
      attr_writer :auth_id

      # The authentication method to use. Defaults to `email_password` if omitted. Use
      # `mobile_app` to authenticate via the FansAPI Auth+ mobile app (no credential
      # fields required).
      sig do
        returns(
          T.nilable(Onlyfans::AuthenticateStartParams::AuthType::OrSymbol)
        )
      end
      attr_reader :auth_type

      sig do
        params(
          auth_type: Onlyfans::AuthenticateStartParams::AuthType::OrSymbol
        ).void
      end
      attr_writer :auth_type

      # The full cookie string (semicolon-separated). Required when auth_type is
      # `raw_data`.
      sig { returns(T.nilable(String)) }
      attr_reader :cookies

      sig { params(cookies: String).void }
      attr_writer :cookies

      # Custom proxy configuration. Cannot be used together with proxyCountry.
      sig { returns(T.nilable(Onlyfans::AuthenticateStartParams::CustomProxy)) }
      attr_reader :custom_proxy

      sig do
        params(
          custom_proxy: Onlyfans::AuthenticateStartParams::CustomProxy::OrHash
        ).void
      end
      attr_writer :custom_proxy

      # The email address of the OnlyFans account. Required when auth_type is
      # `email_password`.
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # Set to true to connect the account even if it already exists
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :force_connect

      sig { params(force_connect: T::Boolean).void }
      attr_writer :force_connect

      # A display name for the account. If omitted, defaults to the email address or
      # auth_id.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The password of the OnlyFans account. Required when auth_type is
      # `email_password`.
      sig { returns(T.nilable(String)) }
      attr_reader :password

      sig { params(password: String).void }
      attr_writer :password

      # The country of the managed proxy server you want to use. Eg. "us" for United
      # States. Cannot be used together with customProxy.
      sig do
        returns(
          T.nilable(Onlyfans::AuthenticateStartParams::ProxyCountry::OrSymbol)
        )
      end
      attr_reader :proxy_country

      sig do
        params(
          proxy_country:
            Onlyfans::AuthenticateStartParams::ProxyCountry::OrSymbol
        ).void
      end
      attr_writer :proxy_country

      # The browser User-Agent string. Required when auth_type is `raw_data`.
      sig { returns(T.nilable(String)) }
      attr_reader :user_agent

      sig { params(user_agent: String).void }
      attr_writer :user_agent

      # The X-BC token from request headers. Required when auth_type is `raw_data`.
      sig { returns(T.nilable(String)) }
      attr_reader :xbc

      sig { params(xbc: String).void }
      attr_writer :xbc

      sig do
        params(
          auth_id: String,
          auth_type: Onlyfans::AuthenticateStartParams::AuthType::OrSymbol,
          cookies: String,
          custom_proxy: Onlyfans::AuthenticateStartParams::CustomProxy::OrHash,
          email: String,
          force_connect: T::Boolean,
          name: String,
          password: String,
          proxy_country:
            Onlyfans::AuthenticateStartParams::ProxyCountry::OrSymbol,
          user_agent: String,
          xbc: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The auth_id from OnlyFans session cookies. Required when auth_type is
        # `raw_data`.
        auth_id: nil,
        # The authentication method to use. Defaults to `email_password` if omitted. Use
        # `mobile_app` to authenticate via the FansAPI Auth+ mobile app (no credential
        # fields required).
        auth_type: nil,
        # The full cookie string (semicolon-separated). Required when auth_type is
        # `raw_data`.
        cookies: nil,
        # Custom proxy configuration. Cannot be used together with proxyCountry.
        custom_proxy: nil,
        # The email address of the OnlyFans account. Required when auth_type is
        # `email_password`.
        email: nil,
        # Set to true to connect the account even if it already exists
        force_connect: nil,
        # A display name for the account. If omitted, defaults to the email address or
        # auth_id.
        name: nil,
        # The password of the OnlyFans account. Required when auth_type is
        # `email_password`.
        password: nil,
        # The country of the managed proxy server you want to use. Eg. "us" for United
        # States. Cannot be used together with customProxy.
        proxy_country: nil,
        # The browser User-Agent string. Required when auth_type is `raw_data`.
        user_agent: nil,
        # The X-BC token from request headers. Required when auth_type is `raw_data`.
        xbc: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            auth_id: String,
            auth_type: Onlyfans::AuthenticateStartParams::AuthType::OrSymbol,
            cookies: String,
            custom_proxy: Onlyfans::AuthenticateStartParams::CustomProxy,
            email: String,
            force_connect: T::Boolean,
            name: String,
            password: String,
            proxy_country:
              Onlyfans::AuthenticateStartParams::ProxyCountry::OrSymbol,
            user_agent: String,
            xbc: String,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The authentication method to use. Defaults to `email_password` if omitted. Use
      # `mobile_app` to authenticate via the FansAPI Auth+ mobile app (no credential
      # fields required).
      module AuthType
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfans::AuthenticateStartParams::AuthType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMAIL_PASSWORD =
          T.let(
            :email_password,
            Onlyfans::AuthenticateStartParams::AuthType::TaggedSymbol
          )
        RAW_DATA =
          T.let(
            :raw_data,
            Onlyfans::AuthenticateStartParams::AuthType::TaggedSymbol
          )
        MOBILE_APP =
          T.let(
            :mobile_app,
            Onlyfans::AuthenticateStartParams::AuthType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfans::AuthenticateStartParams::AuthType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class CustomProxy < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::AuthenticateStartParams::CustomProxy,
              Onlyfans::Internal::AnyHash
            )
          end

        # The hostname or IP address of your custom proxy server
        sig { returns(T.nilable(String)) }
        attr_reader :host

        sig { params(host: String).void }
        attr_writer :host

        # The password for proxy authentication (optional)
        sig { returns(T.nilable(String)) }
        attr_reader :password

        sig { params(password: String).void }
        attr_writer :password

        # The port number of your custom proxy server (1-65535)
        sig { returns(T.nilable(Integer)) }
        attr_reader :port

        sig { params(port: Integer).void }
        attr_writer :port

        # The username for proxy authentication (optional)
        sig { returns(T.nilable(String)) }
        attr_reader :username

        sig { params(username: String).void }
        attr_writer :username

        # Custom proxy configuration. Cannot be used together with proxyCountry.
        sig do
          params(
            host: String,
            password: String,
            port: Integer,
            username: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The hostname or IP address of your custom proxy server
          host: nil,
          # The password for proxy authentication (optional)
          password: nil,
          # The port number of your custom proxy server (1-65535)
          port: nil,
          # The username for proxy authentication (optional)
          username: nil
        )
        end

        sig do
          override.returns(
            { host: String, password: String, port: Integer, username: String }
          )
        end
        def to_hash
        end
      end

      # The country of the managed proxy server you want to use. Eg. "us" for United
      # States. Cannot be used together with customProxy.
      module ProxyCountry
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfans::AuthenticateStartParams::ProxyCountry)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        US =
          T.let(
            :us,
            Onlyfans::AuthenticateStartParams::ProxyCountry::TaggedSymbol
          )
        UK =
          T.let(
            :uk,
            Onlyfans::AuthenticateStartParams::ProxyCountry::TaggedSymbol
          )
        GB =
          T.let(
            :gb,
            Onlyfans::AuthenticateStartParams::ProxyCountry::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfans::AuthenticateStartParams::ProxyCountry::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
