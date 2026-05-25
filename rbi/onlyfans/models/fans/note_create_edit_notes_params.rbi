# typed: strong

module Onlyfans
  module Models
    module Fans
      class NoteCreateEditNotesParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Fans::NoteCreateEditNotesParams,
              Onlyfans::Internal::AnyHash
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
            request_options: Onlyfans::RequestOptions::OrHash
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
