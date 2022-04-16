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

// FUNCIONAVA SÓ LENDO, AGORA QUERO ESCREVER
// import java.nio.charset.StandardCharsets;

import java.nio.charset.StandardCharsets;
import java.nio.file.StandardOpenOption;


// SÓ PRO RANDOM NO NOME, SE NÃO USAR, TIRAR
import java.util.Random;

//import java.io.File;

import java.util.stream.Stream;

import jason.bb.*;

public class my_bb_ag extends DefaultInternalAction {

    @Override
    public Object execute(TransitionSystem ts, Unifier un, Term[] args) throws Exception {

        System.out.println("Executing JAVA custom code - Test");

        // RuntimeServices rs = RuntimeServicesFactory.get();
        // Collection<String> names = rs.getAgentsNames();

        // String y[] = names.toArray(new String[names.size()]);


        // TextPersistentBB rs = TextPersistentBB.init(y[0], "aaaaa".split("\\s+"));

        // System.out.println("weeeeeeeeee");



        // if (Files.exists(Paths.get("/teste/important/receive_agent3.txt")) && Files.size(Paths.get("/teste/important/receive_agent3.txt")) >= 0) {
            
        //     // RuntimeServices provides services to create agents in the current platform (Local, JADE, JaCaMo, ...)
        //     RuntimeServices rs = RuntimeServicesFactory.get();

        //     String fileName = "/teste/important/receive_agent3.txt";
        //     File file = new File(fileName);

        //     try (Stream linesStream = Files.lines(file.toPath())) {
        //         linesStream.forEach(line2 -> {
        //             String name = "";
        //             String aehoo = String.valueOf(line2);

        //             System.out.println(aehoo);

        //             String[] splitStr = aehoo.split("\\s+");

        //             // use Settings to add initial beliefs and goals for the new agent
        //             // (as used in the .mas2j project file)
        //             Settings s = new Settings();
        //             String bels = "b(10),b(20)";
        //             s.addOption(Settings.INIT_BELS, bels+ ", b("+splitStr[2]+"), b("+splitStr[3]+"), b("+splitStr[4]+")");
        //             s.addOption(Settings.INIT_GOALS, "a");

        //             try {
        //                 rs.createAgent(splitStr[1], "bob.asl", null, null, null, s, ts.getAg());
        //                 rs.startAgent(splitStr[1]);
        //                 System.out.println("Agent created by custom file");
        //             } catch (Exception e) {

        //             }
        //         });

        //         System.out.println("! Deleting After creating agents !");
        //         Files.delete(Paths.get("/teste/important/receive_agent3.txt"));
        //         System.out.println("! Deleted !");
        //     }
        // }
        // else {
        //     System.out.println("/teste/important/receive_agent3.txt não existe");
        // }

        // everything ok, so returns true
        return true;
    }
}