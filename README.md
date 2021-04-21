# devops
CI-CD integration with Terraform, docker and concourse

- Setting up the concourse pipeline
cd concourse
fly -t $Target_Alias sp -p demo-pipeline -c pipeline.yml -v docker-hub-username=$username -v docker-hub-password=$password

