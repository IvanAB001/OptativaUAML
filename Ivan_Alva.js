//Ivan Alva Bustamante

shape(3).add(osc(.5,0.8,1), 1)
	.add(o1, () => (Math.sin(time/2) * 0.7 + 0.1))
  	.scale(()=>Math.sin(time / 16)).rotate(1, -0.1)
	.out(o1)

src(o1)
  .rotate(0,0.1)
  .out()
