# typed: strong

module Onlyfans
  module Models
    module Chats
      class MessageRetrieveResponse < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::Chats::MessageRetrieveResponse,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfans::Models::Chats::MessageRetrieveResponse::Meta)
          )
        end
        attr_reader :_meta

        sig do
          params(
            _meta:
              Onlyfans::Models::Chats::MessageRetrieveResponse::Meta::OrHash
          ).void
        end
        attr_writer :_meta

        sig do
          returns(
            T.nilable(Onlyfans::Models::Chats::MessageRetrieveResponse::Data)
          )
        end
        attr_reader :data

        sig do
          params(
            data: Onlyfans::Models::Chats::MessageRetrieveResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            _meta:
              Onlyfans::Models::Chats::MessageRetrieveResponse::Meta::OrHash,
            data: Onlyfans::Models::Chats::MessageRetrieveResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_meta: nil, data: nil)
        end

        sig do
          override.returns(
            {
              _meta: Onlyfans::Models::Chats::MessageRetrieveResponse::Meta,
              data: Onlyfans::Models::Chats::MessageRetrieveResponse::Data
            }
          )
        end
        def to_hash
        end

        class Meta < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::Chats::MessageRetrieveResponse::Meta,
                Onlyfans::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Chats::MessageRetrieveResponse::Meta::Cache
              )
            )
          end
          attr_reader :_cache

          sig do
            params(
              _cache:
                Onlyfans::Models::Chats::MessageRetrieveResponse::Meta::Cache::OrHash
            ).void
          end
          attr_writer :_cache

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Chats::MessageRetrieveResponse::Meta::Credits
              )
            )
          end
          attr_reader :_credits

          sig do
            params(
              _credits:
                Onlyfans::Models::Chats::MessageRetrieveResponse::Meta::Credits::OrHash
            ).void
          end
          attr_writer :_credits

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Chats::MessageRetrieveResponse::Meta::RateLimits
              )
            )
          end
          attr_reader :_rate_limits

          sig do
            params(
              _rate_limits:
                Onlyfans::Models::Chats::MessageRetrieveResponse::Meta::RateLimits::OrHash
            ).void
          end
          attr_writer :_rate_limits

          sig do
            params(
              _cache:
                Onlyfans::Models::Chats::MessageRetrieveResponse::Meta::Cache::OrHash,
              _credits:
                Onlyfans::Models::Chats::MessageRetrieveResponse::Meta::Credits::OrHash,
              _rate_limits:
                Onlyfans::Models::Chats::MessageRetrieveResponse::Meta::RateLimits::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
          end

          sig do
            override.returns(
              {
                _cache:
                  Onlyfans::Models::Chats::MessageRetrieveResponse::Meta::Cache,
                _credits:
                  Onlyfans::Models::Chats::MessageRetrieveResponse::Meta::Credits,
                _rate_limits:
                  Onlyfans::Models::Chats::MessageRetrieveResponse::Meta::RateLimits
              }
            )
          end
          def to_hash
          end

          class Cache < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Chats::MessageRetrieveResponse::Meta::Cache,
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
                  Onlyfans::Models::Chats::MessageRetrieveResponse::Meta::Credits,
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
              override.returns(
                { balance: Integer, note: String, used: Integer }
              )
            end
            def to_hash
            end
          end

          class RateLimits < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Chats::MessageRetrieveResponse::Meta::RateLimits,
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
                Onlyfans::Models::Chats::MessageRetrieveResponse::Data,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_be_pinned

          sig { params(can_be_pinned: T::Boolean).void }
          attr_writer :can_be_pinned

          sig { returns(T.nilable(Integer)) }
          attr_reader :cancel_seconds

          sig { params(cancel_seconds: Integer).void }
          attr_writer :cancel_seconds

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_purchase

          sig { params(can_purchase: T::Boolean).void }
          attr_writer :can_purchase

          sig { returns(T.nilable(String)) }
          attr_reader :can_purchase_reason

          sig { params(can_purchase_reason: String).void }
          attr_writer :can_purchase_reason

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_report

          sig { params(can_report: T::Boolean).void }
          attr_writer :can_report

          sig { returns(T.nilable(String)) }
          attr_reader :changed_at

          sig { params(changed_at: String).void }
          attr_writer :changed_at

          sig { returns(T.nilable(String)) }
          attr_reader :created_at

          sig { params(created_at: String).void }
          attr_writer :created_at

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Chats::MessageRetrieveResponse::Data::FromUser
              )
            )
          end
          attr_reader :from_user

          sig do
            params(
              from_user:
                Onlyfans::Models::Chats::MessageRetrieveResponse::Data::FromUser::OrHash
            ).void
          end
          attr_writer :from_user

          sig { returns(T.nilable(String)) }
          attr_accessor :giphy_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_couple_people_media

          sig { params(is_couple_people_media: T::Boolean).void }
          attr_writer :is_couple_people_media

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_free

          sig { params(is_free: T::Boolean).void }
          attr_writer :is_free

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_from_queue

          sig { params(is_from_queue: T::Boolean).void }
          attr_writer :is_from_queue

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_liked

          sig { params(is_liked: T::Boolean).void }
          attr_writer :is_liked

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_markdown_disabled

          sig { params(is_markdown_disabled: T::Boolean).void }
          attr_writer :is_markdown_disabled

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_media_ready

          sig { params(is_media_ready: T::Boolean).void }
          attr_writer :is_media_ready

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_new

          sig { params(is_new: T::Boolean).void }
          attr_writer :is_new

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_opened

          sig { params(is_opened: T::Boolean).void }
          attr_writer :is_opened

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_pinned

          sig { params(is_pinned: T::Boolean).void }
          attr_writer :is_pinned

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_reported_by_me

          sig { params(is_reported_by_me: T::Boolean).void }
          attr_writer :is_reported_by_me

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_sent_by_me

          sig { params(is_sent_by_me: T::Boolean).void }
          attr_writer :is_sent_by_me

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_tip

          sig { params(is_tip: T::Boolean).void }
          attr_writer :is_tip

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :locked_text

          sig { params(locked_text: T::Boolean).void }
          attr_writer :locked_text

          sig { returns(T.nilable(T::Array[T.anything])) }
          attr_reader :media

          sig { params(media: T::Array[T.anything]).void }
          attr_writer :media

          sig { returns(T.nilable(Integer)) }
          attr_reader :media_count

          sig { params(media_count: Integer).void }
          attr_writer :media_count

          sig { returns(T.nilable(T::Array[T.anything])) }
          attr_reader :previews

          sig { params(previews: T::Array[T.anything]).void }
          attr_writer :previews

          sig { returns(T.nilable(Integer)) }
          attr_reader :price

          sig { params(price: Integer).void }
          attr_writer :price

          sig { returns(T.nilable(Integer)) }
          attr_reader :queue_id

          sig { params(queue_id: Integer).void }
          attr_writer :queue_id

          sig { returns(T.nilable(T::Array[T.anything])) }
          attr_reader :release_forms

          sig { params(release_forms: T::Array[T.anything]).void }
          attr_writer :release_forms

          sig { returns(T.nilable(String)) }
          attr_reader :response_type

          sig { params(response_type: String).void }
          attr_writer :response_type

          sig { returns(T.nilable(String)) }
          attr_reader :text

          sig { params(text: String).void }
          attr_writer :text

          sig do
            params(
              id: Integer,
              can_be_pinned: T::Boolean,
              cancel_seconds: Integer,
              can_purchase: T::Boolean,
              can_purchase_reason: String,
              can_report: T::Boolean,
              changed_at: String,
              created_at: String,
              from_user:
                Onlyfans::Models::Chats::MessageRetrieveResponse::Data::FromUser::OrHash,
              giphy_id: T.nilable(String),
              is_couple_people_media: T::Boolean,
              is_free: T::Boolean,
              is_from_queue: T::Boolean,
              is_liked: T::Boolean,
              is_markdown_disabled: T::Boolean,
              is_media_ready: T::Boolean,
              is_new: T::Boolean,
              is_opened: T::Boolean,
              is_pinned: T::Boolean,
              is_reported_by_me: T::Boolean,
              is_sent_by_me: T::Boolean,
              is_tip: T::Boolean,
              locked_text: T::Boolean,
              media: T::Array[T.anything],
              media_count: Integer,
              previews: T::Array[T.anything],
              price: Integer,
              queue_id: Integer,
              release_forms: T::Array[T.anything],
              response_type: String,
              text: String
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            can_be_pinned: nil,
            cancel_seconds: nil,
            can_purchase: nil,
            can_purchase_reason: nil,
            can_report: nil,
            changed_at: nil,
            created_at: nil,
            from_user: nil,
            giphy_id: nil,
            is_couple_people_media: nil,
            is_free: nil,
            is_from_queue: nil,
            is_liked: nil,
            is_markdown_disabled: nil,
            is_media_ready: nil,
            is_new: nil,
            is_opened: nil,
            is_pinned: nil,
            is_reported_by_me: nil,
            is_sent_by_me: nil,
            is_tip: nil,
            locked_text: nil,
            media: nil,
            media_count: nil,
            previews: nil,
            price: nil,
            queue_id: nil,
            release_forms: nil,
            response_type: nil,
            text: nil
          )
          end

          sig do
            override.returns(
              {
                id: Integer,
                can_be_pinned: T::Boolean,
                cancel_seconds: Integer,
                can_purchase: T::Boolean,
                can_purchase_reason: String,
                can_report: T::Boolean,
                changed_at: String,
                created_at: String,
                from_user:
                  Onlyfans::Models::Chats::MessageRetrieveResponse::Data::FromUser,
                giphy_id: T.nilable(String),
                is_couple_people_media: T::Boolean,
                is_free: T::Boolean,
                is_from_queue: T::Boolean,
                is_liked: T::Boolean,
                is_markdown_disabled: T::Boolean,
                is_media_ready: T::Boolean,
                is_new: T::Boolean,
                is_opened: T::Boolean,
                is_pinned: T::Boolean,
                is_reported_by_me: T::Boolean,
                is_sent_by_me: T::Boolean,
                is_tip: T::Boolean,
                locked_text: T::Boolean,
                media: T::Array[T.anything],
                media_count: Integer,
                previews: T::Array[T.anything],
                price: Integer,
                queue_id: Integer,
                release_forms: T::Array[T.anything],
                response_type: String,
                text: String
              }
            )
          end
          def to_hash
          end

          class FromUser < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Chats::MessageRetrieveResponse::Data::FromUser,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(String)) }
            attr_reader :_view

            sig { params(_view: String).void }
            attr_writer :_view

            sig { params(id: Integer, _view: String).returns(T.attached_class) }
            def self.new(id: nil, _view: nil)
            end

            sig { override.returns({ id: Integer, _view: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
