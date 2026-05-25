# typed: strong

module Onlyfans
  module Models
    module Settings
      class WelcomeMessageToggleParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Settings::WelcomeMessageToggleParams,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        # Whether the welcome message should be enabled.
        sig { returns(T::Boolean) }
        attr_accessor :enabled

        sig do
          params(
            account: String,
            enabled: T::Boolean,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          # Whether the welcome message should be enabled.
          enabled:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              enabled: T::Boolean,
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
