# frozen_string_literal: true

module Onlyfans
  module Models
    module Statistics
      # No filter
      #
      # @see Onlyfans::Resources::Statistics::Reach#get_profile_visitors
      module ReachGetProfileVisitorsResponse
        extend Onlyfans::Internal::Type::Union

        # No filter
        variant -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0 }

        # Chart filter
        variant -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1 }

        # Top countries filter
        variant -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2 }

        class UnionMember0 < Onlyfans::Internal::Type::BaseModel
          # @!attribute _meta
          #
          #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta, nil]
          optional :_meta, -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta }

          # @!attribute data
          #
          #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data, nil]
          optional :data, -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data }

          # @!method initialize(_meta: nil, data: nil)
          #   No filter
          #
          #   @param _meta [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta]
          #   @param data [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data]

          # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0#_meta
          class Meta < Onlyfans::Internal::Type::BaseModel
            # @!attribute _cache
            #
            #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::Cache, nil]
            optional :_cache,
                     -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::Cache }

            # @!attribute _credits
            #
            #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::Credits, nil]
            optional :_credits,
                     -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::Credits }

            # @!attribute _rate_limits
            #
            #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::RateLimits, nil]
            optional :_rate_limits,
                     -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::RateLimits }

            # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
            #   @param _cache [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::Cache]
            #   @param _credits [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::Credits]
            #   @param _rate_limits [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta::RateLimits]

            # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta#_cache
            class Cache < Onlyfans::Internal::Type::BaseModel
              # @!attribute is_cached
              #
              #   @return [Boolean, nil]
              optional :is_cached, Onlyfans::Internal::Type::Boolean

              # @!attribute note
              #
              #   @return [String, nil]
              optional :note, String

              # @!method initialize(is_cached: nil, note: nil)
              #   @param is_cached [Boolean]
              #   @param note [String]
            end

            # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta#_credits
            class Credits < Onlyfans::Internal::Type::BaseModel
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

            # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Meta#_rate_limits
            class RateLimits < Onlyfans::Internal::Type::BaseModel
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

          # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0#data
          class Data < Onlyfans::Internal::Type::BaseModel
            # @!attribute chart
            #
            #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart, nil]
            optional :chart,
                     -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart }

            # @!attribute has_stats
            #
            #   @return [Boolean, nil]
            optional :has_stats, Onlyfans::Internal::Type::Boolean, api_name: :hasStats

            # @!attribute is_available
            #
            #   @return [Boolean, nil]
            optional :is_available, Onlyfans::Internal::Type::Boolean, api_name: :isAvailable

            # @!attribute top_countries
            #
            #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries, nil]
            optional :top_countries,
                     -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries },
                     api_name: :topCountries

            # @!attribute top_duration_users
            #
            #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopDurationUsers, nil]
            optional :top_duration_users,
                     -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopDurationUsers },
                     api_name: :topDurationUsers

            # @!attribute total
            #
            #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Total, nil]
            optional :total,
                     -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Total }

            # @!method initialize(chart: nil, has_stats: nil, is_available: nil, top_countries: nil, top_duration_users: nil, total: nil)
            #   @param chart [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart]
            #   @param has_stats [Boolean]
            #   @param is_available [Boolean]
            #   @param top_countries [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries]
            #   @param top_duration_users [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopDurationUsers]
            #   @param total [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Total]

            # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data#chart
            class Chart < Onlyfans::Internal::Type::BaseModel
              # @!attribute duration
              #
              #   @return [Array<Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart::Duration>, nil]
              optional :duration,
                       -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart::Duration] }

              # @!attribute visitors
              #
              #   @return [Array<Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart::Visitor>, nil]
              optional :visitors,
                       -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart::Visitor] }

              # @!method initialize(duration: nil, visitors: nil)
              #   @param duration [Array<Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart::Duration>]
              #   @param visitors [Array<Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::Chart::Visitor>]

              class Duration < Onlyfans::Internal::Type::BaseModel
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

              class Visitor < Onlyfans::Internal::Type::BaseModel
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

            # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data#top_countries
            class TopCountries < Onlyfans::Internal::Type::BaseModel
              # @!attribute has_more
              #
              #   @return [Boolean, nil]
              optional :has_more, Onlyfans::Internal::Type::Boolean, api_name: :hasMore

              # @!attribute rows
              #
              #   @return [Array<Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Row>, nil]
              optional :rows,
                       -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Row] }

              # @!attribute totals
              #
              #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Totals, nil]
              optional :totals,
                       -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Totals }

              # @!method initialize(has_more: nil, rows: nil, totals: nil)
              #   @param has_more [Boolean]
              #   @param rows [Array<Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Row>]
              #   @param totals [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Totals]

              class Row < Onlyfans::Internal::Type::BaseModel
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
                #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Row::ViewsCount, nil]
                optional :views_count,
                         -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Row::ViewsCount },
                         api_name: :viewsCount

                # @!method initialize(country_code: nil, country_name: nil, rank: nil, views_count: nil)
                #   @param country_code [String]
                #   @param country_name [String]
                #   @param rank [Integer]
                #   @param views_count [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Row::ViewsCount]

                # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries::Row#views_count
                class ViewsCount < Onlyfans::Internal::Type::BaseModel
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

              # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopCountries#totals
              class Totals < Onlyfans::Internal::Type::BaseModel
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

            # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data#top_duration_users
            class TopDurationUsers < Onlyfans::Internal::Type::BaseModel
              # @!attribute totals
              #
              #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopDurationUsers::Totals, nil]
              optional :totals,
                       -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopDurationUsers::Totals }

              # @!method initialize(totals: nil)
              #   @param totals [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopDurationUsers::Totals]

              # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data::TopDurationUsers#totals
              class Totals < Onlyfans::Internal::Type::BaseModel
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

            # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0::Data#total
            class Total < Onlyfans::Internal::Type::BaseModel
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

        class UnionMember1 < Onlyfans::Internal::Type::BaseModel
          # @!attribute _meta
          #
          #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta, nil]
          optional :_meta, -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta }

          # @!attribute data
          #
          #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data, nil]
          optional :data, -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data }

          # @!method initialize(_meta: nil, data: nil)
          #   Chart filter
          #
          #   @param _meta [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta]
          #   @param data [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data]

          # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1#_meta
          class Meta < Onlyfans::Internal::Type::BaseModel
            # @!attribute _cache
            #
            #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::Cache, nil]
            optional :_cache,
                     -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::Cache }

            # @!attribute _credits
            #
            #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::Credits, nil]
            optional :_credits,
                     -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::Credits }

            # @!attribute _rate_limits
            #
            #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::RateLimits, nil]
            optional :_rate_limits,
                     -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::RateLimits }

            # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
            #   @param _cache [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::Cache]
            #   @param _credits [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::Credits]
            #   @param _rate_limits [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta::RateLimits]

            # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta#_cache
            class Cache < Onlyfans::Internal::Type::BaseModel
              # @!attribute is_cached
              #
              #   @return [Boolean, nil]
              optional :is_cached, Onlyfans::Internal::Type::Boolean

              # @!attribute note
              #
              #   @return [String, nil]
              optional :note, String

              # @!method initialize(is_cached: nil, note: nil)
              #   @param is_cached [Boolean]
              #   @param note [String]
            end

            # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta#_credits
            class Credits < Onlyfans::Internal::Type::BaseModel
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

            # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Meta#_rate_limits
            class RateLimits < Onlyfans::Internal::Type::BaseModel
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

          # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1#data
          class Data < Onlyfans::Internal::Type::BaseModel
            # @!attribute chart
            #
            #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart, nil]
            optional :chart,
                     -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart }

            # @!attribute has_stats
            #
            #   @return [Boolean, nil]
            optional :has_stats, Onlyfans::Internal::Type::Boolean, api_name: :hasStats

            # @!attribute is_available
            #
            #   @return [Boolean, nil]
            optional :is_available, Onlyfans::Internal::Type::Boolean, api_name: :isAvailable

            # @!attribute total
            #
            #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Total, nil]
            optional :total,
                     -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Total }

            # @!method initialize(chart: nil, has_stats: nil, is_available: nil, total: nil)
            #   @param chart [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart]
            #   @param has_stats [Boolean]
            #   @param is_available [Boolean]
            #   @param total [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Total]

            # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data#chart
            class Chart < Onlyfans::Internal::Type::BaseModel
              # @!attribute duration
              #
              #   @return [Array<Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart::Duration>, nil]
              optional :duration,
                       -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart::Duration] }

              # @!attribute visitors
              #
              #   @return [Array<Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart::Visitor>, nil]
              optional :visitors,
                       -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart::Visitor] }

              # @!method initialize(duration: nil, visitors: nil)
              #   @param duration [Array<Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart::Duration>]
              #   @param visitors [Array<Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data::Chart::Visitor>]

              class Duration < Onlyfans::Internal::Type::BaseModel
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

              class Visitor < Onlyfans::Internal::Type::BaseModel
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

            # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1::Data#total
            class Total < Onlyfans::Internal::Type::BaseModel
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

        class UnionMember2 < Onlyfans::Internal::Type::BaseModel
          # @!attribute _meta
          #
          #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta, nil]
          optional :_meta, -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta }

          # @!attribute data
          #
          #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data, nil]
          optional :data, -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data }

          # @!method initialize(_meta: nil, data: nil)
          #   Top countries filter
          #
          #   @param _meta [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta]
          #   @param data [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data]

          # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2#_meta
          class Meta < Onlyfans::Internal::Type::BaseModel
            # @!attribute _cache
            #
            #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::Cache, nil]
            optional :_cache,
                     -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::Cache }

            # @!attribute _credits
            #
            #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::Credits, nil]
            optional :_credits,
                     -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::Credits }

            # @!attribute _rate_limits
            #
            #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::RateLimits, nil]
            optional :_rate_limits,
                     -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::RateLimits }

            # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
            #   @param _cache [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::Cache]
            #   @param _credits [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::Credits]
            #   @param _rate_limits [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta::RateLimits]

            # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta#_cache
            class Cache < Onlyfans::Internal::Type::BaseModel
              # @!attribute is_cached
              #
              #   @return [Boolean, nil]
              optional :is_cached, Onlyfans::Internal::Type::Boolean

              # @!attribute note
              #
              #   @return [String, nil]
              optional :note, String

              # @!method initialize(is_cached: nil, note: nil)
              #   @param is_cached [Boolean]
              #   @param note [String]
            end

            # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta#_credits
            class Credits < Onlyfans::Internal::Type::BaseModel
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

            # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Meta#_rate_limits
            class RateLimits < Onlyfans::Internal::Type::BaseModel
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

          # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2#data
          class Data < Onlyfans::Internal::Type::BaseModel
            # @!attribute has_stats
            #
            #   @return [Boolean, nil]
            optional :has_stats, Onlyfans::Internal::Type::Boolean, api_name: :hasStats

            # @!attribute is_available
            #
            #   @return [Boolean, nil]
            optional :is_available, Onlyfans::Internal::Type::Boolean, api_name: :isAvailable

            # @!attribute top_countries
            #
            #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries, nil]
            optional :top_countries,
                     -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries },
                     api_name: :topCountries

            # @!method initialize(has_stats: nil, is_available: nil, top_countries: nil)
            #   @param has_stats [Boolean]
            #   @param is_available [Boolean]
            #   @param top_countries [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries]

            # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data#top_countries
            class TopCountries < Onlyfans::Internal::Type::BaseModel
              # @!attribute has_more
              #
              #   @return [Boolean, nil]
              optional :has_more, Onlyfans::Internal::Type::Boolean, api_name: :hasMore

              # @!attribute rows
              #
              #   @return [Array<Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Row>, nil]
              optional :rows,
                       -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Row] }

              # @!attribute totals
              #
              #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Totals, nil]
              optional :totals,
                       -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Totals }

              # @!method initialize(has_more: nil, rows: nil, totals: nil)
              #   @param has_more [Boolean]
              #   @param rows [Array<Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Row>]
              #   @param totals [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Totals]

              class Row < Onlyfans::Internal::Type::BaseModel
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
                #   @return [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Row::ViewsCount, nil]
                optional :views_count,
                         -> { Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Row::ViewsCount },
                         api_name: :viewsCount

                # @!method initialize(country_code: nil, country_name: nil, rank: nil, views_count: nil)
                #   @param country_code [String]
                #   @param country_name [String]
                #   @param rank [Integer]
                #   @param views_count [Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Row::ViewsCount]

                # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries::Row#views_count
                class ViewsCount < Onlyfans::Internal::Type::BaseModel
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

              # @see Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2::Data::TopCountries#totals
              class Totals < Onlyfans::Internal::Type::BaseModel
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
        #   @return [Array(Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember0, Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember1, Onlyfans::Models::Statistics::ReachGetProfileVisitorsResponse::UnionMember2)]
      end
    end
  end
end
