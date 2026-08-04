{ inputs, ... }:
{
  imports = [
    inputs.helium.nixosModules.default
  ];

  programs.helium = {
    enable = true;
    policies = {
      "PasswordManagerEnabled" = false;
      "BrowserSignin" = 0;
      "SyncDisabled" = true;
      "RestoreOnStartup" = true;
      "ExtensionInstallForcelist" = [
        "fiecjgpoilkhmoieaboolkfmgbnhlhop" # clean internet
        "khncfooichmfjbepaaaebmommgaepoid" # uhook
        "omoinegiohhgbikclijaniebjpkeopip" # clickbait remover
        "hfjbmagddngcpeloejdejnfgbamkjaeg" # vimuim c
        "eimadpbcbfnmbkopoojfekhnkhdbieeh" # darkreader
        "ghmbeldphafepmbegfdlkpapadhbakde" # proton pass
      ];
      "MandatoryExtensionsForIncognitoNavigation" = [
        "fiecjgpoilkhmoieaboolkfmgbnhlhop"
        "khncfooichmfjbepaaaebmommgaepoid"
      ];
    };
  };
}
