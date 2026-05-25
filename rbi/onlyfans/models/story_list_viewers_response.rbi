# typed: strong

module Onlyfans
  module Models
    class StoryListViewersResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::StoryListViewersResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Onlyfans::Models::StoryListViewersResponse::Meta))
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfans::Models::StoryListViewersResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(T.nilable(Onlyfans::Models::StoryListViewersResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfans::Models::StoryListViewersResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfans::Models::StoryListViewersResponse::Meta::OrHash,
          data: Onlyfans::Models::StoryListViewersResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfans::Models::StoryListViewersResponse::Meta,
            data: Onlyfans::Models::StoryListViewersResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::StoryListViewersResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfans::Models::StoryListViewersResponse::Meta::Cache)
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfans::Models::StoryListViewersResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(Onlyfans::Models::StoryListViewersResponse::Meta::Credits)
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::StoryListViewersResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::StoryListViewersResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfans::Models::StoryListViewersResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfans::Models::StoryListViewersResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::StoryListViewersResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfans::Models::StoryListViewersResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfans::Models::StoryListViewersResponse::Meta::Cache,
              _credits:
                Onlyfans::Models::StoryListViewersResponse::Meta::Credits,
              _rate_limits:
                Onlyfans::Models::StoryListViewersResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::StoryListViewersResponse::Meta::Cache,
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
                Onlyfans::Models::StoryListViewersResponse::Meta::Credits,
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
                Onlyfans::Models::StoryListViewersResponse::Meta::RateLimits,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_accessor :limit_day

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit_minute

          sig { params(limit_minute: Integer).void }
          attr_writer :limit_minute

          sig { returns(T.nilable(String)) }
          attr_reader :notice

          sig { params(notice: String).void }
          attr_writer :notice

          sig { returns(T.nilable(String)) }
          attr_accessor :remaining_day

          sig { returns(T.nilable(Integer)) }
          attr_reader :remaining_minute

          sig { params(remaining_minute: Integer).void }
          attr_writer :remaining_minute

          sig do
            params(
              limit_day: T.nilable(String),
              limit_minute: Integer,
              notice: String,
              remaining_day: T.nilable(String),
              remaining_minute: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            limit_day: nil,
            limit_minute: nil,
            notice: nil,
            remaining_day: nil,
            remaining_minute: nil
          )
          end

          sig do
            override.returns(
              {
                limit_day: T.nilable(String),
                limit_minute: Integer,
                notice: String,
                remaining_day: T.nilable(String),
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
              Onlyfans::Models::StoryListViewersResponse::Data,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_more

        sig { params(has_more: T::Boolean).void }
        attr_writer :has_more

        sig do
          returns(
            T.nilable(
              T::Array[Onlyfans::Models::StoryListViewersResponse::Data::List]
            )
          )
        end
        attr_reader :list

        sig do
          params(
            list:
              T::Array[
                Onlyfans::Models::StoryListViewersResponse::Data::List::OrHash
              ]
          ).void
        end
        attr_writer :list

        sig do
          params(
            has_more: T::Boolean,
            list:
              T::Array[
                Onlyfans::Models::StoryListViewersResponse::Data::List::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(has_more: nil, list: nil)
        end

        sig do
          override.returns(
            {
              has_more: T::Boolean,
              list:
                T::Array[Onlyfans::Models::StoryListViewersResponse::Data::List]
            }
          )
        end
        def to_hash
        end

        class List < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::StoryListViewersResponse::Data::List,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          sig { returns(T.nilable(String)) }
          attr_accessor :avatar

          sig { returns(T.nilable(String)) }
          attr_accessor :avatar_thumbs

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
          attr_reader :can_report

          sig { params(can_report: T::Boolean).void }
          attr_writer :can_report

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :can_restrict

          sig { params(can_restrict: T::Boolean).void }
          attr_writer :can_restrict

          sig { returns(T.nilable(Integer)) }
          attr_reader :current_subscribe_price

          sig { params(current_subscribe_price: Integer).void }
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
          attr_reader :has_story_tips

          sig { params(has_story_tips: T::Boolean).void }
          attr_writer :has_story_tips

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_stream

          sig { params(has_stream: T::Boolean).void }
          attr_writer :has_stream

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_top_story_tips

          sig { params(has_top_story_tips: T::Boolean).void }
          attr_writer :has_top_story_tips

          sig { returns(T.nilable(String)) }
          attr_accessor :header

          sig { returns(T.nilable(String)) }
          attr_accessor :header_size

          sig { returns(T.nilable(String)) }
          attr_accessor :header_thumbs

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_restricted

          sig { params(is_restricted: T::Boolean).void }
          attr_writer :is_restricted

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_story_blocked_user

          sig { params(is_story_blocked_user: T::Boolean).void }
          attr_writer :is_story_blocked_user

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_story_liked

          sig { params(is_story_liked: T::Boolean).void }
          attr_writer :is_story_liked

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
                  Onlyfans::Models::StoryListViewersResponse::Data::List::ListsState
                ]
              )
            )
          end
          attr_reader :lists_states

          sig do
            params(
              lists_states:
                T::Array[
                  Onlyfans::Models::StoryListViewersResponse::Data::List::ListsState::OrHash
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

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :show_media_count

          sig { params(show_media_count: T::Boolean).void }
          attr_writer :show_media_count

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :subscribed_by

          sig { params(subscribed_by: T::Boolean).void }
          attr_writer :subscribed_by

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :subscribed_by_autoprolong

          sig { params(subscribed_by_autoprolong: T::Boolean).void }
          attr_writer :subscribed_by_autoprolong

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :subscribed_by_expire

          sig { params(subscribed_by_expire: T::Boolean).void }
          attr_writer :subscribed_by_expire

          sig { returns(T.nilable(String)) }
          attr_reader :subscribed_by_expire_date

          sig { params(subscribed_by_expire_date: String).void }
          attr_writer :subscribed_by_expire_date

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :subscribed_is_expired_now

          sig { params(subscribed_is_expired_now: T::Boolean).void }
          attr_writer :subscribed_is_expired_now

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :subscribed_on

          sig { params(subscribed_on: T::Boolean).void }
          attr_writer :subscribed_on

          sig { returns(T.nilable(String)) }
          attr_reader :subscribed_on_duration

          sig { params(subscribed_on_duration: String).void }
          attr_writer :subscribed_on_duration

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :subscribed_on_expired_now

          sig { params(subscribed_on_expired_now: T::Boolean).void }
          attr_writer :subscribed_on_expired_now

          sig { returns(T.nilable(Integer)) }
          attr_reader :subscribe_price

          sig { params(subscribe_price: Integer).void }
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
              avatar: T.nilable(String),
              avatar_thumbs: T.nilable(String),
              can_add_subscriber: T::Boolean,
              can_comment_story: T::Boolean,
              can_earn: T::Boolean,
              can_look_story: T::Boolean,
              can_pay_internal: T::Boolean,
              can_report: T::Boolean,
              can_restrict: T::Boolean,
              current_subscribe_price: Integer,
              display_name: String,
              has_not_viewed_story: T::Boolean,
              has_scheduled_stream: T::Boolean,
              has_stories: T::Boolean,
              has_story_tips: T::Boolean,
              has_stream: T::Boolean,
              has_top_story_tips: T::Boolean,
              header: T.nilable(String),
              header_size: T.nilable(String),
              header_thumbs: T.nilable(String),
              is_restricted: T::Boolean,
              is_story_blocked_user: T::Boolean,
              is_story_liked: T::Boolean,
              is_verified: T::Boolean,
              last_seen: String,
              lists_states:
                T::Array[
                  Onlyfans::Models::StoryListViewersResponse::Data::List::ListsState::OrHash
                ],
              name: String,
              notice: String,
              show_media_count: T::Boolean,
              subscribed_by: T::Boolean,
              subscribed_by_autoprolong: T::Boolean,
              subscribed_by_expire: T::Boolean,
              subscribed_by_expire_date: String,
              subscribed_is_expired_now: T::Boolean,
              subscribed_on: T::Boolean,
              subscribed_on_duration: String,
              subscribed_on_expired_now: T::Boolean,
              subscribe_price: Integer,
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
            can_report: nil,
            can_restrict: nil,
            current_subscribe_price: nil,
            display_name: nil,
            has_not_viewed_story: nil,
            has_scheduled_stream: nil,
            has_stories: nil,
            has_story_tips: nil,
            has_stream: nil,
            has_top_story_tips: nil,
            header: nil,
            header_size: nil,
            header_thumbs: nil,
            is_restricted: nil,
            is_story_blocked_user: nil,
            is_story_liked: nil,
            is_verified: nil,
            last_seen: nil,
            lists_states: nil,
            name: nil,
            notice: nil,
            show_media_count: nil,
            subscribed_by: nil,
            subscribed_by_autoprolong: nil,
            subscribed_by_expire: nil,
            subscribed_by_expire_date: nil,
            subscribed_is_expired_now: nil,
            subscribed_on: nil,
            subscribed_on_duration: nil,
            subscribed_on_expired_now: nil,
            subscribe_price: nil,
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
                avatar: T.nilable(String),
                avatar_thumbs: T.nilable(String),
                can_add_subscriber: T::Boolean,
                can_comment_story: T::Boolean,
                can_earn: T::Boolean,
                can_look_story: T::Boolean,
                can_pay_internal: T::Boolean,
                can_report: T::Boolean,
                can_restrict: T::Boolean,
                current_subscribe_price: Integer,
                display_name: String,
                has_not_viewed_story: T::Boolean,
                has_scheduled_stream: T::Boolean,
                has_stories: T::Boolean,
                has_story_tips: T::Boolean,
                has_stream: T::Boolean,
                has_top_story_tips: T::Boolean,
                header: T.nilable(String),
                header_size: T.nilable(String),
                header_thumbs: T.nilable(String),
                is_restricted: T::Boolean,
                is_story_blocked_user: T::Boolean,
                is_story_liked: T::Boolean,
                is_verified: T::Boolean,
                last_seen: String,
                lists_states:
                  T::Array[
                    Onlyfans::Models::StoryListViewersResponse::Data::List::ListsState
                  ],
                name: String,
                notice: String,
                show_media_count: T::Boolean,
                subscribed_by: T::Boolean,
                subscribed_by_autoprolong: T::Boolean,
                subscribed_by_expire: T::Boolean,
                subscribed_by_expire_date: String,
                subscribed_is_expired_now: T::Boolean,
                subscribed_on: T::Boolean,
                subscribed_on_duration: String,
                subscribed_on_expired_now: T::Boolean,
                subscribe_price: Integer,
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

          class ListsState < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::StoryListViewersResponse::Data::List::ListsState,
                  Onlyfans::Internal::AnyHash
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
        end
      end
    end
  end
end
