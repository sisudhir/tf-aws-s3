resource "aws_s3_bucket" "my_bucket" {
    bucket = "${var.bucket_name}" 
    acl = "${var.acl_value}"   
}

resource "aws_s3_bucket_object" "folder1" {
    depends_on = [aws_s3_bucket.my_bucket]
    bucket = "${var.bucket_name}"
    acl    = "${var.acl_value}"
    key    = "eck-ss/"
    source = "/dev/null"
}
