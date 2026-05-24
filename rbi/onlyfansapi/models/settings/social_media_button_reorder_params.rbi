# typed: strong

module Onlyfansapi
  module Models
    module Settings
      class SocialMediaButtonReorderParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Settings::SocialMediaButtonReorderParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        # The new order of the buttons
        sig { returns(T::Array[String]) }
        attr_accessor :button_ids

        sig do
          params(
            account: String,
            button_ids: T::Array[String],
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          # The new order of the buttons
          button_ids:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              button_ids: T::Array[String],
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
