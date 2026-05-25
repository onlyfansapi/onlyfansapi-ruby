# typed: strong

module Onlyfans
  module Models
    module TrackingLinks
      class TagRemoveParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::TrackingLinks::TagRemoveParams,
              Onlyfans::Internal::AnyHash
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
            request_options: Onlyfans::RequestOptions::OrHash
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
