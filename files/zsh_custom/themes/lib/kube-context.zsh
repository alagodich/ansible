tw_kube_context() {
  # Get kubernetes context
  local tw_k8s_context=""

  tw_k8s_context="$(kubectl config current-context 2> /dev/null)"

  if [ "$tw_k8s_context" != "" ]; then
    echo "$tw_k8s_context"
  else
    echo "no-context"
  fi
}
