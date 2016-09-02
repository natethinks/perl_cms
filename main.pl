package Foo;

sub new {
  my $class = shift;
  my %hash = (
    foo => 1,
    bar => 2,
    );
  return bless \%hash, $class;
}
