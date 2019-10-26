function sshuttle-office() {
    args=()
    for host in prometheus.pfn.io grafana.pfn.io jenkins.preferred.jp harbor.pfn.io dex.k8s.pfn.io s3.console.aws.amazon.com ap-northeast-1.console.aws.amazon.com deepmux-dashboard.pfn.io kubernetes-dashboard.pfn.io; do
        for ip in $(dig +short $host | grep -E '^[0-9\.]+$' | xargs -I{} echo {}/32); do
            args+=($ip)
        done
    done
    # zsh/csh version
    echo $args
    sshuttle -D --pidfile /tmp/sshuttle-office.pid -v -r office.pfidev.jp 172.28.0.0/16 $args

    # bash version
    # echo "${args[@]}"
    # sshuttle -D --pidfile /tmp/sshuttle-office.pid -v -r office.pfidev.jp 172.28.0.0/16 "${args[@]}"
}

function sshuttle-stop() {
    kill $(cat /tmp/sshuttle-office.pid)
}