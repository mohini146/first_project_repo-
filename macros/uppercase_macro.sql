{% macro make_upper(col_name) %}
    upper({{ col_name }})
{% endmacro %}
