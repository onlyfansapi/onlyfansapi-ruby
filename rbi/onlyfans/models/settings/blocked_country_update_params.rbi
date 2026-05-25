# typed: strong

module Onlyfans
  module Models
    module Settings
      class BlockedCountryUpdateParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Settings::BlockedCountryUpdateParams,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        # List of all ISO 3166-1 alpha-2 country codes to block including existing ones.
        # If you want to unblock all countries, set this to an empty array or `null`.
        sig { returns(T::Array[String]) }
        attr_accessor :blocked_countries

        # Blocked states payload forwarded to OnlyFans. Defaults to an empty array.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :blocked_states

        sig { params(blocked_states: T::Array[String]).void }
        attr_writer :blocked_states

        sig do
          params(
            account: String,
            blocked_countries: T::Array[String],
            blocked_states: T::Array[String],
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          # List of all ISO 3166-1 alpha-2 country codes to block including existing ones.
          # If you want to unblock all countries, set this to an empty array or `null`.
          blocked_countries:,
          # Blocked states payload forwarded to OnlyFans. Defaults to an empty array.
          blocked_states: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              blocked_countries: T::Array[String],
              blocked_states: T::Array[String],
              request_options: Onlyfans::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
