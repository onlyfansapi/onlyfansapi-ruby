# typed: strong

module Onlyfans
  module Models
    module Fans
      class SummaryGenerateSummaryResponse < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::Fans::SummaryGenerateSummaryResponse,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        sig do
          params(message: String, status: String).returns(T.attached_class)
        end
        def self.new(message: nil, status: nil)
        end

        sig { override.returns({ message: String, status: String }) }
        def to_hash
        end
      end
    end
  end
end
