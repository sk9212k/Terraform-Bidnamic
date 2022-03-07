data "template_file" "task_definition_template" {
  template = file("task_definition.json.tpl")
  vars = {
    REPOSITORY_URL = var.flask_app_image
    FLASK_APP = var.flask_app
    FLASK_ENV = var.flask_env
    FLASK_APP_HOME = var.flask_app_home
    FLASK_APP_PORT = var.flask_app_port
    APP_SECRET_KEY = replace(random_string.flask-secret-key.result,"\"","")

  }
}
