data aws_route53_zone route53-zone {
  name         = "knowledge-aws.work."
  private_zone = false
}

resource aws_acm_certificate cert {
  domain_name       = "${var.name}-www.knowledge-aws.work."
  validation_method = "DNS"
}

resource aws_route53_record cert_validation {
  zone_id = data.aws_route53_zone.route53-zone.zone_id
  name    = aws_acm_certificate.cert.domain_validation_options[0].resource_record_name
  type    = aws_acm_certificate.cert.domain_validation_options[0].resource_record_type
  records = [aws_acm_certificate.cert.domain_validation_options[0].resource_record_value]
  ttl     = 60
}

resource aws_acm_certificate_validation cert {
  certificate_arn = aws_acm_certificate.cert.arn
  validation_record_fqdns = [aws_route53_record.cert_validation.fqdn]
}

resource aws_lb_listener listener {
	//他パラメーター省略
  certificate_arn = aws_acm_certificate.cert.arn
}
