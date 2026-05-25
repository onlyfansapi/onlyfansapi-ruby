# typed: strong

module Onlyfans
  module Models
    class ReleaseFormCreateReleaseFormResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::ReleaseFormCreateReleaseFormResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta
          )
        )
      end
      attr_reader :_meta

      sig do
        params(
          _meta:
            Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(
            Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta:
            Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::OrHash,
          data:
            Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta,
            data: Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::Cache,
              _credits:
                Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::Credits,
              _rate_limits:
                Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::Cache,
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
                Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::Credits,
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
                Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::RateLimits,
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
              Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :id

        sig { params(id: Integer).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_accessor :approved_at

        sig { returns(T.nilable(String)) }
        attr_reader :code

        sig { params(code: String).void }
        attr_writer :code

        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :signature

        sig { params(signature: String).void }
        attr_writer :signature

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :signed

        sig { params(signed: T::Array[T.anything]).void }
        attr_writer :signed

        sig { returns(T.nilable(Integer)) }
        attr_reader :signers_count

        sig { params(signers_count: Integer).void }
        attr_writer :signers_count

        sig { returns(T.nilable(String)) }
        attr_reader :submission_url

        sig { params(submission_url: String).void }
        attr_writer :submission_url

        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User
            )
          )
        end
        attr_reader :user

        sig do
          params(
            user:
              Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::OrHash
          ).void
        end
        attr_writer :user

        sig do
          params(
            id: Integer,
            approved_at: T.nilable(String),
            code: String,
            created_at: String,
            name: String,
            signature: String,
            signed: T::Array[T.anything],
            signers_count: Integer,
            submission_url: String,
            type: String,
            user:
              Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          approved_at: nil,
          code: nil,
          created_at: nil,
          name: nil,
          signature: nil,
          signed: nil,
          signers_count: nil,
          submission_url: nil,
          type: nil,
          user: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              approved_at: T.nilable(String),
              code: String,
              created_at: String,
              name: String,
              signature: String,
              signed: T::Array[T.anything],
              signers_count: Integer,
              submission_url: String,
              type: String,
              user:
                Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User
            }
          )
        end
        def to_hash
        end

        class User < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User,
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
                Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::AvatarThumbs
              )
            )
          end
          attr_reader :avatar_thumbs

          sig do
            params(
              avatar_thumbs:
                Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::AvatarThumbs::OrHash
            ).void
          end
          attr_writer :avatar_thumbs

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_pay_internal

          sig { params(can_pay_internal: T::Boolean).void }
          attr_writer :can_pay_internal

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_trial_send

          sig { params(can_trial_send: T::Boolean).void }
          attr_writer :can_trial_send

          sig { returns(T.nilable(String)) }
          attr_reader :header

          sig { params(header: String).void }
          attr_writer :header

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::HeaderSize
              )
            )
          end
          attr_reader :header_size

          sig do
            params(
              header_size:
                Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::HeaderSize::OrHash
            ).void
          end
          attr_writer :header_size

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::HeaderThumbs
              )
            )
          end
          attr_reader :header_thumbs

          sig do
            params(
              header_thumbs:
                Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::HeaderThumbs::OrHash
            ).void
          end
          attr_writer :header_thumbs

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_verified

          sig { params(is_verified: T::Boolean).void }
          attr_writer :is_verified

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(Float)) }
          attr_reader :subscribe_price

          sig { params(subscribe_price: Float).void }
          attr_writer :subscribe_price

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :tips_enabled

          sig { params(tips_enabled: T::Boolean).void }
          attr_writer :tips_enabled

          sig { returns(T.nilable(Integer)) }
          attr_reader :tips_max

          sig { params(tips_max: Integer).void }
          attr_writer :tips_max

          sig { returns(T.nilable(Integer)) }
          attr_reader :tips_min

          sig { params(tips_min: Integer).void }
          attr_writer :tips_min

          sig { returns(T.nilable(Integer)) }
          attr_reader :tips_min_internal

          sig { params(tips_min_internal: Integer).void }
          attr_writer :tips_min_internal

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
                Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::AvatarThumbs::OrHash,
              can_pay_internal: T::Boolean,
              can_trial_send: T::Boolean,
              header: String,
              header_size:
                Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::HeaderSize::OrHash,
              header_thumbs:
                Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::HeaderThumbs::OrHash,
              is_verified: T::Boolean,
              name: String,
              subscribe_price: Float,
              tips_enabled: T::Boolean,
              tips_max: Integer,
              tips_min: Integer,
              tips_min_internal: Integer,
              username: String,
              view: String
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            avatar: nil,
            avatar_thumbs: nil,
            can_pay_internal: nil,
            can_trial_send: nil,
            header: nil,
            header_size: nil,
            header_thumbs: nil,
            is_verified: nil,
            name: nil,
            subscribe_price: nil,
            tips_enabled: nil,
            tips_max: nil,
            tips_min: nil,
            tips_min_internal: nil,
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
                  Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::AvatarThumbs,
                can_pay_internal: T::Boolean,
                can_trial_send: T::Boolean,
                header: String,
                header_size:
                  Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::HeaderSize,
                header_thumbs:
                  Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::HeaderThumbs,
                is_verified: T::Boolean,
                name: String,
                subscribe_price: Float,
                tips_enabled: T::Boolean,
                tips_max: Integer,
                tips_min: Integer,
                tips_min_internal: Integer,
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
                  Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::AvatarThumbs,
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

          class HeaderSize < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::HeaderSize,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :height

            sig { params(height: Integer).void }
            attr_writer :height

            sig { returns(T.nilable(Integer)) }
            attr_reader :width

            sig { params(width: Integer).void }
            attr_writer :width

            sig do
              params(height: Integer, width: Integer).returns(T.attached_class)
            end
            def self.new(height: nil, width: nil)
            end

            sig { override.returns({ height: Integer, width: Integer }) }
            def to_hash
            end
          end

          class HeaderThumbs < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::HeaderThumbs,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :w480

            sig { params(w480: String).void }
            attr_writer :w480

            sig { returns(T.nilable(String)) }
            attr_reader :w760

            sig { params(w760: String).void }
            attr_writer :w760

            sig { params(w480: String, w760: String).returns(T.attached_class) }
            def self.new(w480: nil, w760: nil)
            end

            sig { override.returns({ w480: String, w760: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
