FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IGFuZHJvaWQtYXBwLWFwYgpkZXNjcmlwdGlvbjogU2V0cyB1cCBh\
biBBbmRyb2lkIEFwcCByZXByZXNlbnRhdGlvbi4KYmluZGFibGU6IEZhbHNlCmFzeW5jOiBvcHRp\
b25hbAp0YWdzOiAKICAtIG1vYmlsZQptZXRhZGF0YToKICBkaXNwbGF5TmFtZTogQW5kcm9pZCBB\
cHAKICBjb25zb2xlLm9wZW5zaGlmdC5pby9pY29uQ2xhc3M6IGZhIGZhLWFuZHJvaWQKcGxhbnM6\
CiAgLSBuYW1lOiBkZWZhdWx0CiAgICBkZXNjcmlwdGlvbjogU2V0cyB1cCBhbiBBbmRyb2lkIEFw\
cCByZXByZXNlbnRhdGlvbi4KICAgIGZyZWU6IFRydWUKICAgIG1ldGFkYXRhOiB7fQogICAgcGFy\
YW1ldGVyczogCiAgICAtIG5hbWU6IGFwcE5hbWUKICAgICAgcmVxdWlyZWQ6IFRydWUKICAgICAg\
ZGVmYXVsdDogbXlhcHAKICAgICAgdHlwZTogc3RyaW5nCiAgICAgIHRpdGxlOiB5b3VyIG5ldyBh\
cHBzIG5hbWUK"

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
COPY mobile /usr/bin
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
