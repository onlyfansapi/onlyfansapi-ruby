# typed: strong

module Onlyfans
  module Models
    module Stories
      class HighlightAddStoryParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Stories::HighlightAddStoryParams,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        sig { returns(Integer) }
        attr_accessor :highlight_id

        sig { returns(String) }
        attr_accessor :path_story_id

        # The ID of the story to add to the highlight
        sig { returns(Integer) }
        attr_accessor :body_story_id

        sig do
          params(
            account: String,
            highlight_id: Integer,
            path_story_id: String,
            body_story_id: Integer,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          highlight_id:,
          path_story_id:,
          # The ID of the story to add to the highlight
          body_story_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              highlight_id: Integer,
              path_story_id: String,
              body_story_id: Integer,
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
