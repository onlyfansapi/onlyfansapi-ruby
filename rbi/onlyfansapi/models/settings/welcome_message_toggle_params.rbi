# typed: strong

module Onlyfansapi
  module Models
    module Settings
      class WelcomeMessageToggleParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Settings::WelcomeMessageToggleParams,
              Onlyfansapi::Internal::AnyHash
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
            request_options: Onlyfansapi::RequestOptions::OrHash
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
              request_options: Onlyfansapi::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
