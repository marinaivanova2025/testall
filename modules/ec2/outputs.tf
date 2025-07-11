output "instance_name" {
  value = aws_instance.this.tags["Name"]
}

# Optional: Output full instance if needed
output "instance_id" {
  value = aws_instance.this.id
}
