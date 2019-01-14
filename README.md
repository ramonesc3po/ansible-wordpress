Role WordPress
=========

This role aims to perform a wordpress installation with best security practices and will be applied with Packer

Requirements
------------

- Ansible 1.4 or higher
- Curl

Role Variables
--------------

- wp_install_dir: '/var/sites/wordpress_site'
- wp_version: '5.0'
- wp_db_host: 'localhost'
- wp_db_name: 'name_db_here'
- wp_db_user: 'user_db_here'
- wp_db_password: 'password_db_here'
- wp_db_charset: 'utf8'
- wp_db_collate: ''
- wp_table_prefix: 'wp_'
- wp_debug: false
- wp_mysql_enable: true
- wp_mysql_db_create: true
- wp_mysql_site_restore_saved_db: false

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

```yaml
- hosts: all
  vars:
    wp_version: 4.0
    wp_install_dir: '/var/sites/awesome_wordpress_site'
    wp_db_name: 'name_db_here'
    wp_db_user: 'user_db_here'
    wp_db_password: 'password_db_here'
    wp_db_host: 'localhost'
  roles:
  - role-wordpress
```

License
-------

BSD

Author Information
------------------
Ramon Salado
