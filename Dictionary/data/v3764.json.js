window.repositoryObject = {"columns_custom_fields":[],"relations_custom_fields":[],"triggers_custom_fields":[],"object_id":"v3764","name":"person_join","subtype":"VIEW","is_user_defined":false,"description":"<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n                <html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n                    <head>\r\n                        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" /><title>\r\n                        </title>\r\n                        <style type=\"text/css\">\r\n                            .cs2654AE3A{text-align:left;text-indent:0pt;margin:0pt 0pt 0pt 0pt}\r\n                            .cs82292024{color:#000000;background-color:transparent;font-family:Segoe UI;font-size:10pt;font-weight:normal;font-style:normal;}\r\n                        </style>\r\n                    </head>\r\n                    <body>\r\n                        <p class=\"cs2654AE3A\"><span class=\"cs82292024\">VIEW</span></p></body>\r\n                </html>","script":"select `Campus_Eats_Fall2020`.`person`.`person_id` AS `person_id`,`Campus_Eats_Fall2020`.`person`.`person_name` AS `person_name`,`Campus_Eats_Fall2020`.`person`.`person_email` AS `person_email`,`Campus_Eats_Fall2020`.`student`.`student_id` AS `student_id`,`Campus_Eats_Fall2020`.`student`.`graduation_year` AS `graduation_year` from (`Campus_Eats_Fall2020`.`person` join `Campus_Eats_Fall2020`.`student` on((`Campus_Eats_Fall2020`.`student`.`person_id` = `Campus_Eats_Fall2020`.`person`.`person_id`))) where (`Campus_Eats_Fall2020`.`student`.`major` = 'Computer Science')","summary":[{"field":"Documentation","value":{"_type":"link","name":"Campus_Eats_Fall2020@AWS","id":"d10"}},{"field":"Schema","value":""},{"field":"Name","value":"person_join"},{"field":"Type","value":"View"}],"columns":[{"id":"column-34764","object_id":"column-34764","name":"person_id","name_without_path":"person_id","description":null,"is_pk":false,"is_identity":false,"data_type":"int","data_length":null,"is_nullable":false,"computed_formula":"","default_value":"0","path":null,"level":1,"item_type":"COLUMN","is_user_defined":false,"custom_fields":{},"linked_terms":[],"references":[]},{"id":"column-34765","object_id":"column-34765","name":"person_name","name_without_path":"person_name","description":null,"is_pk":false,"is_identity":false,"data_type":"varchar","data_length":null,"is_nullable":true,"computed_formula":"","default_value":null,"path":null,"level":1,"item_type":"COLUMN","is_user_defined":false,"custom_fields":{},"linked_terms":[],"references":[]},{"id":"column-34766","object_id":"column-34766","name":"person_email","name_without_path":"person_email","description":null,"is_pk":false,"is_identity":false,"data_type":"varchar","data_length":null,"is_nullable":true,"computed_formula":"","default_value":null,"path":null,"level":1,"item_type":"COLUMN","is_user_defined":false,"custom_fields":{},"linked_terms":[],"references":[]},{"id":"column-34767","object_id":"column-34767","name":"student_id","name_without_path":"student_id","description":null,"is_pk":false,"is_identity":false,"data_type":"int","data_length":null,"is_nullable":false,"computed_formula":"","default_value":"0","path":null,"level":1,"item_type":"COLUMN","is_user_defined":false,"custom_fields":{},"linked_terms":[],"references":[]},{"id":"column-34768","object_id":"column-34768","name":"graduation_year","name_without_path":"graduation_year","description":null,"is_pk":false,"is_identity":false,"data_type":"int","data_length":null,"is_nullable":true,"computed_formula":"","default_value":null,"path":null,"level":1,"item_type":"COLUMN","is_user_defined":false,"custom_fields":{},"linked_terms":[],"references":[]}],"relations":[],"triggers":[],"unique_keys":[],"dependencies":{"uses":[],"used_by":[]},"imported_at":"2021-12-07 02:45"};