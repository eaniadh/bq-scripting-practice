create or replace procedure practice.problem_01_conditional_load(
    IN dataset_name string, 
    IN table_name string,
    OUT result_msg string
)
BEGIN
    DECLARE full_table_path string;
    DECLARE table_schema string;
    DECLARE insert_statement string;

    DECLARE recordcount_result int64;

    SET full_table_path = CONCAT(dataset_name, '.', table_name);
    EXECUTE IMMEDIATE format(r""" 
            select count(1) as status from `%s.INFORMATION_SCHEMA.TABLES`
            where table_name='%s' and table_type='BASE TABLE';  
        """, dataset_name, table_name) INTO recordcount_result;

    IF recordcount_result > 0 THEN

        -- Insert into existing table
        EXECUTE IMMEDIATE FORMAT("""
            INSERT INTO `%s`
            (id, name, amount, created_at)
            VALUES
            (1, 'A', 100.0, CURRENT_TIMESTAMP()),
            (2, 'B', 200.0, CURRENT_TIMESTAMP())
        """, full_table_path);
        SET result_msg = 'Inserted into existing table';
    ELSE
        -- Create table
        EXECUTE IMMEDIATE format(r"""
            CREATE TABLE `%s` (
                id INT64,
                name STRING,
                amount FLOAT64,
                created_at TIMESTAMP
            );
        """, full_table_path);

        EXECUTE IMMEDIATE format(r"""
            INSERT INTO `%s` (id, name, amount, created_at) VALUES
            (1, 'A', 100.0, CURRENT_TIMESTAMP()),
            (2, 'B', 200.0, CURRENT_TIMESTAMP());
        """, full_table_path);

        SET result_msg = 'Table created and data inserted';

    END IF;


EXCEPTION WHEN ERROR THEN
    SELECT
        @@error.message,
        @@error.stack_trace,
        @@error.statement_text,
        @@error.formatted_stack_trace;
END;