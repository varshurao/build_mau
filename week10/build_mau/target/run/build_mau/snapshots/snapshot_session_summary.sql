
      
  
    

        create or replace transient table dev.snapshots.snapshot_session_summary
         as
        (
    

    select *,
        md5(coalesce(cast(session_id as varchar ), '')
         || '|' || coalesce(cast(end_time as varchar ), '')
        ) as dbt_scd_id,
        end_time as dbt_updated_at,
        end_time as dbt_valid_from,
        
  
  coalesce(nullif(end_time, end_time), null)
  as dbt_valid_to

    from (
        



select * from dev.raw_data.session_summary


    ) sbq



        );
      
  
  