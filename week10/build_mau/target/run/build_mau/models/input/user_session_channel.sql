
  create or replace   view dev.raw_data.user_session_channel
  
   as (
    with user_channel_data as (
    select
        user_id,
        channel,
        session_id
    from dev.raw_data.session_timestamp 
)

select * from user_channel_data
  );

