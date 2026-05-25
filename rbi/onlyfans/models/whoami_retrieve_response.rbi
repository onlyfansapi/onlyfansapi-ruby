# typed: strong

module Onlyfans
  module Models
    class WhoamiRetrieveResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::WhoamiRetrieveResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Onlyfans::Models::WhoamiRetrieveResponse::APIKey))
      end
      attr_reader :api_key

      sig do
        params(
          api_key: Onlyfans::Models::WhoamiRetrieveResponse::APIKey::OrHash
        ).void
      end
      attr_writer :api_key

      sig { returns(T.nilable(Onlyfans::Models::WhoamiRetrieveResponse::Team)) }
      attr_reader :team

      sig do
        params(
          team: Onlyfans::Models::WhoamiRetrieveResponse::Team::OrHash
        ).void
      end
      attr_writer :team

      sig do
        params(
          api_key: Onlyfans::Models::WhoamiRetrieveResponse::APIKey::OrHash,
          team: Onlyfans::Models::WhoamiRetrieveResponse::Team::OrHash
        ).returns(T.attached_class)
      end
      def self.new(api_key: nil, team: nil)
      end

      sig do
        override.returns(
          {
            api_key: Onlyfans::Models::WhoamiRetrieveResponse::APIKey,
            team: Onlyfans::Models::WhoamiRetrieveResponse::Team
          }
        )
      end
      def to_hash
      end

      class APIKey < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::WhoamiRetrieveResponse::APIKey,
              Onlyfans::Internal::AnyHash
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

      class Team < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::WhoamiRetrieveResponse::Team,
              Onlyfans::Internal::AnyHash
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
