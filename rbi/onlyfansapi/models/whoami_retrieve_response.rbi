# typed: strong

module Onlyfansapi
  module Models
    class WhoamiRetrieveResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::WhoamiRetrieveResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Onlyfansapi::Models::WhoamiRetrieveResponse::APIKey))
      end
      attr_reader :api_key

      sig do
        params(
          api_key: Onlyfansapi::Models::WhoamiRetrieveResponse::APIKey::OrHash
        ).void
      end
      attr_writer :api_key

      sig do
        returns(T.nilable(Onlyfansapi::Models::WhoamiRetrieveResponse::Team))
      end
      attr_reader :team

      sig do
        params(
          team: Onlyfansapi::Models::WhoamiRetrieveResponse::Team::OrHash
        ).void
      end
      attr_writer :team

      sig do
        params(
          api_key: Onlyfansapi::Models::WhoamiRetrieveResponse::APIKey::OrHash,
          team: Onlyfansapi::Models::WhoamiRetrieveResponse::Team::OrHash
        ).returns(T.attached_class)
      end
      def self.new(api_key: nil, team: nil)
      end

      sig do
        override.returns(
          {
            api_key: Onlyfansapi::Models::WhoamiRetrieveResponse::APIKey,
            team: Onlyfansapi::Models::WhoamiRetrieveResponse::Team
          }
        )
      end
      def to_hash
      end

      class APIKey < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::WhoamiRetrieveResponse::APIKey,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :last_used_at

        sig { params(last_used_at: String).void }
        attr_writer :last_used_at

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            created_at: String,
            last_used_at: String,
            name: String
          ).returns(T.attached_class)
        end
        def self.new(created_at: nil, last_used_at: nil, name: nil)
        end

        sig do
          override.returns(
            { created_at: String, last_used_at: String, name: String }
          )
        end
        def to_hash
        end
      end

      class Team < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::WhoamiRetrieveResponse::Team,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :slug

        sig { params(slug: String).void }
        attr_writer :slug

        sig { params(name: String, slug: String).returns(T.attached_class) }
        def self.new(name: nil, slug: nil)
        end

        sig { override.returns({ name: String, slug: String }) }
        def to_hash
        end
      end
    end
  end
end
