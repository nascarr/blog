#Some international users of AWS may need to override the default URL structure 
#and place the bucket’s name “domain-style” in the URL (e.g. you_bucket_name.s3.amazonaws.com).
# These options can be placed in the paperclip_defaults configuration hash shown above,
# or into an initializer.
#Visit https://devcenter.heroku.com/articles/paperclip-s3 for more details.

#Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
#Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'