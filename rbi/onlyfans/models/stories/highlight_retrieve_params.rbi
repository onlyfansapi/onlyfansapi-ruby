# typed: strong

module Onlyfans
  module Models
    module Stories
      class HighlightRetrieveParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Stories::HighlightRetrieveParams,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        sig { returns(Integer) }
        attr_accessor :highlight_id

        sig do
          params(
            account: String,
            highlight_id: Integer,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(account:, highlight_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              account: String,
              highlight_id: Integer,
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
