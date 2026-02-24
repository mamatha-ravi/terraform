resource "aws_route53_record" "www" {
    for_each= aws_instance.example
  zone_id = "Z03338611JYIFQWLKNVHI"
   # interpolation
   name    = "${each.key}.${var.domain_name}"
#  name    = "${format("mongodb-%02d" , count.index+1)}.${var.domain_name}"

  type    = "A"
  ttl     = 1
#   records = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip]
   records = [lookup(aws_instance.example, "frontend").public_ip]
}