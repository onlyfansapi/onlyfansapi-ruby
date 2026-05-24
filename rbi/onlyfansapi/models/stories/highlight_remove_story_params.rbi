# typed: strong

module Onlyfansapi
  module Models
    module Stories
      class HighlightRemoveStoryParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Stories::HighlightRemoveStoryParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        sig { returns(Integer) }
        attr_accessor :highlight_id

        sig { returns(String) }
        attr_accessor :story_id

        sig do
          params(
            account: String,
            highlight_id: Integer,
            story_id: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(account:, highlight_id:, story_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              account: String,
              highlight_id: Integer,
              story_id: String,
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
