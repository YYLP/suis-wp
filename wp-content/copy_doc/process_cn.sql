CREATE  PROCEDURE copy_site(IN `site_num` int)
BEGIN
	set @target_table = 'wp_commentmeta';
	set @new_table=concat('wp_',site_num,'_commentmeta');
	set @drop_sql=concat('drop table if exists ',@new_table);
	prepare drop_sql from @drop_sql;
	execute drop_sql;
	set @sql_create_table = concat('create table if not exists ',@new_table,' like ',@target_table);
	prepare sql_create_table from @sql_create_table;
	execute sql_create_table;
	set @new_sql=CONCAT('INSERT INTO ', @new_table ,' SELECT * FROM ',@target_table);
	prepare new_sql from @new_sql;
	execute new_sql;

	set @target_table = 'wp_comments';
	set @new_table=concat('wp_',site_num,'_comments');
	set @drop_sql=concat('drop table if exists ',@new_table);
	prepare drop_sql from @drop_sql;
	execute drop_sql;
	set @sql_create_table = concat('create table if not exists ',@new_table,' like ',@target_table);
	prepare sql_create_table from @sql_create_table;
	execute sql_create_table;
	set @new_sql=CONCAT('INSERT INTO ', @new_table ,' SELECT * FROM ',@target_table);
	prepare new_sql from @new_sql;
	execute new_sql;

	set @target_table = 'wp_links';
	set @new_table=concat('wp_',site_num,'_links');
	set @drop_sql=concat('drop table if exists ',@new_table);
	prepare drop_sql from @drop_sql;
	execute drop_sql;
	set @sql_create_table = concat('create table if not exists ',@new_table,' like ',@target_table);
	prepare sql_create_table from @sql_create_table;
	execute sql_create_table;
	set @new_sql=CONCAT('INSERT INTO ', @new_table ,' SELECT * FROM ',@target_table);
	prepare new_sql from @new_sql;
	execute new_sql;
	
	set @target_table = 'wp_options';
	set @new_table=concat('wp_',site_num,'_options');
	set @drop_sql=concat('drop table if exists ',@new_table);
	prepare drop_sql from @drop_sql;
	execute drop_sql;
	set @sql_create_table = concat('create table if not exists ',@new_table,' like ',@target_table);
	prepare sql_create_table from @sql_create_table;
	execute sql_create_table;
	set @new_sql=CONCAT('INSERT INTO ', @new_table ,' SELECT * FROM ',@target_table);
	prepare new_sql from @new_sql;
	execute new_sql;
	set @update_sql=CONCAT('UPDATE ',@new_table, " SET option_name='wp_",site_num,"_user_roles' WHERE option_name='wp_user_roles'");
	prepare update_sql from @update_sql;
	execute update_sql;

	set @target_table = 'wp_postmeta';
	set @new_table=concat('wp_',site_num,'_postmeta');
	set @drop_sql=concat('drop table if exists ',@new_table);
	prepare drop_sql from @drop_sql;
	execute drop_sql;
	set @sql_create_table = concat('create table if not exists ',@new_table,' like ',@target_table);
	prepare sql_create_table from @sql_create_table;
	execute sql_create_table;
	set @new_sql=CONCAT('INSERT INTO ', @new_table ,' SELECT * FROM ',@target_table);
	prepare new_sql from @new_sql;
	execute new_sql;
	
	set @target_table = 'wp_posts';
	set @new_table=concat('wp_',site_num,'_posts');
	set @drop_sql=concat('drop table if exists ',@new_table);
	prepare drop_sql from @drop_sql;
	execute drop_sql;
	set @sql_create_table = concat('create table if not exists ',@new_table,' like ',@target_table);
	prepare sql_create_table from @sql_create_table;
	execute sql_create_table;
	set @new_sql=CONCAT('INSERT INTO ', @new_table ,' SELECT * FROM ',@target_table);
	prepare new_sql from @new_sql;
	execute new_sql;

	set @target_table = 'wp_revslider_css';
	set @new_table=concat('wp_',site_num,'_revslider_css');
	set @drop_sql=concat('drop table if exists ',@new_table);
	prepare drop_sql from @drop_sql;
	execute drop_sql;
	set @sql_create_table = concat('create table if not exists ',@new_table,' like ',@target_table);
	prepare sql_create_table from @sql_create_table;
	execute sql_create_table;
	set @new_sql=CONCAT('INSERT INTO ', @new_table ,' SELECT * FROM ',@target_table);
	prepare new_sql from @new_sql;
	execute new_sql;

	set @target_table = 'wp_revslider_layer_animations';
	set @new_table=concat('wp_',site_num,'_revslider_layer_animations');
	set @drop_sql=concat('drop table if exists ',@new_table);
	prepare drop_sql from @drop_sql;
	execute drop_sql;
	set @sql_create_table = concat('create table if not exists ',@new_table,' like ',@target_table);
	prepare sql_create_table from @sql_create_table;
	execute sql_create_table;
	set @new_sql=CONCAT('INSERT INTO ', @new_table ,' SELECT * FROM ',@target_table);
	prepare new_sql from @new_sql;
	execute new_sql;

	set @target_table = 'wp_revslider_navigations';
	set @new_table=concat('wp_',site_num,'_revslider_navigations');
	set @drop_sql=concat('drop table if exists ',@new_table);
	prepare drop_sql from @drop_sql;
	execute drop_sql;
	set @sql_create_table = concat('create table if not exists ',@new_table,' like ',@target_table);
	prepare sql_create_table from @sql_create_table;
	execute sql_create_table;
	set @new_sql=CONCAT('INSERT INTO ', @new_table ,' SELECT * FROM ',@target_table);
	prepare new_sql from @new_sql;
	execute new_sql;

	set @target_table = 'wp_revslider_sliders';
	set @new_table=concat('wp_',site_num,'_revslider_sliders');
	set @drop_sql=concat('drop table if exists ',@new_table);
	prepare drop_sql from @drop_sql;
	execute drop_sql;
	set @sql_create_table = concat('create table if not exists ',@new_table,' like ',@target_table);
	prepare sql_create_table from @sql_create_table;
	execute sql_create_table;
	set @new_sql=CONCAT('INSERT INTO ', @new_table ,' SELECT * FROM ',@target_table);
	prepare new_sql from @new_sql;
	execute new_sql;

	set @target_table = 'wp_revslider_slides';
	set @new_table=concat('wp_',site_num,'_revslider_slides');
	set @drop_sql=concat('drop table if exists ',@new_table);
	prepare drop_sql from @drop_sql;
	execute drop_sql;
	set @sql_create_table = concat('create table if not exists ',@new_table,' like ',@target_table);
	prepare sql_create_table from @sql_create_table;
	execute sql_create_table;
	set @new_sql=CONCAT('INSERT INTO ', @new_table ,' SELECT * FROM ',@target_table);
	prepare new_sql from @new_sql;
	execute new_sql;

	set @target_table = 'wp_revslider_static_slides';
	set @new_table=concat('wp_',site_num,'_revslider_static_slides');
	set @drop_sql=concat('drop table if exists ',@new_table);
	prepare drop_sql from @drop_sql;
	execute drop_sql;
	set @sql_create_table = concat('create table if not exists ',@new_table,' like ',@target_table);
	prepare sql_create_table from @sql_create_table;
	execute sql_create_table;
	set @new_sql=CONCAT('INSERT INTO ', @new_table ,' SELECT * FROM ',@target_table);
	prepare new_sql from @new_sql;
	execute new_sql;

	set @target_table = 'wp_term_relationships';
	set @new_table=concat('wp_',site_num,'_term_relationships');
	set @drop_sql=concat('drop table if exists ',@new_table);
	prepare drop_sql from @drop_sql;
	execute drop_sql;
	set @sql_create_table = concat('create table if not exists ',@new_table,' like ',@target_table);
	prepare sql_create_table from @sql_create_table;
	execute sql_create_table;
	set @new_sql=CONCAT('INSERT INTO ', @new_table ,' SELECT * FROM ',@target_table);
	prepare new_sql from @new_sql;
	execute new_sql;

	set @target_table = 'wp_term_taxonomy';
	set @new_table=concat('wp_',site_num,'_term_taxonomy');
	set @drop_sql=concat('drop table if exists ',@new_table);
	prepare drop_sql from @drop_sql;
	execute drop_sql;
	set @sql_create_table = concat('create table if not exists ',@new_table,' like ',@target_table);
	prepare sql_create_table from @sql_create_table;
	execute sql_create_table;
	set @new_sql=CONCAT('INSERT INTO ', @new_table ,' SELECT * FROM ',@target_table);
	prepare new_sql from @new_sql;
	execute new_sql;

	set @target_table = 'wp_termmeta';
	set @new_table=concat('wp_',site_num,'_termmeta');
	set @drop_sql=concat('drop table if exists ',@new_table);
	prepare drop_sql from @drop_sql;
	execute drop_sql;
	set @sql_create_table = concat('create table if not exists ',@new_table,' like ',@target_table);
	prepare sql_create_table from @sql_create_table;
	execute sql_create_table;
	set @new_sql=CONCAT('INSERT INTO ', @new_table ,' SELECT * FROM ',@target_table);
	prepare new_sql from @new_sql;
	execute new_sql;

	set @target_table = 'wp_terms';
	set @new_table=concat('wp_',site_num,'_terms');
	set @drop_sql=concat('drop table if exists ',@new_table);
	prepare drop_sql from @drop_sql;
	execute drop_sql;
	set @sql_create_table = concat('create table if not exists ',@new_table,' like ',@target_table);
	prepare sql_create_table from @sql_create_table;
	execute sql_create_table;
	set @new_sql=CONCAT('INSERT INTO ', @new_table ,' SELECT * FROM ',@target_table);
	prepare new_sql from @new_sql;
	execute new_sql;
END;
