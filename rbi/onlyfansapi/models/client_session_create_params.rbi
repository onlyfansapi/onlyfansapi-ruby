# typed: strong

module Onlyfansapi
  module Models
    class ClientSessionCreateParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::ClientSessionCreateParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      # Display Name of the account visible in your OnlyFansAPI Console Dashboard.
      sig { returns(String) }
      attr_accessor :display_name

      # Your Internal Reference ID for the connected account.
      sig { returns(T.nilable(String)) }
      attr_reader :client_reference_id

      sig { params(client_reference_id: String).void }
      attr_writer :client_reference_id

      sig do
        returns(
          T.nilable(
            Onlyfansapi::ClientSessionCreateParams::ProxyCountry::OrSymbol
          )
        )
      end
      attr_accessor :proxy_country

      sig do
        params(
          display_name: String,
          client_reference_id: String,
          proxy_country:
            T.nilable(
              Onlyfansapi::ClientSessionCreateParams::ProxyCountry::OrSymbol
            ),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Display Name of the account visible in your OnlyFansAPI Console Dashboard.
        display_name:,
        # Your Internal Reference ID for the connected account.
        client_reference_id: nil,
        proxy_country: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            display_name: String,
            client_reference_id: String,
            proxy_country:
              T.nilable(
                Onlyfansapi::ClientSessionCreateParams::ProxyCountry::OrSymbol
              ),
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      module ProxyCountry
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfansapi::ClientSessionCreateParams::ProxyCountry)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        US =
          T.let(
            :us,
            Onlyfansapi::ClientSessionCreateParams::ProxyCountry::TaggedSymbol
          )
        UK =
          T.let(
            :uk,
            Onlyfansapi::ClientSessionCreateParams::ProxyCountry::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfansapi::ClientSessionCreateParams::ProxyCountry::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
