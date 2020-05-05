## cluster設定
resource "aws_ecs_cluster" "ecs_cluster" {
  name = "${var.name}-cluster"
}
