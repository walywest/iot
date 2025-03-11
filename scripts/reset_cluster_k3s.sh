#TODO: reboot probably needed after this so maybe could be automated with ansible
 KUBELET_PATH=$(mount | grep kubelet | cut -d' ' -f3);
 ${KUBELET_PATH:+umount $KUBELET_PATH}
 rm -rf /etc/rancher/{k3s,node};
 rm -rf /var/lib/{rancher/k3s,kubelet,longhorn,etcd,cni}
