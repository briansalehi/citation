create temp table if not exists temp_blocks (row_number serial, t_content text, t_type flashback.block_type, t_language varchar(10));
delete from temp_blocks;

create or replace procedure flashback.add_block(content text, type flashback.block_type, language varchar(10))
language plpgsql
as $$
begin
    insert into temp_blocks (t_content, t_type, t_language) values (content, type, language);
end;
$$;

create temp table temp_sections (t_headline varchar(100), t_reference varchar(2000));
delete from temp_sections;


insert into temp_sections values ('', '');
call flashback.create_resource(, '', '', '');
call flashback.create_resource_with_sequenced_sections(0, '', '', 0, 0, '');


call flashback.add_block('', 'text', 'txt');
call flashback.add_block('', 'code', 'sql');
call flashback.add_block('', 'text', 'txt');
call flashback.create_note_with_name('Subject Name', 'Section Name', '');