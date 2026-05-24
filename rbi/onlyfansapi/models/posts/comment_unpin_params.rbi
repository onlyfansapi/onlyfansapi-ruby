# typed: strong

module Onlyfansapi
  module Models
    module Posts
      class CommentUnpinParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Posts::CommentUnpinParams,
              Onlyfansapi::Internal::AnyHash
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
            request_options: Onlyfansapi::RequestOptions::OrHash
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
