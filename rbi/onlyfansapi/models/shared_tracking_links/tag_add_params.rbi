# typed: strong

module Onlyfansapi
  module Models
    module SharedTrackingLinks
      class TagAddParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::SharedTrackingLinks::TagAddParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        sig { returns(Integer) }
        attr_accessor :shared_tracking_link_id

        # Array of tag names to add to the shared tracking link.
        sig { returns(T::Array[String]) }
        attr_accessor :tags

        sig do
          params(
            account: String,
            shared_tracking_link_id: Integer,
            tags: T::Array[String],
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          shared_tracking_link_id:,
          # Array of tag names to add to the shared tracking link.
          tags:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              shared_tracking_link_id: Integer,
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
