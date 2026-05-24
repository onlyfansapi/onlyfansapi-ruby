# typed: strong

module Onlyfansapi
  module Models
    module Fans
      class NoteCreateEditNotesParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Fans::NoteCreateEditNotesParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        sig { returns(String) }
        attr_accessor :fan_id

        # The new note value.
        sig { returns(String) }
        attr_accessor :notes

        sig do
          params(
            account: String,
            fan_id: String,
            notes: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          fan_id:,
          # The new note value.
          notes:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              fan_id: String,
              notes: String,
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
