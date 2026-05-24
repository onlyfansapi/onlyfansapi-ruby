# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Statistics
      # No filter
      #
      # @see Onlyfansapi::Resources::Statistics::Reach#get_profile_visitors
      module ReachGetProfileVisitorsResponse
        extend Onlyfansapi::Internal::Type::Union

        # No filter
        variant -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0 }

        # Chart filter
        variant -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1 }

        # Top countries filter
        variant -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2 }

        class UnionMember0 < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute _meta
          #
          #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta, nil]
          optional :_meta,
                   -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta }

          # @!attribute data
          #
          #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data, nil]
          optional :data,
                   -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data }

          # @!method initialize(_meta: nil, data: nil)
          #   No filter
          #
          #   @param _meta [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta]
          #   @param data [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data]

          # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0#_meta
          class Meta < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute _cache
            #
            #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::Cache, nil]
            optional :_cache,
                     -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::Cache }

            # @!attribute _credits
            #
            #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::Credits, nil]
            optional :_credits,
                     -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::Credits }

            # @!attribute _rate_limits
            #
            #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::RateLimits, nil]
            optional :_rate_limits,
                     -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::RateLimits }

            # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
            #   @param _cache [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::Cache]
            #   @param _credits [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::Credits]
            #   @param _rate_limits [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::RateLimits]

            # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta#_cache
            class Cache < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute is_cached
              #
              #   @return [Boolean, nil]
              optional :is_cached, Onlyfansapi::Internal::Type::Boolean

              # @!attribute note
              #
              #   @return [String, nil]
              optional :note, String

              # @!method initialize(is_cached: nil, note: nil)
              #   @param is_cached [Boolean]
              #   @param note [String]
            end

            # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta#_credits
            class Credits < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute balance
              #
              #   @return [Integer, nil]
              optional :balance, Integer

              # @!attribute note
              #
              #   @return [String, nil]
              optional :note, String

              # @!attribute used
              #
              #   @return [Integer, nil]
              optional :used, Integer

              # @!method initialize(balance: nil, note: nil, used: nil)
              #   @param balance [Integer]
              #   @param note [String]
              #   @param used [Integer]
            end

            # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta#_rate_limits
            class RateLimits < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute limit_day
              #
              #   @return [Integer, nil]
              optional :limit_day, Integer

              # @!attribute limit_minute
              #
              #   @return [Integer, nil]
              optional :limit_minute, Integer

              # @!attribute remaining_day
              #
              #   @return [Integer, nil]
              optional :remaining_day, Integer

              # @!attribute remaining_minute
              #
              #   @return [Integer, nil]
              optional :remaining_minute, Integer

              # @!method initialize(limit_day: nil, limit_minute: nil, remaining_day: nil, remaining_minute: nil)
              #   @param limit_day [Integer]
              #   @param limit_minute [Integer]
              #   @param remaining_day [Integer]
              #   @param remaining_minute [Integer]
            end
          end

          # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0#data
          class Data < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute chart
            #
            #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart, nil]
            optional :chart,
                     -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart }

            # @!attribute has_stats
            #
            #   @return [Boolean, nil]
            optional :has_stats, Onlyfansapi::Internal::Type::Boolean, api_name: :hasStats

            # @!attribute is_available
            #
            #   @return [Boolean, nil]
            optional :is_available, Onlyfansapi::Internal::Type::Boolean, api_name: :isAvailable

            # @!attribute top_countries
            #
            #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries, nil]
            optional :top_countries,
                     -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries },
                     api_name: :topCountries

            # @!attribute top_duration_users
            #
            #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopDurationUsers, nil]
            optional :top_duration_users,
                     -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopDurationUsers },
                     api_name: :topDurationUsers

            # @!attribute total
            #
            #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Total, nil]
            optional :total,
                     -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Total }

            # @!method initialize(chart: nil, has_stats: nil, is_available: nil, top_countries: nil, top_duration_users: nil, total: nil)
            #   @param chart [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart]
            #   @param has_stats [Boolean]
            #   @param is_available [Boolean]
            #   @param top_countries [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries]
            #   @param top_duration_users [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopDurationUsers]
            #   @param total [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Total]

            # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data#chart
            class Chart < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute duration
              #
              #   @return [Array<Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart::Duration>, nil]
              optional :duration,
                       -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart::Duration] }

              # @!attribute visitors
              #
              #   @return [Array<Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart::Visitor>, nil]
              optional :visitors,
                       -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart::Visitor] }

              # @!method initialize(duration: nil, visitors: nil)
              #   @param duration [Array<Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart::Duration>]
              #   @param visitors [Array<Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart::Visitor>]

              class Duration < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute count
                #
                #   @return [Integer, nil]
                optional :count, Integer

                # @!attribute date
                #
                #   @return [String, nil]
                optional :date, String

                # @!method initialize(count: nil, date: nil)
                #   @param count [Integer]
                #   @param date [String]
              end

              class Visitor < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute count
                #
                #   @return [Integer, nil]
                optional :count, Integer

                # @!attribute date
                #
                #   @return [String, nil]
                optional :date, String

                # @!method initialize(count: nil, date: nil)
                #   @param count [Integer]
                #   @param date [String]
              end
            end

            # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data#top_countries
            class TopCountries < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute has_more
              #
              #   @return [Boolean, nil]
              optional :has_more, Onlyfansapi::Internal::Type::Boolean, api_name: :hasMore

              # @!attribute rows
              #
              #   @return [Array<Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Row>, nil]
              optional :rows,
                       -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Row] }

              # @!attribute totals
              #
              #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Totals, nil]
              optional :totals,
                       -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Totals }

              # @!method initialize(has_more: nil, rows: nil, totals: nil)
              #   @param has_more [Boolean]
              #   @param rows [Array<Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Row>]
              #   @param totals [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Totals]

              class Row < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute country_code
                #
                #   @return [String, nil]
                optional :country_code, String, api_name: :countryCode

                # @!attribute country_name
                #
                #   @return [String, nil]
                optional :country_name, String, api_name: :countryName

                # @!attribute rank
                #
                #   @return [Integer, nil]
                optional :rank, Integer

                # @!attribute views_count
                #
                #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Row::ViewsCount, nil]
                optional :views_count,
                         -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Row::ViewsCount },
                         api_name: :viewsCount

                # @!method initialize(country_code: nil, country_name: nil, rank: nil, views_count: nil)
                #   @param country_code [String]
                #   @param country_name [String]
                #   @param rank [Integer]
                #   @param views_count [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Row::ViewsCount]

                # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Row#views_count
                class ViewsCount < Onlyfansapi::Internal::Type::BaseModel
                  # @!attribute guests
                  #
                  #   @return [Integer, nil]
                  optional :guests, Integer

                  # @!attribute subscribers
                  #
                  #   @return [Integer, nil]
                  optional :subscribers, Integer

                  # @!attribute total
                  #
                  #   @return [Integer, nil]
                  optional :total, Integer

                  # @!attribute users
                  #
                  #   @return [Integer, nil]
                  optional :users, Integer

                  # @!method initialize(guests: nil, subscribers: nil, total: nil, users: nil)
                  #   @param guests [Integer]
                  #   @param subscribers [Integer]
                  #   @param total [Integer]
                  #   @param users [Integer]
                end
              end

              # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries#totals
              class Totals < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute guests
                #
                #   @return [String, nil]
                optional :guests, String

                # @!attribute subscribers
                #
                #   @return [Integer, nil]
                optional :subscribers, Integer

                # @!attribute total
                #
                #   @return [Integer, nil]
                optional :total, Integer

                # @!attribute users
                #
                #   @return [String, nil]
                optional :users, String

                # @!method initialize(guests: nil, subscribers: nil, total: nil, users: nil)
                #   @param guests [String]
                #   @param subscribers [Integer]
                #   @param total [Integer]
                #   @param users [String]
              end
            end

            # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data#top_duration_users
            class TopDurationUsers < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute totals
              #
              #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopDurationUsers::Totals, nil]
              optional :totals,
                       -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopDurationUsers::Totals }

              # @!method initialize(totals: nil)
              #   @param totals [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopDurationUsers::Totals]

              # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopDurationUsers#totals
              class Totals < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute guests
                #
                #   @return [String, nil]
                optional :guests, String

                # @!attribute subscribers
                #
                #   @return [Integer, nil]
                optional :subscribers, Integer

                # @!attribute total
                #
                #   @return [Integer, nil]
                optional :total, Integer

                # @!attribute users
                #
                #   @return [String, nil]
                optional :users, String

                # @!method initialize(guests: nil, subscribers: nil, total: nil, users: nil)
                #   @param guests [String]
                #   @param subscribers [Integer]
                #   @param total [Integer]
                #   @param users [String]
              end
            end

            # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data#total
            class Total < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute current
              #
              #   @return [String, nil]
              optional :current, String

              # @!attribute delta
              #
              #   @return [Float, nil]
              optional :delta, Float

              # @!method initialize(current: nil, delta: nil)
              #   @param current [String]
              #   @param delta [Float]
            end
          end
        end

        class UnionMember1 < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute _meta
          #
          #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta, nil]
          optional :_meta,
                   -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta }

          # @!attribute data
          #
          #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data, nil]
          optional :data,
                   -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data }

          # @!method initialize(_meta: nil, data: nil)
          #   Chart filter
          #
          #   @param _meta [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta]
          #   @param data [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data]

          # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1#_meta
          class Meta < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute _cache
            #
            #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::Cache, nil]
            optional :_cache,
                     -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::Cache }

            # @!attribute _credits
            #
            #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::Credits, nil]
            optional :_credits,
                     -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::Credits }

            # @!attribute _rate_limits
            #
            #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::RateLimits, nil]
            optional :_rate_limits,
                     -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::RateLimits }

            # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
            #   @param _cache [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::Cache]
            #   @param _credits [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::Credits]
            #   @param _rate_limits [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::RateLimits]

            # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta#_cache
            class Cache < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute is_cached
              #
              #   @return [Boolean, nil]
              optional :is_cached, Onlyfansapi::Internal::Type::Boolean

              # @!attribute note
              #
              #   @return [String, nil]
              optional :note, String

              # @!method initialize(is_cached: nil, note: nil)
              #   @param is_cached [Boolean]
              #   @param note [String]
            end

            # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta#_credits
            class Credits < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute balance
              #
              #   @return [Integer, nil]
              optional :balance, Integer

              # @!attribute note
              #
              #   @return [String, nil]
              optional :note, String

              # @!attribute used
              #
              #   @return [Integer, nil]
              optional :used, Integer

              # @!method initialize(balance: nil, note: nil, used: nil)
              #   @param balance [Integer]
              #   @param note [String]
              #   @param used [Integer]
            end

            # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta#_rate_limits
            class RateLimits < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute limit_day
              #
              #   @return [Integer, nil]
              optional :limit_day, Integer

              # @!attribute limit_minute
              #
              #   @return [Integer, nil]
              optional :limit_minute, Integer

              # @!attribute remaining_day
              #
              #   @return [Integer, nil]
              optional :remaining_day, Integer

              # @!attribute remaining_minute
              #
              #   @return [Integer, nil]
              optional :remaining_minute, Integer

              # @!method initialize(limit_day: nil, limit_minute: nil, remaining_day: nil, remaining_minute: nil)
              #   @param limit_day [Integer]
              #   @param limit_minute [Integer]
              #   @param remaining_day [Integer]
              #   @param remaining_minute [Integer]
            end
          end

          # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1#data
          class Data < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute chart
            #
            #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart, nil]
            optional :chart,
                     -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart }

            # @!attribute has_stats
            #
            #   @return [Boolean, nil]
            optional :has_stats, Onlyfansapi::Internal::Type::Boolean, api_name: :hasStats

            # @!attribute is_available
            #
            #   @return [Boolean, nil]
            optional :is_available, Onlyfansapi::Internal::Type::Boolean, api_name: :isAvailable

            # @!attribute total
            #
            #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Total, nil]
            optional :total,
                     -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Total }

            # @!method initialize(chart: nil, has_stats: nil, is_available: nil, total: nil)
            #   @param chart [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart]
            #   @param has_stats [Boolean]
            #   @param is_available [Boolean]
            #   @param total [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Total]

            # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data#chart
            class Chart < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute duration
              #
              #   @return [Array<Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart::Duration>, nil]
              optional :duration,
                       -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart::Duration] }

              # @!attribute visitors
              #
              #   @return [Array<Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart::Visitor>, nil]
              optional :visitors,
                       -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart::Visitor] }

              # @!method initialize(duration: nil, visitors: nil)
              #   @param duration [Array<Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart::Duration>]
              #   @param visitors [Array<Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart::Visitor>]

              class Duration < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute count
                #
                #   @return [Integer, nil]
                optional :count, Integer

                # @!attribute date
                #
                #   @return [String, nil]
                optional :date, String

                # @!method initialize(count: nil, date: nil)
                #   @param count [Integer]
                #   @param date [String]
              end

              class Visitor < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute count
                #
                #   @return [Integer, nil]
                optional :count, Integer

                # @!attribute date
                #
                #   @return [String, nil]
                optional :date, String

                # @!method initialize(count: nil, date: nil)
                #   @param count [Integer]
                #   @param date [String]
              end
            end

            # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data#total
            class Total < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute current
              #
              #   @return [String, nil]
              optional :current, String

              # @!attribute delta
              #
              #   @return [Float, nil]
              optional :delta, Float

              # @!method initialize(current: nil, delta: nil)
              #   @param current [String]
              #   @param delta [Float]
            end
          end
        end

        class UnionMember2 < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute _meta
          #
          #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta, nil]
          optional :_meta,
                   -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta }

          # @!attribute data
          #
          #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data, nil]
          optional :data,
                   -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data }

          # @!method initialize(_meta: nil, data: nil)
          #   Top countries filter
          #
          #   @param _meta [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta]
          #   @param data [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data]

          # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2#_meta
          class Meta < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute _cache
            #
            #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::Cache, nil]
            optional :_cache,
                     -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::Cache }

            # @!attribute _credits
            #
            #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::Credits, nil]
            optional :_credits,
                     -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::Credits }

            # @!attribute _rate_limits
            #
            #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::RateLimits, nil]
            optional :_rate_limits,
                     -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::RateLimits }

            # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
            #   @param _cache [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::Cache]
            #   @param _credits [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::Credits]
            #   @param _rate_limits [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::RateLimits]

            # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta#_cache
            class Cache < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute is_cached
              #
              #   @return [Boolean, nil]
              optional :is_cached, Onlyfansapi::Internal::Type::Boolean

              # @!attribute note
              #
              #   @return [String, nil]
              optional :note, String

              # @!method initialize(is_cached: nil, note: nil)
              #   @param is_cached [Boolean]
              #   @param note [String]
            end

            # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta#_credits
            class Credits < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute balance
              #
              #   @return [Integer, nil]
              optional :balance, Integer

              # @!attribute note
              #
              #   @return [String, nil]
              optional :note, String

              # @!attribute used
              #
              #   @return [Integer, nil]
              optional :used, Integer

              # @!method initialize(balance: nil, note: nil, used: nil)
              #   @param balance [Integer]
              #   @param note [String]
              #   @param used [Integer]
            end

            # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta#_rate_limits
            class RateLimits < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute limit_day
              #
              #   @return [Integer, nil]
              optional :limit_day, Integer

              # @!attribute limit_minute
              #
              #   @return [Integer, nil]
              optional :limit_minute, Integer

              # @!attribute remaining_day
              #
              #   @return [Integer, nil]
              optional :remaining_day, Integer

              # @!attribute remaining_minute
              #
              #   @return [Integer, nil]
              optional :remaining_minute, Integer

              # @!method initialize(limit_day: nil, limit_minute: nil, remaining_day: nil, remaining_minute: nil)
              #   @param limit_day [Integer]
              #   @param limit_minute [Integer]
              #   @param remaining_day [Integer]
              #   @param remaining_minute [Integer]
            end
          end

          # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2#data
          class Data < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute has_stats
            #
            #   @return [Boolean, nil]
            optional :has_stats, Onlyfansapi::Internal::Type::Boolean, api_name: :hasStats

            # @!attribute is_available
            #
            #   @return [Boolean, nil]
            optional :is_available, Onlyfansapi::Internal::Type::Boolean, api_name: :isAvailable

            # @!attribute top_countries
            #
            #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries, nil]
            optional :top_countries,
                     -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries },
                     api_name: :topCountries

            # @!method initialize(has_stats: nil, is_available: nil, top_countries: nil)
            #   @param has_stats [Boolean]
            #   @param is_available [Boolean]
            #   @param top_countries [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries]

            # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data#top_countries
            class TopCountries < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute has_more
              #
              #   @return [Boolean, nil]
              optional :has_more, Onlyfansapi::Internal::Type::Boolean, api_name: :hasMore

              # @!attribute rows
              #
              #   @return [Array<Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Row>, nil]
              optional :rows,
                       -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Row] }

              # @!attribute totals
              #
              #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Totals, nil]
              optional :totals,
                       -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Totals }

              # @!method initialize(has_more: nil, rows: nil, totals: nil)
              #   @param has_more [Boolean]
              #   @param rows [Array<Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Row>]
              #   @param totals [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Totals]

              class Row < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute country_code
                #
                #   @return [String, nil]
                optional :country_code, String, api_name: :countryCode

                # @!attribute country_name
                #
                #   @return [String, nil]
                optional :country_name, String, api_name: :countryName

                # @!attribute rank
                #
                #   @return [Integer, nil]
                optional :rank, Integer

                # @!attribute views_count
                #
                #   @return [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Row::ViewsCount, nil]
                optional :views_count,
                         -> { Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Row::ViewsCount },
                         api_name: :viewsCount

                # @!method initialize(country_code: nil, country_name: nil, rank: nil, views_count: nil)
                #   @param country_code [String]
                #   @param country_name [String]
                #   @param rank [Integer]
                #   @param views_count [Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Row::ViewsCount]

                # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Row#views_count
                class ViewsCount < Onlyfansapi::Internal::Type::BaseModel
                  # @!attribute guests
                  #
                  #   @return [Integer, nil]
                  optional :guests, Integer

                  # @!attribute subscribers
                  #
                  #   @return [Integer, nil]
                  optional :subscribers, Integer

                  # @!attribute total
                  #
                  #   @return [Integer, nil]
                  optional :total, Integer

                  # @!attribute users
                  #
                  #   @return [Integer, nil]
                  optional :users, Integer

                  # @!method initialize(guests: nil, subscribers: nil, total: nil, users: nil)
                  #   @param guests [Integer]
                  #   @param subscribers [Integer]
                  #   @param total [Integer]
                  #   @param users [Integer]
                end
              end

              # @see Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries#totals
              class Totals < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute guests
                #
                #   @return [String, nil]
                optional :guests, String

                # @!attribute subscribers
                #
                #   @return [Integer, nil]
                optional :subscribers, Integer

                # @!attribute total
                #
                #   @return [Integer, nil]
                optional :total, Integer

                # @!attribute users
                #
                #   @return [String, nil]
                optional :users, String

                # @!method initialize(guests: nil, subscribers: nil, total: nil, users: nil)
                #   @param guests [String]
                #   @param subscribers [Integer]
                #   @param total [Integer]
                #   @param users [String]
              end
            end
          end
        end

        # @!method self.variants
        #   @return [Array(Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0, Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1, Onlyfansapi::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2)]
      end
    end
  end
end
