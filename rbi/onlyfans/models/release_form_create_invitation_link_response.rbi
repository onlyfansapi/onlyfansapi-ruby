# typed: strong

module Onlyfans
  module Models
    class ReleaseFormCreateInvitationLinkResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Meta
          )
        )
      end
      attr_reader :_meta

      sig do
        params(
          _meta:
            Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(
            Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Data
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta:
            Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Meta::OrHash,
          data:
            Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta:
              Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Meta,
            data:
              Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Meta::Cache,
              _credits:
                Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Meta::Credits,
              _rate_limits:
                Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Meta::Cache,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_cached

          sig { params(is_cached: T::Boolean).void }
          attr_writer :is_cached

          sig { returns(T.nilable(String)) }
          attr_reader :note

          sig { params(note: String).void }
          attr_writer :note

          sig do
            params(is_cached: T::Boolean, note: String).returns(
              T.attached_class
            )
          end
          def self.new(is_cached: nil, note: nil)
          end

          sig { override.returns({ is_cached: T::Boolean, note: String }) }
          def to_hash
          end
        end

        class Credits < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Meta::Credits,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :balance

          sig { params(balance: Integer).void }
          attr_writer :balance

          sig { returns(T.nilable(String)) }
          attr_reader :note

          sig { params(note: String).void }
          attr_writer :note

          sig { returns(T.nilable(Integer)) }
          attr_reader :used

          sig { params(used: Integer).void }
          attr_writer :used

          sig do
            params(balance: Integer, note: String, used: Integer).returns(
              T.attached_class
            )
          end
          def self.new(balance: nil, note: nil, used: nil)
          end

          sig do
            override.returns({ balance: Integer, note: String, used: Integer })
          end
          def to_hash
          end
        end

        class RateLimits < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Meta::RateLimits,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit_day

          sig { params(limit_day: Integer).void }
          attr_writer :limit_day

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit_minute

          sig { params(limit_minute: Integer).void }
          attr_writer :limit_minute

          sig { returns(T.nilable(Integer)) }
          attr_reader :remaining_day

          sig { params(remaining_day: Integer).void }
          attr_writer :remaining_day

          sig { returns(T.nilable(Integer)) }
          attr_reader :remaining_minute

          sig { params(remaining_minute: Integer).void }
          attr_writer :remaining_minute

          sig do
            params(
              limit_day: Integer,
              limit_minute: Integer,
              remaining_day: Integer,
              remaining_minute: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            limit_day: nil,
            limit_minute: nil,
            remaining_day: nil,
            remaining_minute: nil
          )
          end

          sig do
            override.returns(
              {
                limit_day: Integer,
                limit_minute: Integer,
                remaining_day: Integer,
                remaining_minute: Integer
              }
            )
          end
          def to_hash
          end
        end
      end

      class Data < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Data,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :id

        sig { params(id: Integer).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :token

        sig { params(token: String).void }
        attr_writer :token

        sig { returns(T.nilable(String)) }
        attr_reader :date

        sig { params(date: String).void }
        attr_writer :date

        sig { returns(T.nilable(String)) }
        attr_reader :invitation_url

        sig { params(invitation_url: String).void }
        attr_writer :invitation_url

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Data::User
            )
          )
        end
        attr_reader :user

        sig do
          params(
            user:
              Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Data::User::OrHash
          ).void
        end
        attr_writer :user

        sig do
          params(
            id: Integer,
            token: String,
            date: String,
            invitation_url: String,
            name: String,
            type: String,
            user:
              Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Data::User::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          token: nil,
          date: nil,
          invitation_url: nil,
          name: nil,
          type: nil,
          user: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              token: String,
              date: String,
              invitation_url: String,
              name: String,
              type: String,
              user:
                Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Data::User
            }
          )
        end
        def to_hash
        end

        class User < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Data::User,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          sig { returns(T.nilable(String)) }
          attr_reader :avatar

          sig { params(avatar: String).void }
          attr_writer :avatar

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Data::User::AvatarThumbs
              )
            )
          end
          attr_reader :avatar_thumbs

          sig do
            params(
              avatar_thumbs:
                Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Data::User::AvatarThumbs::OrHash
            ).void
          end
          attr_writer :avatar_thumbs

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_active

          sig { params(is_active: T::Boolean).void }
          attr_writer :is_active

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_deleted

          sig { params(is_deleted: T::Boolean).void }
          attr_writer :is_deleted

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_verified

          sig { params(is_verified: T::Boolean).void }
          attr_writer :is_verified

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(String)) }
          attr_reader :username

          sig { params(username: String).void }
          attr_writer :username

          sig { returns(T.nilable(String)) }
          attr_reader :view

          sig { params(view: String).void }
          attr_writer :view

          sig do
            params(
              id: Integer,
              avatar: String,
              avatar_thumbs:
                Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Data::User::AvatarThumbs::OrHash,
              is_active: T::Boolean,
              is_deleted: T::Boolean,
              is_verified: T::Boolean,
              name: String,
              username: String,
              view: String
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            avatar: nil,
            avatar_thumbs: nil,
            is_active: nil,
            is_deleted: nil,
            is_verified: nil,
            name: nil,
            username: nil,
            view: nil
          )
          end

          sig do
            override.returns(
              {
                id: Integer,
                avatar: String,
                avatar_thumbs:
                  Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Data::User::AvatarThumbs,
                is_active: T::Boolean,
                is_deleted: T::Boolean,
                is_verified: T::Boolean,
                name: String,
                username: String,
                view: String
              }
            )
          end
          def to_hash
          end

          class AvatarThumbs < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::ReleaseFormCreateInvitationLinkResponse::Data::User::AvatarThumbs,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :c144

            sig { params(c144: String).void }
            attr_writer :c144

            sig { returns(T.nilable(String)) }
            attr_reader :c50

            sig { params(c50: String).void }
            attr_writer :c50

            sig { params(c144: String, c50: String).returns(T.attached_class) }
            def self.new(c144: nil, c50: nil)
            end

            sig { override.returns({ c144: String, c50: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
