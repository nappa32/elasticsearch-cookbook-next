## run the required recipes in order

include_recipe "apt"
include_recipe "ark"
include_recipe "elasticsearch"
include_recipe "elasticsearch::aws"
include_recipe "elasticsearch::proxy"
include_recipe "java"
include_recipe "layer-custom::allocation-awareness"
include_recipe "layer-custom::esmonit"
include_recipe "layer-custom::esplugins"
