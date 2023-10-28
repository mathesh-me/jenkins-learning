## Role-based Authorization Strategy

### About this plugin 
The Role Strategy plugin is meant to be used from Jenkins to add a new role-based mechanism to manage users' permissions. Supported features

- Creating global roles, such as admin, job creator, anonymous, etc., allowing to set Overall, Agent, Job, Run, View and SCM permissions on a global basis.
- Creating item roles, allowing to set item specific permissions (e.g Job, Run or Credentials) on Jobs, Pipelines and Folders.
- Creating agent roles, allowing to set agent specific permissions.
- Assigning these roles to users and user groups
- Extending roles and permissions matching via Macro extensions