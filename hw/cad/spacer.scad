tube_diameter = 5.5;
tube_spacing = 7;
spacer_diameter1 = 3*tube_spacing;
spacer_diameter2 = 2*tube_spacing;

$fn = 80;

difference(){
    union(){
      translate([0, 0, -tube_spacing/2])
        cylinder(h = tube_spacing/2, d1 = spacer_diameter1, d2 = spacer_diameter2, center = false);
      translate([0, 0, -tube_spacing])
        cylinder(h = tube_spacing/2, d2 = spacer_diameter1, d1 = spacer_diameter2, center = false);
      translate([0, 0, 0])
        cylinder(h = tube_spacing/2, d2 = spacer_diameter1, d1 = spacer_diameter2, center = false);
      translate([0, 0, tube_spacing/2])
        cylinder(h = tube_spacing/2, d1 = spacer_diameter1, d2 = spacer_diameter2, center = false);
    }
    translate([0, 0, tube_spacing/2]) {
        rotate([0,90,0])
            cylinder( h=spacer_diameter1, d=tube_diameter, center=true);
    }
    translate([0, 0, -tube_spacing/2]) {
        rotate([90,0,0])
            cylinder( h=spacer_diameter1, d=tube_diameter, center=true);
    }

}
