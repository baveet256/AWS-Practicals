# AWS-Practicals
All the aws practices 
aws s3api list-buckets --query Buckets[].Name --output text         # commannd to list buckets and query just the names of it in text format output!!
aws s3api create-bucket --bucket examplebucketbaveet2 --region us-east-1  # command to create buckets by a name in a region!!!
aws s3api put-object --bucket examplebucketbaveet2 --key world.txt --content-type plain/txt --body world.txt -- ## putting an object from the cli, after updating and creating in cli

