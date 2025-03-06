$fn = 70;

module rounded(r)
{
    offset(r = r) offset(r = -r) children(0);
}

// Base
linear_extrude(height = 2) rounded(2) square(size = [ 10, 8 ], center = true);

// Stick
linear_extrude(height = 12) rounded(0.3) square(size = [ 2, 4.8 ], center = true);
