# terraform-lambda-python
Lambda Python with Terraform

## For Cognito Token

```sh
aws cognito-idp admin-initiate-auth --user-pool-id <USER_POOL_ID> --client-id <CLIENT_ID> --auth-flow ADMIN_NO_SRP_AUTH --auth-parameters USERNAME=<user>,PASSWORD=<senha>
```

## References

```
https://spacelift.io/blog/terraform-api-gateway
```