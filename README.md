Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices

 - The DB target bigquery in order to see more clearly my schema changes. 
 - My logic was to creat all layers in DWH and to merge only the changes from STG to DWH after testing all relvant issues.
 - I made changes in the code in order to avoid duplicates.
 - I think in seed_opportunity in some cases when the start date began not in the first day oh month you prefer to calculate only       from the first day the month after, I think other way but I did like you shoe.
 - My assumption was that currency is one and I did insert any convertion machnisim.
 - in cases when I got null I enterd default values.
 - RI need to be inserted but didnt make it.
 - I had an issue with running tests because of some config in dbt_project.yml I didnt have time to check it more deeply.
 -  Need to be added time stamps for all tables, in order to see new values (create_date) and updated (update_date), With the ablity to run incremrntal models. 
