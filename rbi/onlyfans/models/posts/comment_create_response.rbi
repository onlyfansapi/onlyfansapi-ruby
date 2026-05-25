# typed: strong

module Onlyfans
  module Models
    module Posts
      class CommentCreateResponse < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::Posts::CommentCreateResponse,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfans::Models::Posts::CommentCreateResponse::Meta)
          )
        end
        attr_reader :_meta

        sig do
          params(
            _meta: Onlyfans::Models::Posts::CommentCreateResponse::Meta::OrHash
          ).void
        end
        attr_writer :_meta

        sig do
          returns(
            T.nilable(Onlyfans::Models::Posts::CommentCreateResponse::Data)
          )
        end
        attr_reader :data

        sig do
          params(
            data: Onlyfans::Models::Posts::CommentCreateResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            _meta: Onlyfans::Models::Posts::CommentCreateResponse::Meta::OrHash,
            data: Onlyfans::Models::Posts::CommentCreateResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_meta: nil, data: nil)
        end

        sig do
          override.returns(
            {
              _meta: Onlyfans::Models::Posts::CommentCreateResponse::Meta,
              data: Onlyfans::Models::Posts::CommentCreateResponse::Data
            }
          )
        end
        def to_hash
        end

        class Meta < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::Posts::CommentCreateResponse::Meta,
                Onlyfans::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Posts::CommentCreateResponse::Meta::Cache
              )
            )
          end
          attr_reader :_cache

          sig do
            params(
              _cache:
                Onlyfans::Models::Posts::CommentCreateResponse::Meta::Cache::OrHash
            ).void
          end
          attr_writer :_cache

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Posts::CommentCreateResponse::Meta::Credits
              )
            )
          end
          attr_reader :_credits

          sig do
            params(
              _credits:
                Onlyfans::Models::Posts::CommentCreateResponse::Meta::Credits::OrHash
            ).void
          end
          attr_writer :_credits

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Posts::CommentCreateResponse::Meta::RateLimits
              )
            )
          end
          attr_reader :_rate_limits

          sig do
            params(
              _rate_limits:
                Onlyfans::Models::Posts::CommentCreateResponse::Meta::RateLimits::OrHash
            ).void
          end
          attr_writer :_rate_limits

          sig do
            params(
              _cache:
                Onlyfans::Models::Posts::CommentCreateResponse::Meta::Cache::OrHash,
              _credits:
                Onlyfans::Models::Posts::CommentCreateResponse::Meta::Credits::OrHash,
              _rate_limits:
                Onlyfans::Models::Posts::CommentCreateResponse::Meta::RateLimits::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
          end

          sig do
            override.returns(
              {
                _cache:
                  Onlyfans::Models::Posts::CommentCreateResponse::Meta::Cache,
                _credits:
                  Onlyfans::Models::Posts::CommentCreateResponse::Meta::Credits,
                _rate_limits:
                  Onlyfans::Models::Posts::CommentCreateResponse::Meta::RateLimits
              }
            )
          end
          def to_hash
          end

          class Cache < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Posts::CommentCreateResponse::Meta::Cache,
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
                  Onlyfans::Models::Posts::CommentCreateResponse::Meta::Credits,
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
                  Onlyfans::Models::Posts::CommentCreateResponse::Meta::RateLimits,
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
                Onlyfans::Models::Posts::CommentCreateResponse::Data,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Posts::CommentCreateResponse::Data::Author
              )
            )
          end
          attr_reader :author

          sig do
            params(
              author:
                Onlyfans::Models::Posts::CommentCreateResponse::Data::Author::OrHash
            ).void
          end
          attr_writer :author

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_like

          sig { params(can_like: T::Boolean).void }
          attr_writer :can_like

          sig { returns(T.nilable(String)) }
          attr_reader :changed_at

          sig { params(changed_at: String).void }
          attr_writer :changed_at

          sig { returns(T.nilable(String)) }
          attr_accessor :giphy_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_liked

          sig { params(is_liked: T::Boolean).void }
          attr_writer :is_liked

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_liked_by_author

          sig { params(is_liked_by_author: T::Boolean).void }
          attr_writer :is_liked_by_author

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_pinned

          sig { params(is_pinned: T::Boolean).void }
          attr_writer :is_pinned

          sig { returns(T.nilable(Integer)) }
          attr_reader :likes_count

          sig { params(likes_count: Integer).void }
          attr_writer :likes_count

          sig { returns(T.nilable(String)) }
          attr_reader :posted_at

          sig { params(posted_at: String).void }
          attr_writer :posted_at

          sig { returns(T.nilable(String)) }
          attr_reader :text

          sig { params(text: String).void }
          attr_writer :text

          sig do
            params(
              id: Integer,
              author:
                Onlyfans::Models::Posts::CommentCreateResponse::Data::Author::OrHash,
              can_like: T::Boolean,
              changed_at: String,
              giphy_id: T.nilable(String),
              is_liked: T::Boolean,
              is_liked_by_author: T::Boolean,
              is_pinned: T::Boolean,
              likes_count: Integer,
              posted_at: String,
              text: String
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            author: nil,
            can_like: nil,
            changed_at: nil,
            giphy_id: nil,
            is_liked: nil,
            is_liked_by_author: nil,
            is_pinned: nil,
            likes_count: nil,
            posted_at: nil,
            text: nil
          )
          end

          sig do
            override.returns(
              {
                id: Integer,
                author:
                  Onlyfans::Models::Posts::CommentCreateResponse::Data::Author,
                can_like: T::Boolean,
                changed_at: String,
                giphy_id: T.nilable(String),
                is_liked: T::Boolean,
                is_liked_by_author: T::Boolean,
                is_pinned: T::Boolean,
                likes_count: Integer,
                posted_at: String,
                text: String
              }
            )
          end
          def to_hash
          end

          class Author < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Posts::CommentCreateResponse::Data::Author,
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
                  Onlyfans::Models::Posts::CommentCreateResponse::Data::Author::AvatarThumbs
                )
              )
            end
            attr_reader :avatar_thumbs

            sig do
              params(
                avatar_thumbs:
                  Onlyfans::Models::Posts::CommentCreateResponse::Data::Author::AvatarThumbs::OrHash
              ).void
            end
            attr_writer :avatar_thumbs

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :can_add_subscriber

            sig { params(can_add_subscriber: T::Boolean).void }
            attr_writer :can_add_subscriber

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :can_comment_story

            sig { params(can_comment_story: T::Boolean).void }
            attr_writer :can_comment_story

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :can_create_lists

            sig { params(can_create_lists: T::Boolean).void }
            attr_writer :can_create_lists

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :can_earn

            sig { params(can_earn: T::Boolean).void }
            attr_writer :can_earn

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :can_look_story

            sig { params(can_look_story: T::Boolean).void }
            attr_writer :can_look_story

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :can_pay_internal

            sig { params(can_pay_internal: T::Boolean).void }
            attr_writer :can_pay_internal

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :can_report

            sig { params(can_report: T::Boolean).void }
            attr_writer :can_report

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :can_send_chat_to_all

            sig { params(can_send_chat_to_all: T::Boolean).void }
            attr_writer :can_send_chat_to_all

            sig { returns(T.nilable(Integer)) }
            attr_reader :credits_max

            sig { params(credits_max: Integer).void }
            attr_writer :credits_max

            sig { returns(T.nilable(Integer)) }
            attr_reader :credits_min

            sig { params(credits_min: Integer).void }
            attr_writer :credits_min

            sig { returns(T.nilable(Integer)) }
            attr_reader :credits_min_alternatives

            sig { params(credits_min_alternatives: Integer).void }
            attr_writer :credits_min_alternatives

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_not_viewed_story

            sig { params(has_not_viewed_story: T::Boolean).void }
            attr_writer :has_not_viewed_story

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_scheduled_stream

            sig { params(has_scheduled_stream: T::Boolean).void }
            attr_writer :has_scheduled_stream

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_stories

            sig { params(has_stories: T::Boolean).void }
            attr_writer :has_stories

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_stream

            sig { params(has_stream: T::Boolean).void }
            attr_writer :has_stream

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_stripe

            sig { params(has_stripe: T::Boolean).void }
            attr_writer :has_stripe

            sig { returns(T.nilable(String)) }
            attr_reader :header

            sig { params(header: String).void }
            attr_writer :header

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Posts::CommentCreateResponse::Data::Author::HeaderSize
                )
              )
            end
            attr_reader :header_size

            sig do
              params(
                header_size:
                  Onlyfans::Models::Posts::CommentCreateResponse::Data::Author::HeaderSize::OrHash
              ).void
            end
            attr_writer :header_size

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::Posts::CommentCreateResponse::Data::Author::HeaderThumbs
                )
              )
            end
            attr_reader :header_thumbs

            sig do
              params(
                header_thumbs:
                  Onlyfans::Models::Posts::CommentCreateResponse::Data::Author::HeaderThumbs::OrHash
              ).void
            end
            attr_writer :header_thumbs

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_paywall_passed

            sig { params(is_paywall_passed: T::Boolean).void }
            attr_writer :is_paywall_passed

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_stripe_exist

            sig { params(is_stripe_exist: T::Boolean).void }
            attr_writer :is_stripe_exist

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_verified

            sig { params(is_verified: T::Boolean).void }
            attr_writer :is_verified

            sig { returns(T.nilable(String)) }
            attr_reader :last_seen

            sig { params(last_seen: String).void }
            attr_writer :last_seen

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :show_media_count

            sig { params(show_media_count: T::Boolean).void }
            attr_writer :show_media_count

            sig { returns(T.nilable(String)) }
            attr_accessor :subscribed_on

            sig { returns(T.nilable(Float)) }
            attr_reader :subscribe_price

            sig { params(subscribe_price: Float).void }
            attr_writer :subscribe_price

            sig { returns(T.nilable(T::Array[T.anything])) }
            attr_reader :subscription_bundles

            sig { params(subscription_bundles: T::Array[T.anything]).void }
            attr_writer :subscription_bundles

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

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :tips_text_enabled

            sig { params(tips_text_enabled: T::Boolean).void }
            attr_writer :tips_text_enabled

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
                  Onlyfans::Models::Posts::CommentCreateResponse::Data::Author::AvatarThumbs::OrHash,
                can_add_subscriber: T::Boolean,
                can_comment_story: T::Boolean,
                can_create_lists: T::Boolean,
                can_earn: T::Boolean,
                can_look_story: T::Boolean,
                can_pay_internal: T::Boolean,
                can_report: T::Boolean,
                can_send_chat_to_all: T::Boolean,
                credits_max: Integer,
                credits_min: Integer,
                credits_min_alternatives: Integer,
                has_not_viewed_story: T::Boolean,
                has_scheduled_stream: T::Boolean,
                has_stories: T::Boolean,
                has_stream: T::Boolean,
                has_stripe: T::Boolean,
                header: String,
                header_size:
                  Onlyfans::Models::Posts::CommentCreateResponse::Data::Author::HeaderSize::OrHash,
                header_thumbs:
                  Onlyfans::Models::Posts::CommentCreateResponse::Data::Author::HeaderThumbs::OrHash,
                is_paywall_passed: T::Boolean,
                is_stripe_exist: T::Boolean,
                is_verified: T::Boolean,
                last_seen: String,
                name: String,
                show_media_count: T::Boolean,
                subscribed_on: T.nilable(String),
                subscribe_price: Float,
                subscription_bundles: T::Array[T.anything],
                tips_enabled: T::Boolean,
                tips_max: Integer,
                tips_min: Integer,
                tips_min_internal: Integer,
                tips_text_enabled: T::Boolean,
                username: String,
                view: String
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              avatar: nil,
              avatar_thumbs: nil,
              can_add_subscriber: nil,
              can_comment_story: nil,
              can_create_lists: nil,
              can_earn: nil,
              can_look_story: nil,
              can_pay_internal: nil,
              can_report: nil,
              can_send_chat_to_all: nil,
              credits_max: nil,
              credits_min: nil,
              credits_min_alternatives: nil,
              has_not_viewed_story: nil,
              has_scheduled_stream: nil,
              has_stories: nil,
              has_stream: nil,
              has_stripe: nil,
              header: nil,
              header_size: nil,
              header_thumbs: nil,
              is_paywall_passed: nil,
              is_stripe_exist: nil,
              is_verified: nil,
              last_seen: nil,
              name: nil,
              show_media_count: nil,
              subscribed_on: nil,
              subscribe_price: nil,
              subscription_bundles: nil,
              tips_enabled: nil,
              tips_max: nil,
              tips_min: nil,
              tips_min_internal: nil,
              tips_text_enabled: nil,
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
                    Onlyfans::Models::Posts::CommentCreateResponse::Data::Author::AvatarThumbs,
                  can_add_subscriber: T::Boolean,
                  can_comment_story: T::Boolean,
                  can_create_lists: T::Boolean,
                  can_earn: T::Boolean,
                  can_look_story: T::Boolean,
                  can_pay_internal: T::Boolean,
                  can_report: T::Boolean,
                  can_send_chat_to_all: T::Boolean,
                  credits_max: Integer,
                  credits_min: Integer,
                  credits_min_alternatives: Integer,
                  has_not_viewed_story: T::Boolean,
                  has_scheduled_stream: T::Boolean,
                  has_stories: T::Boolean,
                  has_stream: T::Boolean,
                  has_stripe: T::Boolean,
                  header: String,
                  header_size:
                    Onlyfans::Models::Posts::CommentCreateResponse::Data::Author::HeaderSize,
                  header_thumbs:
                    Onlyfans::Models::Posts::CommentCreateResponse::Data::Author::HeaderThumbs,
                  is_paywall_passed: T::Boolean,
                  is_stripe_exist: T::Boolean,
                  is_verified: T::Boolean,
                  last_seen: String,
                  name: String,
                  show_media_count: T::Boolean,
                  subscribed_on: T.nilable(String),
                  subscribe_price: Float,
                  subscription_bundles: T::Array[T.anything],
                  tips_enabled: T::Boolean,
                  tips_max: Integer,
                  tips_min: Integer,
                  tips_min_internal: Integer,
                  tips_text_enabled: T::Boolean,
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
                    Onlyfans::Models::Posts::CommentCreateResponse::Data::Author::AvatarThumbs,
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

              sig do
                params(c144: String, c50: String).returns(T.attached_class)
              end
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
                    Onlyfans::Models::Posts::CommentCreateResponse::Data::Author::HeaderSize,
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
                params(height: Integer, width: Integer).returns(
                  T.attached_class
                )
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
                    Onlyfans::Models::Posts::CommentCreateResponse::Data::Author::HeaderThumbs,
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

              sig do
                params(w480: String, w760: String).returns(T.attached_class)
              end
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
end
