(elastic cloud compute)
- EC2 => flexible VM instance(s) 

(elastic beanstalk)
- ELB => structured for web application hosting;
         EC2, auto-scaling, load-balancing, database (rds)

(elastic container service)
- ECS => can be extended with aws fargate, includes scheduling.
         services, monotoring, etc...

(lighsail)
- => low price virtual private server for web applications and 
        websites, extendable with containers, object storage, managed
        database, load balancing, includes option to transfer to EC2
        instance, can be integrated with 90+ aws services via Amazon
        VPC peering, supports many operating systems and web stacks, 
        including common set-ups like WordPress, Drupal, Magneto, etc...

(amplify)
- => has built-in support for static site generators (e.g. gatsby, jekyll)
     and for SPA-frameworks (react, angular, vue), can be used to deplo
     SPA with serverless backend, application can be deployed from code
     repository,cinlcudes support for native and non-native mobile platform


(S3 + CloudFront)
- => it's possible to serve a static site (html, css, js) without other
    dependencies using S3 buckets and CloudFront, can easily include https,
    very cheap option
