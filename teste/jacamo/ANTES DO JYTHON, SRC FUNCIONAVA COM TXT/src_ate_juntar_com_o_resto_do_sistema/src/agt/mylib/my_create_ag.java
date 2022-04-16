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

//import java.io.File;

public class my_create_ag extends DefaultInternalAction {

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

        //Path path2 = Paths.get("data.txt");
        //List<String> lines2 = Files.readAllLines(path2, StandardCharsets.UTF_8);
        System.out.println("Writing...");
        //Path path3 = Paths.get("data2.txt");
        //Files.write(path3, lines2, StandardCharsets.UTF_8, StandardOpenOption.CREATE, StandardOpenOption.APPEND);

        Files.write(Paths.get("data2.txt"), "the text \n".getBytes(), StandardOpenOption.CREATE);
        Files.write(Paths.get("data2.txt"), "aehoo \n".getBytes(), StandardOpenOption.APPEND);

        System.out.println("Reading...");

        String fileName2 = "data2.txt";
        File file2 = new File(fileName2);

        byte [] fileBytes2 = Files.readAllBytes(file2.toPath());
        char singleChar2;
        for(byte b2 : fileBytes2) {
          singleChar2 = (char) b2;
          System.out.print(singleChar2);
        }

        // FUNCIONA, LÊ, MAS É A OPÇÃO LENTA
        // String fileName2 = "data2.txt";
        // FileReader fileReader2 = new FileReader(fileName2);

        // BufferedReader bufferedReader2 = new BufferedReader(fileReader2);
        // String line2;
        // while((line2 = bufferedReader2.readLine()) != null) {
        //     System.out.println(line2);
        // }

        System.out.println("Done.");

        // System.out.println("Será?");

        // String fileName = "data2.txt";
        // File file = new File(fileName);

        // byte [] fileBytes = Files.readAllBytes(file.toPath());
        // char singleChar;
        // for(byte b : fileBytes) {
        //   singleChar = (char) b;
        //   System.out.println(singleChar);
        // }

        // System.out.println("foi?");

        //String name = System.getProperty("user.dir");
        String name = read_line;
        //String name = "ta_dificil";
        name = rs.createAgent(name, "bob.asl", null, null, null, s, ts.getAg());
        rs.startAgent(name);

        // int lineNumber = 1;
        // String data = "aeee";
        // Path path = Paths.get("data2.txt");
        // List<String> lines = Files.readAllLines(path, StandardCharsets.UTF_8);
        // lines.set(lineNumber - 1, data);
        // // IMPRIME EM LINHA ESPECIFICA
        // Files.write(path, lines, StandardCharsets.UTF_8);


        // String name = read_line.get(0);
        // name = rs.createAgent(name, "bob.asl", null, null, null, s, ts.getAg());
        // rs.startAgent(name);

        // everything ok, so returns true
        return true;
    }
}


// BACKUP LE E ESCREVE EM ARQUIVO

// Write your code here
// System.out.println("Hello, World!");

// int line = 1;
// String read_line = Files.readAllLines(Paths.get("data.txt")).get(line - 1);
// System.out.println(read_line);

// int lineNumber = 1;
// String data = "aeee";
// Path path = Paths.get("data.txt");
// List<String> lines = Files.readAllLines(path, StandardCharsets.UTF_8);
// lines.set(lineNumber - 1, data);
// // IMPRIME EM LINHA ESPECIFICA
// Files.write(path, lines, StandardCharsets.UTF_8);



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
