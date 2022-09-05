tube_diameter = 5.4;
tube_spacing = 6;
spacer_diameter1 = 3*tube_spacing;
spacer_diameter2 = 2*tube_spacing;

difference(){
    union(){
      cylinder($fn = 30, $fa = 12, $fs = 2, h = spacer_diameter1/2, d1 = spacer_diameter1, d2 = spacer_diameter2, center = false);
      translate([0, 0, spacer_diameter1/2]) {
        cylinder($fn = 30, $fa = 12, $fs = 2, h = spacer_diameter1/2, d2 = spacer_diameter1, d1 = spacer_diameter2, center = false);
      }
    }
    translate([0, 0, tube_diameter/2]) {
    rotate([0,90,0]) cylinder( h=spacer_diameter1, d=tube_diameter, center=true);
    }
    translate([0, 0, tube_diameter+tube_diameter/2 + tube_spacing]) {
    rotate([90,0,0]) cylinder( h=spacer_diameter1, d=tube_diameter, center=true);
    }

}
