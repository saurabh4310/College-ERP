window.repositoryObject = {"columns_custom_fields":[],"relations_custom_fields":[],"unique_keys_custom_fields":[],"triggers_custom_fields":[],"object_id":"t3754","name":"location","subtype":"TABLE","is_user_defined":false,"description":null,"summary":[{"field":"Documentation","value":{"_type":"link","name":"Campus_Eats_Fall2020@AWS","id":"d10"}},{"field":"Schema","value":""},{"field":"Name","value":"location"},{"field":"Type","value":"Table"}],"columns":[{"id":"column-34718","object_id":"column-34718","name":"location_id","name_without_path":"location_id","description":null,"is_pk":false,"is_identity":true,"data_type":"int","data_length":null,"is_nullable":false,"computed_formula":"","default_value":null,"path":null,"level":1,"item_type":"COLUMN","is_user_defined":false,"custom_fields":{},"linked_terms":[],"references":[]},{"id":"column-34719","object_id":"column-34719","name":"location_name","name_without_path":"location_name","description":null,"is_pk":false,"is_identity":false,"data_type":"varchar","data_length":null,"is_nullable":true,"computed_formula":"","default_value":null,"path":null,"level":1,"item_type":"COLUMN","is_user_defined":false,"custom_fields":{},"linked_terms":[],"references":[]},{"id":"column-34720","object_id":"column-34720","name":"location_address","name_without_path":"location_address","description":null,"is_pk":false,"is_identity":false,"data_type":"varchar","data_length":null,"is_nullable":true,"computed_formula":"","default_value":null,"path":null,"level":1,"item_type":"COLUMN","is_user_defined":false,"custom_fields":{},"linked_terms":[],"references":[]},{"id":"column-34721","object_id":"column-34721","name":"latitude","name_without_path":"latitude","description":null,"is_pk":false,"is_identity":false,"data_type":"varchar","data_length":null,"is_nullable":true,"computed_formula":"","default_value":null,"path":null,"level":1,"item_type":"COLUMN","is_user_defined":false,"custom_fields":{},"linked_terms":[],"references":[]},{"id":"column-34722","object_id":"column-34722","name":"longitude","name_without_path":"longitude","description":null,"is_pk":false,"is_identity":false,"data_type":"varchar","data_length":null,"is_nullable":true,"computed_formula":"","default_value":null,"path":null,"level":1,"item_type":"COLUMN","is_user_defined":false,"custom_fields":{},"linked_terms":[],"references":[]},{"id":"column-34723","object_id":"column-34723","name":"drop_off_point","name_without_path":"drop_off_point","description":null,"is_pk":false,"is_identity":false,"data_type":"varchar","data_length":null,"is_nullable":true,"computed_formula":"","default_value":null,"path":null,"level":1,"item_type":"COLUMN","is_user_defined":false,"custom_fields":{},"linked_terms":[],"references":[]}],"relations":[{"name":"fk_O_location_id","title":null,"description":null,"is_user_defined":false,"foreign_table":"order","foreign_table_show_schema":"order","foreign_table_verbose":"order","foreign_table_verbose_show_schema":"order","foreign_table_object_id":"t3755","primary_table":"location","primary_table_show_schema":"location","primary_table_verbose":"location","primary_table_verbose_show_schema":"location","primary_table_object_id":"t3754","pk_cardinality":"1x","fk_cardinality":"mx","constraints":[{"primary_column_path":null,"primary_column":"location_id","foreign_column_path":null,"foreign_column":"location_id"}],"custom_fields":{}}],"unique_keys":[{"name":"PRIMARY","description":null,"is_pk":true,"is_user_defined":false,"columns":[{"path":null,"name_without_path":"location_id","name":"location_id"}],"custom_fields":{}},{"name":"location_index_desc","description":null,"is_pk":false,"is_user_defined":false,"columns":[{"path":null,"name_without_path":"location_id","name":"location_id"}],"custom_fields":{}}],"triggers":[],"dependencies":{"uses":[],"used_by":[{"object_name":"location","object_name_show_schema":"location","object_type":"TABLE","object_id":"t3754","type":"NORMAL","object_user_defined":false,"user_defined":false,"children":[{"object_name":"order","object_name_show_schema":"order","object_type":"TABLE","object_id":"t3755","type":"RELATION","pk_cardinality":"1x","fk_cardinality":"mx","object_user_defined":false,"user_defined":false,"children":[]}]}]},"imported_at":"2021-12-07 02:45"};