
  create or replace   view dev.raw_data.session_timestamp
  
   as (
    with session_time as (
    select
        session_id,
        user_id,
        start_time,
        end_time
    from dev.raw_data.user_session_channel 
)

select * from session_time
  );

