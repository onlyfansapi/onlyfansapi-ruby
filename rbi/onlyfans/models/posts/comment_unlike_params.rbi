# typed: strong

module Onlyfans
  module Models
    module Posts
      class CommentUnlikeParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Posts::CommentUnlikeParams,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        sig { returns(Integer) }
        attr_accessor :post_id

        sig { returns(Integer) }
        attr_accessor :comment_id

        sig do
          params(
            account: String,
            post_id: Integer,
            comment_id: Integer,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(account:, post_id:, comment_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              account: String,
              post_id: Integer,
              comment_id: Integer,
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
