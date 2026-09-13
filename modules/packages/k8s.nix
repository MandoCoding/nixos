{ pkgs, ... }:

{

environment.systemPackages = with pkgs; [
    # kubernetes
    k9s
    kind
    kubectl
    kubernetes-helm
    talosctl
    jq #used in k8s-quest
   ];
}
