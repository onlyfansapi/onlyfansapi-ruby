# typed: strong

module Onlyfansapi
  module Models
    module Stories
      class HighlightUpdateParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Stories::HighlightUpdateParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        sig { returns(Integer) }
        attr_accessor :highlight_id

        # The ID of the story to use as the cover for the highlight. Provide the old value
        # if you don't want to change it.
        sig { returns(Integer) }
        attr_accessor :cover_story_id

        # An array of story IDs to include in the highlight. Provide the old value if you
        # don't want to change it.
        sig { returns(T::Array[String]) }
        attr_accessor :story_ids

        # The new title for the story highlight. Provide the old value if you don't want
        # to change it.
        sig { returns(String) }
        attr_accessor :title

        sig do
          params(
            account: String,
            highlight_id: Integer,
            cover_story_id: Integer,
            story_ids: T::Array[String],
            title: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          highlight_id:,
          # The ID of the story to use as the cover for the highlight. Provide the old value
          # if you don't want to change it.
          cover_story_id:,
          # An array of story IDs to include in the highlight. Provide the old value if you
          # don't want to change it.
          story_ids:,
          # The new title for the story highlight. Provide the old value if you don't want
          # to change it.
          title:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              highlight_id: Integer,
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
