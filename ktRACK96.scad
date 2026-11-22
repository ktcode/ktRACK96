//
// ktRACK96
//
//

gap1 = 0.001;
gap2 = 0.003;
th = 2;




base();


module base()
{
difference()
{

    union()
    {
        translate([0, 0, (17+th*2)/2]) cube([40+th*2, 17+th*2, 90+th-(17+th*2)/2]);
        translate([0, -(10+7), (90+th)-(5+5)]) cube([40+th*2, 10+7, 5+5]);
        translate([0, (17+th*2)/2, (17+th*2)/2]) rotate([0, 90, 0]) cylinder(h=40+th*2, r=(17+th*2)/2, $fn=100);
    }
    translate([th, th, (17+th*2)/2]) cube([40, 17, 90+th-(17+th*2)/2]);
    translate([0, -(5+7), (90+th)-5-5]) cube([40+th*2, 5+7, 5]);
    translate([5, -(10+7), (90+th)-(5+5)]) cube([40+th*2-(5*2), 10+7, 5+5]);
    translate([th, (17+th*2)/2, (17)/2+th]) rotate([0, 90, 0]) cylinder(h=40, r=(17)/2, $fn=100);
}
}




module base2()
{
difference()
{

    union()
    {
        translate([-(16.8+3)/2+1, -6, 10]) rotate([180, 0, 180-(55+8.4)]) cube([17.8, 4, 10]);
        translate([-13.1-1.5, 2+9.2, 0]) cylinder(h=10, r=(3+2)/2, $fn=100);
        translate([-(16.8+3)/2, 0, 10]) rotate([180, 0, 180-55]) cube([11-1, 5, 10]);
        translate([-(16.8+3)/2, 0, 0]) cube([16.8+3, 5, 10]);
        translate([ (16.8+3)/2, 0, 0]) rotate([0, 0, 55]) cube([11-1, 5, 10]);
        translate([13.1+1.5, 2+9.2, 0]) cylinder(h=10, r=(3+2.2)/2, $fn=100);
        translate([ (16.8+3)/2-1, -6, 0]) rotate([0, 0, 55+8.4]) cube([17.8, 4, 10]);

        translate([-18/2, -10/2, 10/2]) rotate([0, 90, 0]) cylinder(h=18, r=10/2, $fn=100);
        translate([-18/2, -5, 0]) cube([18, 5, 10]);
        translate([-18/2, -10, 0]) cube([18, 10, 5]);

    }
    translate([0, 0, 0]) cover();
    
    #translate([-(18+15)/2, -10/2, -18/2+1]) rotate([0, 90, 0]) cylinder(h=18+15, r=18/2, $fn=100);

    #translate([ (16.8+3)/2-2, 0, -3]) rotate([20, -40, 0]) cube([4, 2, 30]);
}
}

module cover()
{
difference()
{

    union()
    {
        translate([-(16.8+3)/2, 2, 17]) rotate([180, 0, 180-55]) cube([11-2, 2+10, 17]);
        translate([-(16.8+3)/2, 2, 17]) rotate([180, 0, 180-55]) cube([11, 2, 17]);
        translate([-(16.8+3)/2, 2, 0]) cube([16.8+3, 2+10, 17]);
        translate([ (16.8+3)/2, 2, 0]) rotate([0, 0, 55]) cube([11, 2, 17]);
        translate([ (16.8+3)/2, 2, 0]) rotate([0, 0, 55]) cube([11-2, 2+10, 17]);

        translate([-13.1-1.5, 2+9.2, 0]) cylinder(h=17, r=3/2, $fn=100);
        translate([13.1+1.5, 2+9.2, 0]) cylinder(h=17, r=3/2, $fn=100);
    }

}
}



