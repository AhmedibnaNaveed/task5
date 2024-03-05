module lab_5 (
    input logic a,
    input logic b,
    input logic c,
    input logic d,
    input logic x,y,z,
    output logic n0,n1,n2,n3,n4,n5,n6,n7,
    output logic A,
    output logic B,
    output logic C,
    output logic D,
    output logic E,
    output logic F,
    output logic G
);

    assign A = (~a && b && ~c && ~d)  || (a && b && ~c && d) || (a && ~b && c && d) || (~a && ~b && ~c && d) ;
    assign B = (~a && b && ~c && d)  || (a && b && ~d) || (a && c && d) || (b && c && ~d) ;
    assign C = (~a && ~b && c && ~d)  || (a && b &&  ~d) || (a && b && c)  ;
    assign D = (~a && b && ~c && ~d)  || (~a && ~b && ~c && d) || (b && c && d) || (a && ~b && c && ~d) ;
    assign E = (~a && d)  || (~a && b && ~c ) || (~b && ~c && d)  ;
    assign F = (~a && ~b && c)  || (~a && ~b && d ) || (~a  && c && d) || (a && b && ~c && d) ;
    assign G = (~a && ~b && ~c )  || (~a && b && c && d) || (a && b && ~c && ~d) ;

    assign n0 = x+y+z;
    assign n1 = x+y+(~z);
    assign n2 = x+(~y)+z;
    assign n3 = x+(~y)+(~z);
    assign n4 = ~x+(y)+(z);
    assign n5 = ~x+(y)+(~z);
    assign n6 =~x+(~y)+(z);
    assign n7 = ~x+(~y)+(~z);


endmodule
