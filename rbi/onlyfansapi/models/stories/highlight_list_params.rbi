# typed: strong

module Onlyfansapi
  module Models
    module Stories
      class HighlightListParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Stories::HighlightListParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        # Number of highlights to return (default = 5)
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Number of highlights to skip for pagination
        sig { returns(T.nilable(Integer)) }
        attr_reader :offset

        sig { params(offset: Integer).void }
        attr_writer :offset

        sig do
          params(
            account: String,
            limit: Integer,
            offset: Integer,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          # Number of highlights to return (default = 5)
          limit: nil,
          # Number of highlights to skip for pagination
          offset: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              limit: Integer,
              offset: Integer,
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
