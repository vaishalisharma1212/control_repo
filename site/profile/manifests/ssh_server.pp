class profile::ssh_server {
  package {'openssh-server':
            ensure => present,
  }
  service { 'sshd':
            ensure => 'running',
            enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
            ensure => present,
            user   => 'root',
            type.  => 'ssh-rsa',
            key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABgQDKcXNfoH/dSwDZQeBesUtpbNiYj2x5XxNdJqTIeJvxv28QpRl1XyNgbOGq0JxzYQ1Ej/AEzN/0iZI+kTH5CEFyVNNBvn95imzjxDYEDM6iR/VJR/RRkMHPURKZHCeU8w0d1sFPcFeO7zi6GqKOOZq7iFAujQlJJxpKfAnDc0HY1nkbvdK0UPinYuEReVo/pkrmCzldcuhjJvHKNSEejCzHahfvhcAch0dXb8xDKILlXGz1SNGkTe621cbnHiEmg8poCc6tVkG5p/N3HfT9e0sBmAylHCAOu16s6ft55WLcTrGGvMX5sM7T6AhNVVJ8iAFbXD/p7d0zdae4grlBlgSVsQwZrQrUuNOS8ForIwE/74oR3Ep2N2yZm3fp1DHtDkH2ftf7PShFGEpPaAj23wA0PH0WDqCiYrVJsS60/vEgtTvk1nf7U2suKCW4GC8Ihf7Cp0pP2+NO15eEFyw3pBv4Sv+eWwAYG2Lo2D9YUaY37a3zJ0FrYiBo1en6bGECAes',
  }
}
