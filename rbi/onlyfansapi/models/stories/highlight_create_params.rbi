# typed: strong

module Onlyfansapi
  module Models
    module Stories
      class HighlightCreateParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Stories::HighlightCreateParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        # The ID of the story to use as the cover for the highlight
        sig { returns(Integer) }
        attr_accessor :cover_story_id

        # An array of story IDs to include in the highlight
        sig { returns(T::Array[String]) }
        attr_accessor :story_ids

        # The title of the story highlight
        sig { returns(String) }
        attr_accessor :title

        sig do
          params(
            account: String,
            cover_story_id: Integer,
            story_ids: T::Array[String],
            title: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          # The ID of the story to use as the cover for the highlight
          cover_story_id:,
          # An array of story IDs to include in the highlight
          story_ids:,
          # The title of the story highlight
          title:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              cover_story_id: Integer,
              story_ids: T::Array[String],
              title: String,
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
