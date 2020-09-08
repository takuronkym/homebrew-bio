class DshBio < Formula
  desc "Tools for BED, FASTA, FASTQ, GFA1/2, GFF3, SAM, and VCF files"
  homepage "https://github.com/heuermh/dishevelled-bio"
<<<<<<< HEAD
  url "https://search.maven.org/remotecontent?filepath=org/dishevelled/dsh-bio-tools/1.3.2/dsh-bio-tools-1.3.2-bin.tar.gz"
  sha256 "30f3cd93ad9247705ba4452faa79e9081ce53b721c33a4ac19f01f5a347773ce"
=======
  url "https://search.maven.org/remotecontent?filepath=org/dishevelled/dsh-bio-tools/1.3.4/dsh-bio-tools-1.3.4-bin.tar.gz"
  sha256 "afe12e1efb15a7b391628db8622817da3a39ac60291905707c7d97b3e707962d"
  license "LGPL-3.0"
>>>>>>> upstream/develop

  bottle do
    root_url "https://linuxbrew.bintray.com/bottles-bio"
    cellar :any_skip_relocation
<<<<<<< HEAD
    sha256 "42cffa5de3ad131f6c29a69843aad16dc939bb6790b3b7bfab0ee7ef88dda6a9" => :catalina
    sha256 "e8809d4f7a4cbe09516612c34e21ba8bd94e0d44c448031661e48816f6868cf4" => :x86_64_linux
=======
    sha256 "ecc8c494c76018044ed4744350e3008e2c3f4282b1111db48055a969c4b7a816" => :catalina
    sha256 "abe84532e871dee21be522bdd11b692f7ae162f8d7a7ee95770b8bc9701b1448" => :x86_64_linux
>>>>>>> upstream/develop
  end

  depends_on java: "1.8+"

  def install
    rm Dir["bin/*.bat"] # Remove all windows files
    libexec.install Dir["*"]
    bin.write_exec_script Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "usage", shell_output("#{bin}/dsh-bio --help")
  end
end
