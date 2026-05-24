# typed: strong

module Onlyfansapi
  module Models
    module TrialLinks
      class TagRemoveParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::TrialLinks::TagRemoveParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        sig { returns(Integer) }
        attr_accessor :trial_link_id

        # Array of tag names to remove from the trial link.
        sig { returns(T::Array[String]) }
        attr_accessor :tags

        sig do
          params(
            account: String,
            trial_link_id: Integer,
            tags: T::Array[String],
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          trial_link_id:,
          # Array of tag names to remove from the trial link.
          tags:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              trial_link_id: Integer,
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
