# typed: strong

module Onlyfansapi
  module Models
    class FanListLatestResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::FanListLatestResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Onlyfansapi::Models::FanListLatestResponse::Meta))
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfansapi::Models::FanListLatestResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(Onlyfansapi::Models::FanListLatestResponse::Pagination)
        )
      end
      attr_reader :_pagination

      sig do
        params(
          _pagination:
            Onlyfansapi::Models::FanListLatestResponse::Pagination::OrHash
        ).void
      end
      attr_writer :_pagination

      sig do
        returns(T.nilable(Onlyfansapi::Models::FanListLatestResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfansapi::Models::FanListLatestResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfansapi::Models::FanListLatestResponse::Meta::OrHash,
          _pagination:
            Onlyfansapi::Models::FanListLatestResponse::Pagination::OrHash,
          data: Onlyfansapi::Models::FanListLatestResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, _pagination: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::FanListLatestResponse::Meta,
            _pagination: Onlyfansapi::Models::FanListLatestResponse::Pagination,
            data: Onlyfansapi::Models::FanListLatestResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::FanListLatestResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::FanListLatestResponse::Meta::Cache)
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::FanListLatestResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::FanListLatestResponse::Meta::Credits)
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::FanListLatestResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::FanListLatestResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::FanListLatestResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::FanListLatestResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::FanListLatestResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::FanListLatestResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfansapi::Models::FanListLatestResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::FanListLatestResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::FanListLatestResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::FanListLatestResponse::Meta::Cache,
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
                Onlyfansapi::Models::FanListLatestResponse::Meta::Credits,
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
                Onlyfansapi::Models::FanListLatestResponse::Meta::RateLimits,
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

      class Pagination < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::FanListLatestResponse::Pagination,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :next_page

        sig { params(next_page: String).void }
        attr_writer :next_page

        sig { params(next_page: String).returns(T.attached_class) }
        def self.new(next_page: nil)
        end

        sig { override.returns({ next_page: String }) }
        def to_hash
        end
      end

      class Data < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::FanListLatestResponse::Data,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_more

        sig { params(has_more: T::Boolean).void }
        attr_writer :has_more

        sig { returns(T.nilable(Integer)) }
        attr_reader :offset

        sig { params(offset: Integer).void }
        attr_writer :offset

        sig do
          returns(
            T.nilable(
              T::Array[Onlyfansapi::Models::FanListLatestResponse::Data::User]
            )
          )
        end
        attr_reader :users

        sig do
          params(
            users:
              T::Array[
                Onlyfansapi::Models::FanListLatestResponse::Data::User::OrHash
              ]
          ).void
        end
        attr_writer :users

        sig do
          params(
            has_more: T::Boolean,
            offset: Integer,
            users:
              T::Array[
                Onlyfansapi::Models::FanListLatestResponse::Data::User::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(has_more: nil, offset: nil, users: nil)
        end

        sig do
          override.returns(
            {
              has_more: T::Boolean,
              offset: Integer,
              users:
                T::Array[Onlyfansapi::Models::FanListLatestResponse::Data::User]
            }
          )
        end
        def to_hash
        end

        class User < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::FanListLatestResponse::Data::User,
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
                Onlyfansapi::Models::FanListLatestResponse::Data::User::AvatarThumbs
              )
            )
          end
          attr_reader :avatar_thumbs

          sig do
            params(
              avatar_thumbs:
                Onlyfansapi::Models::FanListLatestResponse::Data::User::AvatarThumbs::OrHash
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
          attr_reader :can_receive_chat_message

          sig { params(can_receive_chat_message: T::Boolean).void }
          attr_writer :can_receive_chat_message

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_report

          sig { params(can_report: T::Boolean).void }
          attr_writer :can_report

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_restrict

          sig { params(can_restrict: T::Boolean).void }
          attr_writer :can_restrict

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_trial_send

          sig { params(can_trial_send: T::Boolean).void }
          attr_writer :can_trial_send

          sig { returns(T.nilable(String)) }
          attr_reader :current_subscribe_price

          sig { params(current_subscribe_price: String).void }
          attr_writer :current_subscribe_price

          sig { returns(T.nilable(String)) }
          attr_reader :display_name

          sig { params(display_name: String).void }
          attr_writer :display_name

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

          sig { returns(T.nilable(String)) }
          attr_reader :header

          sig { params(header: String).void }
          attr_writer :header

          sig { returns(T.nilable(String)) }
          attr_reader :header_size

          sig { params(header_size: String).void }
          attr_writer :header_size

          sig { returns(T.nilable(String)) }
          attr_reader :header_thumbs

          sig { params(header_thumbs: String).void }
          attr_writer :header_thumbs

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :hide_chat

          sig { params(hide_chat: T::Boolean).void }
          attr_writer :hide_chat

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_blocked

          sig { params(is_blocked: T::Boolean).void }
          attr_writer :is_blocked

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_paywall_required

          sig { params(is_paywall_required: T::Boolean).void }
          attr_writer :is_paywall_required

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_performer

          sig { params(is_performer: T::Boolean).void }
          attr_writer :is_performer

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_real_performer

          sig { params(is_real_performer: T::Boolean).void }
          attr_writer :is_real_performer

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_restricted

          sig { params(is_restricted: T::Boolean).void }
          attr_writer :is_restricted

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_verified

          sig { params(is_verified: T::Boolean).void }
          attr_writer :is_verified

          sig { returns(T.nilable(String)) }
          attr_reader :last_seen

          sig { params(last_seen: String).void }
          attr_writer :last_seen

          sig do
            returns(
              T.nilable(
                T::Array[
                  Onlyfansapi::Models::FanListLatestResponse::Data::User::ListsState
                ]
              )
            )
          end
          attr_reader :lists_states

          sig do
            params(
              lists_states:
                T::Array[
                  Onlyfansapi::Models::FanListLatestResponse::Data::User::ListsState::OrHash
                ]
            ).void
          end
          attr_writer :lists_states

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(String)) }
          attr_reader :notice

          sig { params(notice: String).void }
          attr_writer :notice

          sig do
            returns(
              T.nilable(
                T::Array[
                  Onlyfansapi::Models::FanListLatestResponse::Data::User::PromoOffer
                ]
              )
            )
          end
          attr_reader :promo_offers

          sig do
            params(
              promo_offers:
                T::Array[
                  Onlyfansapi::Models::FanListLatestResponse::Data::User::PromoOffer::OrHash
                ]
            ).void
          end
          attr_writer :promo_offers

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :subscribed_by

          sig { params(subscribed_by: T::Boolean).void }
          attr_writer :subscribed_by

          sig { returns(T.nilable(String)) }
          attr_reader :subscribed_by_autoprolong

          sig { params(subscribed_by_autoprolong: String).void }
          attr_writer :subscribed_by_autoprolong

          sig { returns(T.nilable(String)) }
          attr_reader :subscribed_by_data

          sig { params(subscribed_by_data: String).void }
          attr_writer :subscribed_by_data

          sig { returns(T.nilable(String)) }
          attr_reader :subscribed_by_expire

          sig { params(subscribed_by_expire: String).void }
          attr_writer :subscribed_by_expire

          sig { returns(T.nilable(String)) }
          attr_reader :subscribed_by_expire_date

          sig { params(subscribed_by_expire_date: String).void }
          attr_writer :subscribed_by_expire_date

          sig { returns(T.nilable(String)) }
          attr_reader :subscribed_is_expired_now

          sig { params(subscribed_is_expired_now: String).void }
          attr_writer :subscribed_is_expired_now

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :subscribed_on

          sig { params(subscribed_on: T::Boolean).void }
          attr_writer :subscribed_on

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::FanListLatestResponse::Data::User::SubscribedOnData
              )
            )
          end
          attr_reader :subscribed_on_data

          sig do
            params(
              subscribed_on_data:
                Onlyfansapi::Models::FanListLatestResponse::Data::User::SubscribedOnData::OrHash
            ).void
          end
          attr_writer :subscribed_on_data

          sig { returns(T.nilable(String)) }
          attr_reader :subscribed_on_duration

          sig { params(subscribed_on_duration: String).void }
          attr_writer :subscribed_on_duration

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :subscribed_on_expired_now

          sig { params(subscribed_on_expired_now: T::Boolean).void }
          attr_writer :subscribed_on_expired_now

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
                Onlyfansapi::Models::FanListLatestResponse::Data::User::AvatarThumbs::OrHash,
              can_add_subscriber: T::Boolean,
              can_comment_story: T::Boolean,
              can_earn: T::Boolean,
              can_look_story: T::Boolean,
              can_pay_internal: T::Boolean,
              can_receive_chat_message: T::Boolean,
              can_report: T::Boolean,
              can_restrict: T::Boolean,
              can_trial_send: T::Boolean,
              current_subscribe_price: String,
              display_name: String,
              has_not_viewed_story: T::Boolean,
              has_scheduled_stream: T::Boolean,
              has_stories: T::Boolean,
              has_stream: T::Boolean,
              header: String,
              header_size: String,
              header_thumbs: String,
              hide_chat: T::Boolean,
              is_blocked: T::Boolean,
              is_paywall_required: T::Boolean,
              is_performer: T::Boolean,
              is_real_performer: T::Boolean,
              is_restricted: T::Boolean,
              is_verified: T::Boolean,
              last_seen: String,
              lists_states:
                T::Array[
                  Onlyfansapi::Models::FanListLatestResponse::Data::User::ListsState::OrHash
                ],
              name: String,
              notice: String,
              promo_offers:
                T::Array[
                  Onlyfansapi::Models::FanListLatestResponse::Data::User::PromoOffer::OrHash
                ],
              subscribed_by: T::Boolean,
              subscribed_by_autoprolong: String,
              subscribed_by_data: String,
              subscribed_by_expire: String,
              subscribed_by_expire_date: String,
              subscribed_is_expired_now: String,
              subscribed_on: T::Boolean,
              subscribed_on_data:
                Onlyfansapi::Models::FanListLatestResponse::Data::User::SubscribedOnData::OrHash,
              subscribed_on_duration: String,
              subscribed_on_expired_now: T::Boolean,
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
            can_earn: nil,
            can_look_story: nil,
            can_pay_internal: nil,
            can_receive_chat_message: nil,
            can_report: nil,
            can_restrict: nil,
            can_trial_send: nil,
            current_subscribe_price: nil,
            display_name: nil,
            has_not_viewed_story: nil,
            has_scheduled_stream: nil,
            has_stories: nil,
            has_stream: nil,
            header: nil,
            header_size: nil,
            header_thumbs: nil,
            hide_chat: nil,
            is_blocked: nil,
            is_paywall_required: nil,
            is_performer: nil,
            is_real_performer: nil,
            is_restricted: nil,
            is_verified: nil,
            last_seen: nil,
            lists_states: nil,
            name: nil,
            notice: nil,
            promo_offers: nil,
            subscribed_by: nil,
            subscribed_by_autoprolong: nil,
            subscribed_by_data: nil,
            subscribed_by_expire: nil,
            subscribed_by_expire_date: nil,
            subscribed_is_expired_now: nil,
            subscribed_on: nil,
            subscribed_on_data: nil,
            subscribed_on_duration: nil,
            subscribed_on_expired_now: nil,
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
                  Onlyfansapi::Models::FanListLatestResponse::Data::User::AvatarThumbs,
                can_add_subscriber: T::Boolean,
                can_comment_story: T::Boolean,
                can_earn: T::Boolean,
                can_look_story: T::Boolean,
                can_pay_internal: T::Boolean,
                can_receive_chat_message: T::Boolean,
                can_report: T::Boolean,
                can_restrict: T::Boolean,
                can_trial_send: T::Boolean,
                current_subscribe_price: String,
                display_name: String,
                has_not_viewed_story: T::Boolean,
                has_scheduled_stream: T::Boolean,
                has_stories: T::Boolean,
                has_stream: T::Boolean,
                header: String,
                header_size: String,
                header_thumbs: String,
                hide_chat: T::Boolean,
                is_blocked: T::Boolean,
                is_paywall_required: T::Boolean,
                is_performer: T::Boolean,
                is_real_performer: T::Boolean,
                is_restricted: T::Boolean,
                is_verified: T::Boolean,
                last_seen: String,
                lists_states:
                  T::Array[
                    Onlyfansapi::Models::FanListLatestResponse::Data::User::ListsState
                  ],
                name: String,
                notice: String,
                promo_offers:
                  T::Array[
                    Onlyfansapi::Models::FanListLatestResponse::Data::User::PromoOffer
                  ],
                subscribed_by: T::Boolean,
                subscribed_by_autoprolong: String,
                subscribed_by_data: String,
                subscribed_by_expire: String,
                subscribed_by_expire_date: String,
                subscribed_is_expired_now: String,
                subscribed_on: T::Boolean,
                subscribed_on_data:
                  Onlyfansapi::Models::FanListLatestResponse::Data::User::SubscribedOnData,
                subscribed_on_duration: String,
                subscribed_on_expired_now: T::Boolean,
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
                  Onlyfansapi::Models::FanListLatestResponse::Data::User::AvatarThumbs,
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

          class ListsState < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::FanListLatestResponse::Data::User::ListsState,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :can_add_user

            sig { params(can_add_user: T::Boolean).void }
            attr_writer :can_add_user

            sig { returns(T.nilable(String)) }
            attr_reader :cannot_add_user_reason

            sig { params(cannot_add_user_reason: String).void }
            attr_writer :cannot_add_user_reason

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_user

            sig { params(has_user: T::Boolean).void }
            attr_writer :has_user

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(String)) }
            attr_reader :type

            sig { params(type: String).void }
            attr_writer :type

            sig do
              params(
                id: String,
                can_add_user: T::Boolean,
                cannot_add_user_reason: String,
                has_user: T::Boolean,
                name: String,
                type: String
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              can_add_user: nil,
              cannot_add_user_reason: nil,
              has_user: nil,
              name: nil,
              type: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  can_add_user: T::Boolean,
                  cannot_add_user_reason: String,
                  has_user: T::Boolean,
                  name: String,
                  type: String
                }
              )
            end
            def to_hash
            end
          end

          class PromoOffer < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::FanListLatestResponse::Data::User::PromoOffer,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :id

            sig { params(id: Integer).void }
            attr_writer :id

            sig { returns(T.nilable(String)) }
            attr_reader :created_at

            sig { params(created_at: String).void }
            attr_writer :created_at

            sig { returns(T.nilable(String)) }
            attr_reader :expired_at

            sig { params(expired_at: String).void }
            attr_writer :expired_at

            sig { returns(T.nilable(String)) }
            attr_reader :finished_at

            sig { params(finished_at: String).void }
            attr_writer :finished_at

            sig { returns(T.nilable(Integer)) }
            attr_reader :subscribe_days

            sig { params(subscribe_days: Integer).void }
            attr_writer :subscribe_days

            sig { returns(T.nilable(String)) }
            attr_reader :subscriber_id

            sig { params(subscriber_id: String).void }
            attr_writer :subscriber_id

            sig { returns(T.nilable(String)) }
            attr_reader :user_id

            sig { params(user_id: String).void }
            attr_writer :user_id

            sig do
              params(
                id: Integer,
                created_at: String,
                expired_at: String,
                finished_at: String,
                subscribe_days: Integer,
                subscriber_id: String,
                user_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              created_at: nil,
              expired_at: nil,
              finished_at: nil,
              subscribe_days: nil,
              subscriber_id: nil,
              user_id: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  created_at: String,
                  expired_at: String,
                  finished_at: String,
                  subscribe_days: Integer,
                  subscriber_id: String,
                  user_id: String
                }
              )
            end
            def to_hash
            end
          end

          class SubscribedOnData < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::FanListLatestResponse::Data::User::SubscribedOnData,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :discount_finished_at

            sig { params(discount_finished_at: String).void }
            attr_writer :discount_finished_at

            sig { returns(T.nilable(Integer)) }
            attr_reader :discount_percent

            sig { params(discount_percent: Integer).void }
            attr_writer :discount_percent

            sig { returns(T.nilable(Integer)) }
            attr_reader :discount_period

            sig { params(discount_period: Integer).void }
            attr_writer :discount_period

            sig { returns(T.nilable(String)) }
            attr_reader :discount_started_at

            sig { params(discount_started_at: String).void }
            attr_writer :discount_started_at

            sig { returns(T.nilable(String)) }
            attr_reader :duration

            sig { params(duration: String).void }
            attr_writer :duration

            sig { returns(T.nilable(String)) }
            attr_reader :expired_at

            sig { params(expired_at: String).void }
            attr_writer :expired_at

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :has_active_paid_subscriptions

            sig { params(has_active_paid_subscriptions: T::Boolean).void }
            attr_writer :has_active_paid_subscriptions

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_muted

            sig { params(is_muted: T::Boolean).void }
            attr_writer :is_muted

            sig { returns(T.nilable(String)) }
            attr_reader :last_activity

            sig { params(last_activity: String).void }
            attr_writer :last_activity

            sig { returns(T.nilable(Integer)) }
            attr_reader :messages_summ

            sig { params(messages_summ: Integer).void }
            attr_writer :messages_summ

            sig { returns(T.nilable(Integer)) }
            attr_reader :new_price

            sig { params(new_price: Integer).void }
            attr_writer :new_price

            sig { returns(T.nilable(Integer)) }
            attr_reader :posts_summ

            sig { params(posts_summ: Integer).void }
            attr_writer :posts_summ

            sig { returns(T.nilable(Integer)) }
            attr_reader :price

            sig { params(price: Integer).void }
            attr_writer :price

            sig { returns(T.nilable(Integer)) }
            attr_reader :recommendations

            sig { params(recommendations: Integer).void }
            attr_writer :recommendations

            sig { returns(T.nilable(Integer)) }
            attr_reader :regular_price

            sig { params(regular_price: Integer).void }
            attr_writer :regular_price

            sig { returns(T.nilable(String)) }
            attr_reader :renewed_at

            sig { params(renewed_at: String).void }
            attr_writer :renewed_at

            sig { returns(T.nilable(String)) }
            attr_reader :status

            sig { params(status: String).void }
            attr_writer :status

            sig { returns(T.nilable(Integer)) }
            attr_reader :streams_summ

            sig { params(streams_summ: Integer).void }
            attr_writer :streams_summ

            sig { returns(T.nilable(String)) }
            attr_reader :subscribe_at

            sig { params(subscribe_at: String).void }
            attr_writer :subscribe_at

            sig { returns(T.nilable(Integer)) }
            attr_reader :subscribe_price

            sig { params(subscribe_price: Integer).void }
            attr_writer :subscribe_price

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Onlyfansapi::Models::FanListLatestResponse::Data::User::SubscribedOnData::Subscribe
                  ]
                )
              )
            end
            attr_reader :subscribes

            sig do
              params(
                subscribes:
                  T::Array[
                    Onlyfansapi::Models::FanListLatestResponse::Data::User::SubscribedOnData::Subscribe::OrHash
                  ]
              ).void
            end
            attr_writer :subscribes

            sig { returns(T.nilable(Integer)) }
            attr_reader :subscribes_summ

            sig { params(subscribes_summ: Integer).void }
            attr_writer :subscribes_summ

            sig { returns(T.nilable(Integer)) }
            attr_reader :tips_summ

            sig { params(tips_summ: Integer).void }
            attr_writer :tips_summ

            sig { returns(T.nilable(Integer)) }
            attr_reader :total_summ

            sig { params(total_summ: Integer).void }
            attr_writer :total_summ

            sig { returns(T.nilable(String)) }
            attr_reader :unsubscribe_reason

            sig { params(unsubscribe_reason: String).void }
            attr_writer :unsubscribe_reason

            sig do
              params(
                discount_finished_at: String,
                discount_percent: Integer,
                discount_period: Integer,
                discount_started_at: String,
                duration: String,
                expired_at: String,
                has_active_paid_subscriptions: T::Boolean,
                is_muted: T::Boolean,
                last_activity: String,
                messages_summ: Integer,
                new_price: Integer,
                posts_summ: Integer,
                price: Integer,
                recommendations: Integer,
                regular_price: Integer,
                renewed_at: String,
                status: String,
                streams_summ: Integer,
                subscribe_at: String,
                subscribe_price: Integer,
                subscribes:
                  T::Array[
                    Onlyfansapi::Models::FanListLatestResponse::Data::User::SubscribedOnData::Subscribe::OrHash
                  ],
                subscribes_summ: Integer,
                tips_summ: Integer,
                total_summ: Integer,
                unsubscribe_reason: String
              ).returns(T.attached_class)
            end
            def self.new(
              discount_finished_at: nil,
              discount_percent: nil,
              discount_period: nil,
              discount_started_at: nil,
              duration: nil,
              expired_at: nil,
              has_active_paid_subscriptions: nil,
              is_muted: nil,
              last_activity: nil,
              messages_summ: nil,
              new_price: nil,
              posts_summ: nil,
              price: nil,
              recommendations: nil,
              regular_price: nil,
              renewed_at: nil,
              status: nil,
              streams_summ: nil,
              subscribe_at: nil,
              subscribe_price: nil,
              subscribes: nil,
              subscribes_summ: nil,
              tips_summ: nil,
              total_summ: nil,
              unsubscribe_reason: nil
            )
            end

            sig do
              override.returns(
                {
                  discount_finished_at: String,
                  discount_percent: Integer,
                  discount_period: Integer,
                  discount_started_at: String,
                  duration: String,
                  expired_at: String,
                  has_active_paid_subscriptions: T::Boolean,
                  is_muted: T::Boolean,
                  last_activity: String,
                  messages_summ: Integer,
                  new_price: Integer,
                  posts_summ: Integer,
                  price: Integer,
                  recommendations: Integer,
                  regular_price: Integer,
                  renewed_at: String,
                  status: String,
                  streams_summ: Integer,
                  subscribe_at: String,
                  subscribe_price: Integer,
                  subscribes:
                    T::Array[
                      Onlyfansapi::Models::FanListLatestResponse::Data::User::SubscribedOnData::Subscribe
                    ],
                  subscribes_summ: Integer,
                  tips_summ: Integer,
                  total_summ: Integer,
                  unsubscribe_reason: String
                }
              )
            end
            def to_hash
            end

            class Subscribe < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::FanListLatestResponse::Data::User::SubscribedOnData::Subscribe,
                    Onlyfansapi::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :id

              sig { params(id: Integer).void }
              attr_writer :id

              sig { returns(T.nilable(String)) }
              attr_reader :action

              sig { params(action: String).void }
              attr_writer :action

              sig { returns(T.nilable(String)) }
              attr_reader :cancel_date

              sig { params(cancel_date: String).void }
              attr_writer :cancel_date

              sig { returns(T.nilable(String)) }
              attr_reader :date

              sig { params(date: String).void }
              attr_writer :date

              sig { returns(T.nilable(Integer)) }
              attr_reader :discount

              sig { params(discount: Integer).void }
              attr_writer :discount

              sig { returns(T.nilable(Integer)) }
              attr_reader :duration

              sig { params(duration: Integer).void }
              attr_writer :duration

              sig { returns(T.nilable(Integer)) }
              attr_reader :earning_id

              sig { params(earning_id: Integer).void }
              attr_writer :earning_id

              sig { returns(T.nilable(String)) }
              attr_reader :expire_date

              sig { params(expire_date: String).void }
              attr_writer :expire_date

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :is_current

              sig { params(is_current: T::Boolean).void }
              attr_writer :is_current

              sig { returns(T.nilable(String)) }
              attr_reader :offer_end

              sig { params(offer_end: String).void }
              attr_writer :offer_end

              sig { returns(T.nilable(String)) }
              attr_reader :offer_start

              sig { params(offer_start: String).void }
              attr_writer :offer_start

              sig { returns(T.nilable(Integer)) }
              attr_reader :price

              sig { params(price: Integer).void }
              attr_writer :price

              sig { returns(T.nilable(Float)) }
              attr_reader :regular_price

              sig { params(regular_price: Float).void }
              attr_writer :regular_price

              sig { returns(T.nilable(String)) }
              attr_reader :start_date

              sig { params(start_date: String).void }
              attr_writer :start_date

              sig { returns(T.nilable(Integer)) }
              attr_reader :subscriber_id

              sig { params(subscriber_id: Integer).void }
              attr_writer :subscriber_id

              sig { returns(T.nilable(String)) }
              attr_reader :type

              sig { params(type: String).void }
              attr_writer :type

              sig { returns(T.nilable(Integer)) }
              attr_reader :user_id

              sig { params(user_id: Integer).void }
              attr_writer :user_id

              sig do
                params(
                  id: Integer,
                  action: String,
                  cancel_date: String,
                  date: String,
                  discount: Integer,
                  duration: Integer,
                  earning_id: Integer,
                  expire_date: String,
                  is_current: T::Boolean,
                  offer_end: String,
                  offer_start: String,
                  price: Integer,
                  regular_price: Float,
                  start_date: String,
                  subscriber_id: Integer,
                  type: String,
                  user_id: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                id: nil,
                action: nil,
                cancel_date: nil,
                date: nil,
                discount: nil,
                duration: nil,
                earning_id: nil,
                expire_date: nil,
                is_current: nil,
                offer_end: nil,
                offer_start: nil,
                price: nil,
                regular_price: nil,
                start_date: nil,
                subscriber_id: nil,
                type: nil,
                user_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: Integer,
                    action: String,
                    cancel_date: String,
                    date: String,
                    discount: Integer,
                    duration: Integer,
                    earning_id: Integer,
                    expire_date: String,
                    is_current: T::Boolean,
                    offer_end: String,
                    offer_start: String,
                    price: Integer,
                    regular_price: Float,
                    start_date: String,
                    subscriber_id: Integer,
                    type: String,
                    user_id: Integer
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
