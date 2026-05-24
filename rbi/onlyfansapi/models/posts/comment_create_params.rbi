# typed: strong

module Onlyfansapi
  module Models
    module Posts
      class CommentCreateParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Posts::CommentCreateParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        sig { returns(String) }
        attr_accessor :post_id

        # The text of the comment.
        sig { returns(String) }
        attr_accessor :text

        # The ID of the comment to which this comment is a reply.
        sig { returns(T.nilable(Integer)) }
        attr_reader :answer_to

        sig { params(answer_to: Integer).void }
        attr_writer :answer_to

        # The ID of the Giphy to include in the comment.
        sig { returns(T.nilable(String)) }
        attr_reader :giphy_id

        sig { params(giphy_id: String).void }
        attr_writer :giphy_id

        sig do
          params(
            account: String,
            post_id: String,
            text: String,
            answer_to: Integer,
            giphy_id: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          post_id:,
          # The text of the comment.
          text:,
          # The ID of the comment to which this comment is a reply.
          answer_to: nil,
          # The ID of the Giphy to include in the comment.
          giphy_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              post_id: String,
              text: String,
              answer_to: Integer,
              giphy_id: String,
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
