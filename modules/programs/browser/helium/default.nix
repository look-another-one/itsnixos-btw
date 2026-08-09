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
      "BrowserGuestModeEnabled"= false;
      "BrowserAddPersonEnabled"= false;
      "RestoreOnStartup" = true;
      "ExtensionInstallForcelist" = [
        "fiecjgpoilkhmoieaboolkfmgbnhlhop" # clean internet
        "khncfooichmfjbepaaaebmommgaepoid" # uhook
        "enboaomnljigfhfjfoalacienlhjlfil" # untrap for youtube
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
