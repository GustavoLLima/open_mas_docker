package mylib;

import jason.*;
import jason.runtime.*;
import jason.asSemantics.*;
import jason.asSyntax.*;

import java.nio.file.Path;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.io.*;
import java.util.List;
import java.nio.charset.StandardCharsets;

public class my_delete_ag extends DefaultInternalAction {

    @Override
    public Object execute(TransitionSystem ts, Unifier un, Term[] args) throws Exception {

        // use Settings to add initial beliefs and goals for the new agent
        // (as used in the .mas2j project file)
        Settings s = new Settings();
        s.addOption(Settings.INIT_BELS, "b(10),b(20)");
        s.addOption(Settings.INIT_GOALS, "a");

        // RuntimeServices provides services to create agents in the current platform (Local, JADE, JaCaMo, ...)
        RuntimeServices rs = RuntimeServicesFactory.get();

        int line = 1;
        String read_line = Files.readAllLines(Paths.get("data.txt")).get(line - 1);
        System.out.println(read_line);

        //String name = System.getProperty("user.dir");
        String name = read_line;
        //String name = "ta_dificil";
        name = rs.createAgent(name, "bob.asl", null, null, null, s, ts.getAg());
        rs.startAgent(name);

        // String name = read_line.get(0);
        // name = rs.createAgent(name, "bob.asl", null, null, null, s, ts.getAg());
        // rs.startAgent(name);

        // everything ok, so returns true
        return true;
    }
}

// PELO MENOS FUNCIONA ALGO

// public class my_create_ag extends DefaultInternalAction {

//     @Override
//     public Object execute(TransitionSystem ts, Unifier un, Term[] args) throws Exception {

//         // use Settings to add initial beliefs and goals for the new agent
//         // (as used in the .mas2j project file)
//         Settings s = new Settings();
//         s.addOption(Settings.INIT_BELS, "b(10),b(20)");
//         s.addOption(Settings.INIT_GOALS, "a");

//         // RuntimeServices provides services to create agents in the current platform (Local, JADE, JaCaMo, ...)
//         RuntimeServices rs = RuntimeServicesFactory.get();

//         int line = 1;
//         String read_line = Files.readAllLines(Paths.get("data.txt")).get(line - 1);
//         System.out.println(read_line);

//         //String name = System.getProperty("user.dir");
//         String name = read_line;
//         //String name = "ta_dificil";
//         name = rs.createAgent(name, "bob.asl", null, null, null, s, ts.getAg());
//         rs.startAgent(name);

//         // String name = read_line.get(0);
//         // name = rs.createAgent(name, "bob.asl", null, null, null, s, ts.getAg());
//         // rs.startAgent(name);

//         // everything ok, so returns true
//         return true;
//     }
// }
