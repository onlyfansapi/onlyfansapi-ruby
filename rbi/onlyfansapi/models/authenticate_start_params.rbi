# typed: strong

module Onlyfansapi
  module Models
    class AuthenticateStartParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::AuthenticateStartParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      # The email address of the OnlyFans account
      sig { returns(String) }
      attr_accessor :email

      # The password of the OnlyFans account
      sig { returns(String) }
      attr_accessor :password

      # The country of the proxy server you want to use. Eg. "us" for United States
      sig do
        returns(Onlyfansapi::AuthenticateStartParams::ProxyCountry::OrSymbol)
      end
      attr_accessor :proxy_country

      sig do
        params(
          email: String,
          password: String,
          proxy_country:
            Onlyfansapi::AuthenticateStartParams::ProxyCountry::OrSymbol,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The email address of the OnlyFans account
        email:,
        # The password of the OnlyFans account
        password:,
        # The country of the proxy server you want to use. Eg. "us" for United States
        proxy_country:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            email: String,
            password: String,
            proxy_country:
              Onlyfansapi::AuthenticateStartParams::ProxyCountry::OrSymbol,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The country of the proxy server you want to use. Eg. "us" for United States
      module ProxyCountry
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfansapi::AuthenticateStartParams::ProxyCountry)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        US =
          T.let(
            :us,
            Onlyfansapi::AuthenticateStartParams::ProxyCountry::TaggedSymbol
          )
        UK =
          T.let(
            :uk,
            Onlyfansapi::AuthenticateStartParams::ProxyCountry::TaggedSymbol
          )
        DE =
          T.let(
            :de,
            Onlyfansapi::AuthenticateStartParams::ProxyCountry::TaggedSymbol
          )
        ES =
          T.let(
            :es,
            Onlyfansapi::AuthenticateStartParams::ProxyCountry::TaggedSymbol
          )
        FR =
          T.let(
            :fr,
            Onlyfansapi::AuthenticateStartParams::ProxyCountry::TaggedSymbol
          )
        IT =
          T.let(
            :it,
            Onlyfansapi::AuthenticateStartParams::ProxyCountry::TaggedSymbol
          )
        UA =
          T.let(
            :ua,
            Onlyfansapi::AuthenticateStartParams::ProxyCountry::TaggedSymbol
          )
        PL =
          T.let(
            :pl,
            Onlyfansapi::AuthenticateStartParams::ProxyCountry::TaggedSymbol
          )
        RO =
          T.let(
            :ro,
            Onlyfansapi::AuthenticateStartParams::ProxyCountry::TaggedSymbol
          )
        CZ =
          T.let(
            :cz,
            Onlyfansapi::AuthenticateStartParams::ProxyCountry::TaggedSymbol
          )
        HU =
          T.let(
            :hu,
            Onlyfansapi::AuthenticateStartParams::ProxyCountry::TaggedSymbol
          )
        SK =
          T.let(
            :sk,
            Onlyfansapi::AuthenticateStartParams::ProxyCountry::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfansapi::AuthenticateStartParams::ProxyCountry::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
