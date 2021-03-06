# Ruby on Rails provisioner for CentOS 6.7

# yum
yum install -y epel-release
yum update -y
yum install -y gcc openssl-devel libyaml-devel libffi-devel readline-devel zlib-devel gdbm-devel ncurses-devel
yum install -y git
yum install -y sqlite-devel
yum install -y nodejs

# rbenv + ruby-build
git clone https://github.com/rbenv/rbenv.git /opt/.rbenv
git clone https://github.com/rbenv/ruby-build.git /opt/.rbenv/plugins/ruby-build
echo 'export RBENV_ROOT="/opt/.rbenv"' >> /etc/profile.d/rbenv.sh
echo 'export PATH="/opt/.rbenv/bin:$PATH"' >> /etc/profile.d/rbenv.sh
echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh
source /etc/profile.d/rbenv.sh

# ruby
rbenv install 2.3.0
rbenv global 2.3.0

# rails
gem update --system --no-document
gem update --no-document
gem install bundler rails --no-document

