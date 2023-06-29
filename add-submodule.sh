
# https://github.com/Kooboo/Kooboo"
# https://github.com/PiranhaCMS/piranha.core
# https://github.com/n2cms/n2cms
# https://github.com/i7MEDIA/mojoportal
# https://github.com/Orckestra/C1-CMS-Foundation
# https://github.com/VirtoCommerce/vc-platform
# https://github.com/smartstore/Smartstore     
# https://github.com/grandnode/grandnode2
# https://github.com/Orckestra/C1-CMS-Foundation
# https://github.com/umbraco/Umbraco-CMS

mkdir -p ~/ec/templates4 
cd ~/ec/templates4
gh repo fork OrchardCMS/OrchardCore   --org templates4 --fork-name Orchard --remote --remote-name templates4/Orchard --default-branch-only 
gh repo fork nopSolutions/nopCommerce --org templates4 --fork-name Nop     --remote --remote-name templates4/Nop     --default-branch-only 
gh repo fork PiranhaCMS/piranha.core  --org templates4 --fork-name Piranha --remote --remote-name templates4/Piranha --default-branch-only  
gh repo fork Kooboo/Kooboo            --org templates4 --fork-name Kooboo  --remote --remote-name templates4/Kooboo  --default-branch-only 
gh repo fork n2cms/n2cms              --org templates4 --fork-name N2      --remote --remote-name templates4/N2      --default-branch-only 
gh repo fork i7MEDIA/mojoportal       --org templates4 --fork-name SuperFlexiUI --remote --remote-name templates4/SuperFlexiUI --default-branch-only 
gh repo fork Orckestra/C1-CMS-Foundation --org templates4 --fork-name Composite --remote --remote-name templates4/Composite --default-branch-only  
gh repo fork VirtoCommerce/vc-platform --org templates4 --fork-name VirtoCommerce --remote --remote-name templates4/VirtoCommerce --default-branch-only 
gh repo fork smartstore/Smartstore    --org templates4 --fork-name Smartstore --remote --remote-name templates4/Smartstore --default-branch-only 
gh repo fork grandnode/grandnode2     --org templates4 --fork-name GrandNode --remote --remote-name templates4/GrandNode --default-branch-only  
gh repo fork Orckestra/C1-CMS-Foundation --org templates4 --fork-name Composite --remote --remote-name templates4/Composite --default-branch-only  
gh repo fork umbraco/Umbraco-CMS      --org templates4 --fork-name Umbraco --remote --remote-name templates4/Umbraco --default-branch-only 


git submodule add --name Umbraco -- https://github.com/templates4/Umbraco ./Umbraco
git submodule add --name Nop -- https://github.com/templates4/nop ./Nop
git submodule add --name Orchard -- https://github.com/templates4/Orchard ./Orchard
git submodule add --name Piranha -- https://github.com/templates4/piranha ./Piranha
git submodule add --name Kooboo -- https://github.com/templates4/Kooboo ./Kooboo
git submodule add --name N2 -- https://github.com/templates4/n2 ./N2
git submodule add --name SuperFlexiUI -- https://github.com/templates4/SuperFlexiUI ./SuperFlexiUI
git submodule add --name Composite -- https://github.com/templates4/Composite ./Composite
git submodule add --name VirtoCommerce https://github.com/templates4/VirtoCommerce ./VirtoCommerce
git submodule add --name SmartStore https://github.com/templates4/Smartstore  ./SmartStore    
git submodule add --name GrandNode https://github.com/templates4/grandnode ./GrandNode

