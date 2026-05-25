# typed: strong

module Onlyfans
  module Models
    # For email_password or raw_data auth types
    module AuthenticateStartResponse
      extend Onlyfans::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Onlyfans::Models::AuthenticateStartResponse::UnionMember0,
            Onlyfans::Models::AuthenticateStartResponse::UnionMember1
          )
        end

      class UnionMember0 < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::AuthenticateStartResponse::UnionMember0,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :attempt_id

        sig { params(attempt_id: String).void }
        attr_writer :attempt_id

        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        sig { returns(T.nilable(String)) }
        attr_reader :polling_url

        sig { params(polling_url: String).void }
        attr_writer :polling_url

        # For email_password or raw_data auth types
        sig do
          params(
            attempt_id: String,
            message: String,
            polling_url: String
          ).returns(T.attached_class)
        end
        def self.new(attempt_id: nil, message: nil, polling_url: nil)
        end

        sig do
          override.returns(
            { attempt_id: String, message: String, polling_url: String }
          )
        end
        def to_hash
        end
      end

      class UnionMember1 < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::AuthenticateStartResponse::UnionMember1,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :attempt_id

        sig { params(attempt_id: String).void }
        attr_writer :attempt_id

        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        sig { returns(T.nilable(String)) }
        attr_reader :mobile_auth_session_deeplink

        sig { params(mobile_auth_session_deeplink: String).void }
        attr_writer :mobile_auth_session_deeplink

        sig { returns(T.nilable(String)) }
        attr_reader :polling_url

        sig { params(polling_url: String).void }
        attr_writer :polling_url

        # For mobile_app auth type — includes the session code to scan with the FansAPI
        # Auth+ app
        sig do
          params(
            attempt_id: String,
            message: String,
            mobile_auth_session_deeplink: String,
            polling_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          attempt_id: nil,
          message: nil,
          mobile_auth_session_deeplink: nil,
          polling_url: nil
        )
        end

        sig do
          override.returns(
            {
              attempt_id: String,
              message: String,
              mobile_auth_session_deeplink: String,
              polling_url: String
            }
          )
        end
        def to_hash
        end
      end

      sig do
        override.returns(
          T::Array[Onlyfans::Models::AuthenticateStartResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
