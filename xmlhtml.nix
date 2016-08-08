{ mkDerivation, base, blaze-builder, blaze-html, blaze-markup
, bytestring, containers, directory, HUnit, parsec, stdenv
, test-framework, test-framework-hunit, text, unordered-containers
}:
mkDerivation {
  pname = "xmlhtml";
  version = "0.2.3.5";
  src = ./.;
  libraryHaskellDepends = [
    base blaze-builder blaze-html blaze-markup bytestring containers
    parsec text unordered-containers
  ];
  testHaskellDepends = [
    base blaze-builder blaze-html blaze-markup bytestring directory
    HUnit test-framework test-framework-hunit text
  ];
  doCheck = false;
  homepage = "https://github.com/snapframework/xmlhtml";
  description = "XML parser and renderer with HTML 5 quirks mode";
  license = stdenv.lib.licenses.bsd3;
}
