# typed: strong

module Onlyfansapi
  module Models
    module TrackingLinks
      class TagRemoveParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::TrackingLinks::TagRemoveParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        sig { returns(Integer) }
        attr_accessor :tracking_link_id

        # Array of tag names to remove from the tracking link.
        sig { returns(T::Array[String]) }
        attr_accessor :tags

        sig do
          params(
            account: String,
            tracking_link_id: Integer,
            tags: T::Array[String],
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          tracking_link_id:,
          # Array of tag names to remove from the tracking link.
          tags:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              tracking_link_id: Integer,
              tags: T::Array[String],
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
