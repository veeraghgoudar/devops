# devops
CI-CD integration with Terraform, docker and concourse

- Pass the following values as yaml input or as a parameter
    - ((AWS_ACCESS_KEY_ID))
    - ((AWS_SECRET_ACCESS_KEY))
    - ((AWS_SESSION_TOKEN))
    - ((REGION)
    - ((vpc_tag_key))
    - ((vpc_tag_value))

- Setting up the concourse pipeline
    - cd concourse
    - fly -t $Target_Alias sp -p demo-pipeline -c pipeline.yml -v docker-hub-username=$username -v docker-hub-password=$password