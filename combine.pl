# combine.pl -- Blair & Robertson's Philippine Islands.

use strict;
use File::Temp qw(mktemp);

my $saxon = "java -jar C:\\bin\\saxon9he\\saxon9he.jar ";
my $toolsdir = "D:\\Users\\Jeroen\\Documents\\eLibrary\\Tools\\tei2html\\tools";    # location of tools
my $xsldir   = "D:\\Users\\Jeroen\\Documents\\eLibrary\\Tools\\tei2html";           # location of xsl stylesheets

processVolume("Volumes 01-09\\Volume 01", "PhilippineIslands01-1.1.tei");
processVolume("Volumes 01-09\\Volume 02", "PhilippineIslands02-1.0.tei");
processVolume("Volumes 01-09\\Volume 03", "PhilippineIslands03-1.0.tei");
processVolume("Volumes 01-09\\Volume 04", "PhilippineIslands04-1.0.tei");
processVolume("Volumes 01-09\\Volume 05", "PhilippineIslands05-1.0.tei");
processVolume("Volumes 01-09\\Volume 06", "PhilippineIslands06-1.0.tei");
processVolume("Volumes 01-09\\Volume 07", "PhilippineIslands07-1.0.tei");
processVolume("Volumes 01-09\\Volume 08", "PhilippineIslands08-1.0.tei");
processVolume("Volumes 01-09\\Volume 09", "PhilippineIslands09-1.0.tei");

processVolume("Volumes 10-19\\Volume 10", "PhilippineIslands10-1.0.tei");
processVolume("Volumes 10-19\\Volume 11", "PhilippineIslands11-1.0.tei");
processVolume("Volumes 10-19\\Volume 12", "PhilippineIslands12-1.0.tei");
processVolume("Volumes 10-19\\Volume 13", "PhilippineIslands13-1.0.tei");
processVolume("Volumes 10-19\\Volume 14", "PhilippineIslands14-1.0.tei");

processVolume("Volumes 10-19\\Volume 16", "PhilippineIslands16-1.0.tei");
processVolume("Volumes 10-19\\Volume 17", "PhilippineIslands17-1.0.tei");
processVolume("Volumes 10-19\\Volume 18", "PhilippineIslands18-1.0.tei");
processVolume("Volumes 10-19\\Volume 19", "PhilippineIslands19-1.0.tei");

processVolume("Volumes 20-29\\Volume 20", "PhilippineIslands20-1.0.tei");
processVolume("Volumes 20-29\\Volume 21", "PhilippineIslands21-1.0.tei");
processVolume("Volumes 20-29\\Volume 22", "PhilippineIslands22-1.0.tei");
processVolume("Volumes 20-29\\Volume 23", "PhilippineIslands23-1.0.tei");
processVolume("Volumes 20-29\\Volume 24", "PhilippineIslands24-1.0.tei");
processVolume("Volumes 20-29\\Volume 25", "PhilippineIslands25-1.0.tei");
processVolume("Volumes 20-29\\Volume 26", "PhilippineIslands26-1.0.tei");
processVolume("Volumes 20-29\\Volume 27", "PhilippineIslands27-1.0.tei");
processVolume("Volumes 20-29\\Volume 28", "PhilippineIslands28-1.0.tei");
processVolume("Volumes 20-29\\Volume 29", "PhilippineIslands29-1.0.tei");

processVolume("Volumes 30-39\\Volume 30", "PhilippineIslands30-1.0.tei");
processVolume("Volumes 30-39\\Volume 31", "PhilippineIslands31-1.0.tei");
processVolume("Volumes 30-39\\Volume 32", "PhilippineIslands32-1.0.tei");
processVolume("Volumes 30-39\\Volume 33", "PhilippineIslands33-1.0.tei");
processVolume("Volumes 30-39\\Volume 34", "PhilippineIslands34-1.0.tei");
processVolume("Volumes 30-39\\Volume 35", "PhilippineIslands35-1.0.tei");
processVolume("Volumes 30-39\\Volume 36", "PhilippineIslands36-1.0.tei");
processVolume("Volumes 30-39\\Volume 37", "PhilippineIslands37-1.0.tei");
processVolume("Volumes 30-39\\Volume 38", "PhilippineIslands38-1.0.tei");
processVolume("Volumes 30-39\\Volume 39", "PhilippineIslands39-1.0.tei");

processVolume("Volumes 40-49\\Volume 40", "PhilippineIslands40-1.0.tei");
processVolume("Volumes 40-49\\Volume 41", "PhilippineIslands41-1.0.tei");
processVolume("Volumes 40-49\\Volume 42", "PhilippineIslands42-1.0.tei");
processVolume("Volumes 40-49\\Volume 43", "PhilippineIslands43-1.0.tei");
processVolume("Volumes 40-49\\Volume 44", "PhilippineIslands44-1.0.tei");
processVolume("Volumes 40-49\\Volume 45", "PhilippineIslands45-1.0.tei");
processVolume("Volumes 40-49\\Volume 46", "PhilippineIslands46-1.0.tei");
processVolume("Volumes 40-49\\Volume 47", "PhilippineIslands47-1.0.tei");
processVolume("Volumes 40-49\\Volume 48", "PhilippineIslands48-1.0.tei");
processVolume("Volumes 40-49\\Volume 49", "PhilippineIslands49-1.0.tei");

processVolume("Volumes 50-55\\Volume 50", "PhilippineIslands50-1.0.tei");
processVolume("Volumes 50-55\\Volume 51", "PhilippineIslands51-1.0.tei");
processVolume("Volumes 50-55\\Volume 52", "PhilippineIslands52-1.0.tei");

makeCompleteVersion();


sub makeCompleteVersion() {
    print "Create complete XML version...\n";

    system ("$saxon PhilippineIslands-complete.xsl PhilippineIslands-complete.xsl > PhilippineIslands-complete.xml");

    my $tmpFile = mktemp('tmp-XXXXX');

    print "Create complete HTML version...\n";
    system ("$saxon PhilippineIslands-complete.xml $xsldir\\tei2html.xsl > $tmpFile");
    system ("perl $toolsdir/wipeids.pl $tmpFile > PhilippineIslands-complete.html");
    system ("tidy -m -wrap 72 -f PhilippineIslands-complete.err PhilippineIslands-complete.html");

    unlink($tmpFile);

    system ("perl -S ucwords.pl PhilippineIslands-complete.xml > PhilippineIslands-complete-words.html");
}

sub processVolume($$) {
    my $dir = shift;
    my $file = shift;
    chdir $dir;
    system ("perl -S tei2html.pl -x " . $file);
    chdir "..\\..";
}
