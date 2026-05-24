# typed: strong

module Onlyfansapi
  module Models
    module Notifications
      class TabsOrderUpdateParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Notifications::TabsOrderUpdateParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        # Array of tab keys. Must include exactly these: all, subscriptions, onlyfans,
        # purchases, tips, tags, comments, mentions, likes, promotions.
        sig { returns(T::Array[String]) }
        attr_accessor :tabs

        sig do
          params(
            account: String,
            tabs: T::Array[String],
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          # Array of tab keys. Must include exactly these: all, subscriptions, onlyfans,
          # purchases, tips, tags, comments, mentions, likes, promotions.
          tabs:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              tabs: T::Array[String],
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
