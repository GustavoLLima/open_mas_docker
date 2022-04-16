!initial_print.
+!initial_print : true
<-
	.print("Hello there. I'm a checker agent");
	.print("Checking and creating agent if it exists on file");
	mylib.aaa_test_jython;
	.wait(1000);
	!initial_print.