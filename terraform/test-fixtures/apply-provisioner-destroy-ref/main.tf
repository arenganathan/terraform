resource "aws_instance" "bar" {
    value = "hello"
}

resource "aws_instance" "foo" {
    foo = "bar"

    provisioner "shell" {
        command  = "${aws_instance.bar.value}"
        when = "destroy"
    }
}
