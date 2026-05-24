# typed: strong

module Onlyfansapi
  module Models
    module Settings
      class SocialMediaButtonUpdateParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Settings::SocialMediaButtonUpdateParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        sig { returns(String) }
        attr_accessor :button_id

        # The new label for the button
        sig { returns(String) }
        attr_accessor :label

        sig do
          params(
            account: String,
            button_id: String,
            label: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          button_id:,
          # The new label for the button
          label:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              button_id: String,
              label: String,
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
