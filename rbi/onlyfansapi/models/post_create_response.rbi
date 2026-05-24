# typed: strong

module Onlyfansapi
  module Models
    class PostCreateResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::PostCreateResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Onlyfansapi::Models::PostCreateResponse::Meta)) }
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfansapi::Models::PostCreateResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig { returns(T.nilable(Onlyfansapi::Models::PostCreateResponse::Data)) }
      attr_reader :data

      sig do
        params(data: Onlyfansapi::Models::PostCreateResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfansapi::Models::PostCreateResponse::Meta::OrHash,
          data: Onlyfansapi::Models::PostCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::PostCreateResponse::Meta,
            data: Onlyfansapi::Models::PostCreateResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::PostCreateResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::PostCreateResponse::Meta::Cache)
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache: Onlyfansapi::Models::PostCreateResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::PostCreateResponse::Meta::Credits)
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::PostCreateResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::PostCreateResponse::Meta::RateLimits)
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::PostCreateResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::PostCreateResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::PostCreateResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::PostCreateResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfansapi::Models::PostCreateResponse::Meta::Cache,
              _credits: Onlyfansapi::Models::PostCreateResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::PostCreateResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::PostCreateResponse::Meta::Cache,
                Onlyfansapi::Internal::AnyHash
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

        class Credits < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::PostCreateResponse::Meta::Credits,
                Onlyfansapi::Internal::AnyHash
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

        class RateLimits < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::PostCreateResponse::Meta::RateLimits,
                Onlyfansapi::Internal::AnyHash
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

      class Data < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::PostCreateResponse::Data,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :id

        sig { params(id: Integer).void }
        attr_writer :id

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::PostCreateResponse::Data::Author)
          )
        end
        attr_reader :author

        sig do
          params(
            author:
              Onlyfansapi::Models::PostCreateResponse::Data::Author::OrHash
          ).void
        end
        attr_writer :author

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_comment

        sig { params(can_comment: T::Boolean).void }
        attr_writer :can_comment

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_delete

        sig { params(can_delete: T::Boolean).void }
        attr_writer :can_delete

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_edit

        sig { params(can_edit: T::Boolean).void }
        attr_writer :can_edit

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_toggle_favorite

        sig { params(can_toggle_favorite: T::Boolean).void }
        attr_writer :can_toggle_favorite

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_view_media

        sig { params(can_view_media: T::Boolean).void }
        attr_writer :can_view_media

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_markdown_disabled

        sig { params(is_markdown_disabled: T::Boolean).void }
        attr_writer :is_markdown_disabled

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_opened

        sig { params(is_opened: T::Boolean).void }
        attr_writer :is_opened

        sig do
          returns(
            T.nilable(
              T::Array[Onlyfansapi::Models::PostCreateResponse::Data::Media]
            )
          )
        end
        attr_reader :media

        sig do
          params(
            media:
              T::Array[
                Onlyfansapi::Models::PostCreateResponse::Data::Media::OrHash
              ]
          ).void
        end
        attr_writer :media

        sig { returns(T.nilable(Integer)) }
        attr_reader :media_count

        sig { params(media_count: Integer).void }
        attr_writer :media_count

        sig { returns(T.nilable(String)) }
        attr_reader :posted_at

        sig { params(posted_at: String).void }
        attr_writer :posted_at

        sig { returns(T.nilable(String)) }
        attr_reader :posted_at_precise

        sig { params(posted_at_precise: String).void }
        attr_writer :posted_at_precise

        sig { returns(T.nilable(String)) }
        attr_reader :raw_text

        sig { params(raw_text: String).void }
        attr_writer :raw_text

        sig { returns(T.nilable(String)) }
        attr_reader :response_type

        sig { params(response_type: String).void }
        attr_writer :response_type

        sig { returns(T.nilable(String)) }
        attr_reader :text

        sig { params(text: String).void }
        attr_writer :text

        sig { returns(T.nilable(String)) }
        attr_reader :tips_amount

        sig { params(tips_amount: String).void }
        attr_writer :tips_amount

        sig do
          params(
            id: Integer,
            author:
              Onlyfansapi::Models::PostCreateResponse::Data::Author::OrHash,
            can_comment: T::Boolean,
            can_delete: T::Boolean,
            can_edit: T::Boolean,
            can_toggle_favorite: T::Boolean,
            can_view_media: T::Boolean,
            is_markdown_disabled: T::Boolean,
            is_opened: T::Boolean,
            media:
              T::Array[
                Onlyfansapi::Models::PostCreateResponse::Data::Media::OrHash
              ],
            media_count: Integer,
            posted_at: String,
            posted_at_precise: String,
            raw_text: String,
            response_type: String,
            text: String,
            tips_amount: String
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          author: nil,
          can_comment: nil,
          can_delete: nil,
          can_edit: nil,
          can_toggle_favorite: nil,
          can_view_media: nil,
          is_markdown_disabled: nil,
          is_opened: nil,
          media: nil,
          media_count: nil,
          posted_at: nil,
          posted_at_precise: nil,
          raw_text: nil,
          response_type: nil,
          text: nil,
          tips_amount: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              author: Onlyfansapi::Models::PostCreateResponse::Data::Author,
              can_comment: T::Boolean,
              can_delete: T::Boolean,
              can_edit: T::Boolean,
              can_toggle_favorite: T::Boolean,
              can_view_media: T::Boolean,
              is_markdown_disabled: T::Boolean,
              is_opened: T::Boolean,
              media:
                T::Array[Onlyfansapi::Models::PostCreateResponse::Data::Media],
              media_count: Integer,
              posted_at: String,
              posted_at_precise: String,
              raw_text: String,
              response_type: String,
              text: String,
              tips_amount: String
            }
          )
        end
        def to_hash
        end

        class Author < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::PostCreateResponse::Data::Author,
                Onlyfansapi::Internal::AnyHash
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
                Onlyfansapi::Models::PostCreateResponse::Data::Author::AvatarThumbs
              )
            )
          end
          attr_reader :avatar_thumbs

          sig do
            params(
              avatar_thumbs:
                Onlyfansapi::Models::PostCreateResponse::Data::Author::AvatarThumbs::OrHash
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
          attr_reader :can_send_chat_to_all

          sig { params(can_send_chat_to_all: T::Boolean).void }
          attr_writer :can_send_chat_to_all

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_trial_send

          sig { params(can_trial_send: T::Boolean).void }
          attr_writer :can_trial_send

          sig { returns(T.nilable(Integer)) }
          attr_reader :credits_max

          sig { params(credits_max: Integer).void }
          attr_writer :credits_max

          sig { returns(T.nilable(Integer)) }
          attr_reader :credits_min

          sig { params(credits_min: Integer).void }
          attr_writer :credits_min

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
                Onlyfansapi::Models::PostCreateResponse::Data::Author::HeaderSize
              )
            )
          end
          attr_reader :header_size

          sig do
            params(
              header_size:
                Onlyfansapi::Models::PostCreateResponse::Data::Author::HeaderSize::OrHash
            ).void
          end
          attr_writer :header_size

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::PostCreateResponse::Data::Author::HeaderThumbs
              )
            )
          end
          attr_reader :header_thumbs

          sig do
            params(
              header_thumbs:
                Onlyfansapi::Models::PostCreateResponse::Data::Author::HeaderThumbs::OrHash
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
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :show_media_count

          sig { params(show_media_count: T::Boolean).void }
          attr_writer :show_media_count

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :show_posts_in_feed

          sig { params(show_posts_in_feed: T::Boolean).void }
          attr_writer :show_posts_in_feed

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :subscribed_by

          sig { params(subscribed_by: T::Boolean).void }
          attr_writer :subscribed_by

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
                Onlyfansapi::Models::PostCreateResponse::Data::Author::AvatarThumbs::OrHash,
              can_add_subscriber: T::Boolean,
              can_comment_story: T::Boolean,
              can_create_lists: T::Boolean,
              can_earn: T::Boolean,
              can_look_story: T::Boolean,
              can_pay_internal: T::Boolean,
              can_send_chat_to_all: T::Boolean,
              can_trial_send: T::Boolean,
              credits_max: Integer,
              credits_min: Integer,
              has_not_viewed_story: T::Boolean,
              has_scheduled_stream: T::Boolean,
              has_stories: T::Boolean,
              has_stream: T::Boolean,
              has_stripe: T::Boolean,
              header: String,
              header_size:
                Onlyfansapi::Models::PostCreateResponse::Data::Author::HeaderSize::OrHash,
              header_thumbs:
                Onlyfansapi::Models::PostCreateResponse::Data::Author::HeaderThumbs::OrHash,
              is_paywall_passed: T::Boolean,
              is_stripe_exist: T::Boolean,
              is_verified: T::Boolean,
              name: String,
              show_media_count: T::Boolean,
              show_posts_in_feed: T::Boolean,
              subscribed_by: T::Boolean,
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
            can_send_chat_to_all: nil,
            can_trial_send: nil,
            credits_max: nil,
            credits_min: nil,
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
            name: nil,
            show_media_count: nil,
            show_posts_in_feed: nil,
            subscribed_by: nil,
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
                  Onlyfansapi::Models::PostCreateResponse::Data::Author::AvatarThumbs,
                can_add_subscriber: T::Boolean,
                can_comment_story: T::Boolean,
                can_create_lists: T::Boolean,
                can_earn: T::Boolean,
                can_look_story: T::Boolean,
                can_pay_internal: T::Boolean,
                can_send_chat_to_all: T::Boolean,
                can_trial_send: T::Boolean,
                credits_max: Integer,
                credits_min: Integer,
                has_not_viewed_story: T::Boolean,
                has_scheduled_stream: T::Boolean,
                has_stories: T::Boolean,
                has_stream: T::Boolean,
                has_stripe: T::Boolean,
                header: String,
                header_size:
                  Onlyfansapi::Models::PostCreateResponse::Data::Author::HeaderSize,
                header_thumbs:
                  Onlyfansapi::Models::PostCreateResponse::Data::Author::HeaderThumbs,
                is_paywall_passed: T::Boolean,
                is_stripe_exist: T::Boolean,
                is_verified: T::Boolean,
                name: String,
                show_media_count: T::Boolean,
                show_posts_in_feed: T::Boolean,
                subscribed_by: T::Boolean,
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

          class AvatarThumbs < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::PostCreateResponse::Data::Author::AvatarThumbs,
                  Onlyfansapi::Internal::AnyHash
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

          class HeaderSize < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::PostCreateResponse::Data::Author::HeaderSize,
                  Onlyfansapi::Internal::AnyHash
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

          class HeaderThumbs < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::PostCreateResponse::Data::Author::HeaderThumbs,
                  Onlyfansapi::Internal::AnyHash
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

        class Media < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::PostCreateResponse::Data::Media,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_view

          sig { params(can_view: T::Boolean).void }
          attr_writer :can_view

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :converted_to_video

          sig { params(converted_to_video: T::Boolean).void }
          attr_writer :converted_to_video

          sig { returns(T.nilable(String)) }
          attr_reader :created_at

          sig { params(created_at: String).void }
          attr_writer :created_at

          sig { returns(T.nilable(Integer)) }
          attr_reader :duration

          sig { params(duration: Integer).void }
          attr_writer :duration

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::PostCreateResponse::Data::Media::Files
              )
            )
          end
          attr_reader :files

          sig do
            params(
              files:
                Onlyfansapi::Models::PostCreateResponse::Data::Media::Files::OrHash
            ).void
          end
          attr_writer :files

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_custom_preview

          sig { params(has_custom_preview: T::Boolean).void }
          attr_writer :has_custom_preview

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_error

          sig { params(has_error: T::Boolean).void }
          attr_writer :has_error

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_ready

          sig { params(is_ready: T::Boolean).void }
          attr_writer :is_ready

          sig { returns(T.nilable(T::Array[T.anything])) }
          attr_reader :release_forms

          sig { params(release_forms: T::Array[T.anything]).void }
          attr_writer :release_forms

          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          sig do
            params(
              id: Integer,
              can_view: T::Boolean,
              converted_to_video: T::Boolean,
              created_at: String,
              duration: Integer,
              files:
                Onlyfansapi::Models::PostCreateResponse::Data::Media::Files::OrHash,
              has_custom_preview: T::Boolean,
              has_error: T::Boolean,
              is_ready: T::Boolean,
              release_forms: T::Array[T.anything],
              type: String
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            can_view: nil,
            converted_to_video: nil,
            created_at: nil,
            duration: nil,
            files: nil,
            has_custom_preview: nil,
            has_error: nil,
            is_ready: nil,
            release_forms: nil,
            type: nil
          )
          end

          sig do
            override.returns(
              {
                id: Integer,
                can_view: T::Boolean,
                converted_to_video: T::Boolean,
                created_at: String,
                duration: Integer,
                files:
                  Onlyfansapi::Models::PostCreateResponse::Data::Media::Files,
                has_custom_preview: T::Boolean,
                has_error: T::Boolean,
                is_ready: T::Boolean,
                release_forms: T::Array[T.anything],
                type: String
              }
            )
          end
          def to_hash
          end

          class Files < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::PostCreateResponse::Data::Media::Files,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfansapi::Models::PostCreateResponse::Data::Media::Files::Full
                )
              )
            end
            attr_reader :full

            sig do
              params(
                full:
                  Onlyfansapi::Models::PostCreateResponse::Data::Media::Files::Full::OrHash
              ).void
            end
            attr_writer :full

            sig { returns(T.nilable(String)) }
            attr_reader :preview

            sig { params(preview: String).void }
            attr_writer :preview

            sig { returns(T.nilable(String)) }
            attr_reader :square_preview

            sig { params(square_preview: String).void }
            attr_writer :square_preview

            sig { returns(T.nilable(String)) }
            attr_reader :thumb

            sig { params(thumb: String).void }
            attr_writer :thumb

            sig do
              params(
                full:
                  Onlyfansapi::Models::PostCreateResponse::Data::Media::Files::Full::OrHash,
                preview: String,
                square_preview: String,
                thumb: String
              ).returns(T.attached_class)
            end
            def self.new(
              full: nil,
              preview: nil,
              square_preview: nil,
              thumb: nil
            )
            end

            sig do
              override.returns(
                {
                  full:
                    Onlyfansapi::Models::PostCreateResponse::Data::Media::Files::Full,
                  preview: String,
                  square_preview: String,
                  thumb: String
                }
              )
            end
            def to_hash
            end

            class Full < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::PostCreateResponse::Data::Media::Files::Full,
                    Onlyfansapi::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :height

              sig { params(height: Integer).void }
              attr_writer :height

              sig { returns(T.nilable(Integer)) }
              attr_reader :size

              sig { params(size: Integer).void }
              attr_writer :size

              sig { returns(T.nilable(T::Array[T.anything])) }
              attr_reader :sources

              sig { params(sources: T::Array[T.anything]).void }
              attr_writer :sources

              sig { returns(T.nilable(String)) }
              attr_reader :url

              sig { params(url: String).void }
              attr_writer :url

              sig { returns(T.nilable(Integer)) }
              attr_reader :width

              sig { params(width: Integer).void }
              attr_writer :width

              sig do
                params(
                  height: Integer,
                  size: Integer,
                  sources: T::Array[T.anything],
                  url: String,
                  width: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                height: nil,
                size: nil,
                sources: nil,
                url: nil,
                width: nil
              )
              end

              sig do
                override.returns(
                  {
                    height: Integer,
                    size: Integer,
                    sources: T::Array[T.anything],
                    url: String,
                    width: Integer
                  }
                )
              end
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
