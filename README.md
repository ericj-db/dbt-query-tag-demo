# Quickstart for Dbt Query Tags Demo

1. Run the following commands from the current directory

```
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
export DBT_PROFILES_DIR=${PWD}/profiles
```

2. Update `profiles/profiles.yml` with your own E2 Dogfood catalog, schema, and PAT

3. Run `dbt run --select query_tags_demo` to materialize the output table

4. Go to E2 Dogfood and query `system.query.history` to find statements executed by the dbt run. For example: `SELECT * FROM system.query.history WHERE client_application LIKE '%Dbt%' AND query_tags IS NOT NULL`
