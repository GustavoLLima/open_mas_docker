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

import java.util.*;

//import java.io.File;

import java.util.stream.Stream;

public class my_delete_ag extends DefaultInternalAction {

    @Override
    public Object execute(TransitionSystem ts, Unifier un, Term[] args) throws Exception {

        System.out.println("Executing JAVA custom code - delete");

        try {
            // RuntimeServices provides services to create agents in the current platform (Local, JADE, JaCaMo, ...)
            RuntimeServices rs = RuntimeServicesFactory.get();


            Collection<String> names = rs.getAgentsNames();
            String y[] = names.toArray(new String[names.size()]);
            System.out.println("All agents:");
            System.out.println(names);

            // System.out.println("First agent:");
            // System.out.println(y[0]);

            // System.out.println("Agents one by one:");
            // for (String str : names){
            //     if (!str.equals("sample_agent") && !str.equals("ag1")){
            //         System.out.println(str);
            //     }
            // }

            if (names.size() > 2){
                System.out.println("Mais de 2 agentes, processando");

                // System.out.println("Random agent:");
                Random Dice = new Random();

                String str = "";

                // for (int i = 0; i < 50; i++) {
                //   do {
                //     int n = Dice.nextInt(y.length);
                //     str = y[n];
                // } while (str.equals("sample_agent") || str.equals("ag1"));

                // System.out.println(str);
                // }

                int tries = 0;

                do {
                    int n = Dice.nextInt(y.length);
                    str = y[n];
                    tries++;
                // } while (tries < 10 && (!str.equals("sample_agent") && !str.equals("ag1") && !str.equals("df")));
                // } while (tries < 10 && str.matches("\\d+"));

                    if (str.matches("^[0-9]*$")){
                        System.out.println("Match, string:");
                        System.out.println(str);
                        // break;
                    }
                // } while (tries < 10 && str.matches("^[0-9]*$"));
                } while (tries < 10 && !str.matches("^[0-9]*$"));

                if (tries == 10){
                    System.out.println("Max attempts achieved");
                    System.out.println(tries);
                } else {
                    System.out.println("Attempts nao foi 10");
                    System.out.println(tries);
                    System.out.println("String escolhida:");
                    System.out.println(str);
                }

                if(str.equals("sample_agent") || str.equals("ag1") || str.equals("df")){
                    throw new IllegalArgumentException("Deu ruim");
                }

                if (!str.equals("")){
                    System.out.println("Agent randomly chosen:");
                    System.out.println(str);

                    //names = rs.getAgentsNames();

                    // System.out.println("Estado:");
                    // System.out.println(rs.getAgStateAsString(str));


                    System.out.println("Before kill:");
                    System.out.println(rs.getAgentsQty());

                    if (rs.killAgent(str, null, 0)){
                        int sugar = (Dice.nextInt(25) + 5);
                        int metabolism = (Dice.nextInt(4) + 1);
                        int vision = (Dice.nextInt(6) + 1);

                        System.out.println("Agent string:");
                        String agent_string = "["+"\""+"agent"+"\""+" "+str+" "+sugar+" "+metabolism+" "+vision+" "+"\""+"3"+"\""+"]"+"\n";
                        // String agent_string = "["+"\""+"agent"+"\""+" "+str+" 1 2 3 "+"\""+"3"+"\""+"]"+"\n";
                        //String agent_string = "["+"\""+"agent"+"\""+" 999999999 1 2 3 "+"\""+"1-2"+"\""+"]"+"\n";
                        System.out.println(agent_string);
                        if (Files.exists(Paths.get("/teste/important/send_agent3.txt"))){
                            System.out.println("Adicionando...");
                            Files.write(Paths.get("/teste/important/send_agent3.txt"),agent_string.getBytes(), StandardOpenOption.APPEND);
                        }
                        else{
                            System.out.println("Criando...");
                            Files.write(Paths.get("/teste/important/send_agent3.txt"),agent_string.getBytes(), StandardOpenOption.CREATE);
                        }


                        if (Files.exists(Paths.get("/teste/important/general_send_agent.txt"))){
                            System.out.println("Adicionando...");
                            Files.write(Paths.get("/teste/important/general_send_agent.txt"),agent_string.getBytes(), StandardOpenOption.APPEND);
                        }
                        else{
                            System.out.println("Criando...");
                            Files.write(Paths.get("/teste/important/general_send_agent.txt"),agent_string.getBytes(), StandardOpenOption.CREATE);
                        }


                        // Files.write(Paths.get("send_agent33.txt"),agent_string.getBytes(), StandardOpenOption.CREATE);
                        System.out.println("Agent killed!");
                    }

                    System.out.println("After kill:");
                    System.out.println(rs.getAgentsQty());
                } else {
                    System.out.println("Max tries achieved, return on next run");
                }
                str = "";
            } else {
                System.out.println("Menos de 2 agentes, sem agentes para processar");
            }


            // System.out.println("Before kill:");
            // System.out.println(rs.getAgentsQty());

            // if (rs.killAgent(str, null, 0))
            //     System.out.println("Agent killed!");

            // rs = RuntimeServicesFactory.get();

            // System.out.println("After kill:");
            // System.out.println(rs.getAgentsQty());





            // int n = Dice.nextInt(y.length); 
            // System.out.println(y[n]);

            // n = Dice.nextInt(y.length); 
            // System.out.println(y[n]);
        } catch (Exception e) {

        }



        // if (Files.exists(Paths.get("/teste/important/send_agent3.txt")) && Files.size(Paths.get("/teste/important/send_agent3.txt")) >= 0 ) {
        //     System.out.println("existe e não vazio");
        // }
        // else {
        //     System.out.println("não existe ou vazio");
        // }

        // if (Files.exists(Paths.get("/teste/important/data0.txt"))) {
        //     System.out.println("/teste/important/data0.txt não existe");
        // }
        // else {
        //     if (Files.exists(Paths.get("/teste/important/send_agent3.txt"))) {
                
        //         // RuntimeServices provides services to create agents in the current platform (Local, JADE, JaCaMo, ...)
        //         RuntimeServices rs = RuntimeServicesFactory.get();

        //         String fileName = "/teste/important/send_agent3.txt";
        //         File file = new File(fileName);

        //         try (Stream linesStream = Files.lines(file.toPath())) {
        //             linesStream.forEach(line2 -> {
        //                 String name = "";
        //                 String aehoo = String.valueOf(line2);

        //                 System.out.println(aehoo);

        //                 String[] splitStr = aehoo.split("\\s+");

        //                 // use Settings to add initial beliefs and goals for the new agent
        //                 // (as used in the .mas2j project file)
        //                 Settings s = new Settings();
        //                 String bels = "b(10),b(20)";
        //                 s.addOption(Settings.INIT_BELS, bels+ ", b("+splitStr[2]+"), b("+splitStr[3]+"), b("+splitStr[4]+")");
        //                 s.addOption(Settings.INIT_GOALS, "a");

        //                 try {
        //                     rs.createAgent(splitStr[1], "bob.asl", null, null, null, s, ts.getAg());
        //                     rs.startAgent(splitStr[1]);
        //                     System.out.println("Agent created by custom file");
        //                 } catch (Exception e) {

        //                 }
        //             });
        //         }

        //         System.out.println("! Deleting After creating agents !");
        //         Files.delete(Paths.get("/teste/important/send_agent3.txt"));
        //         System.out.println("! Deleted !");
        //     }
        //     else {
        //         System.out.println("/teste/important/send_agent3.txt não existe");
        //     }
        // }


        // System.out.println("Writing...");

        // Files.write(Paths.get("data2.txt"), "the text \n".getBytes(), StandardOpenOption.CREATE);
        // Files.write(Paths.get("data2.txt"), "aehoo \n".getBytes(), StandardOpenOption.APPEND);

        // System.out.println("Reading...");

        // String fileName2 = "data2.txt";
        // File file2 = new File(fileName2);

        // byte [] fileBytes2 = Files.readAllBytes(file2.toPath());
        // char singleChar2;
        // for(byte b2 : fileBytes2) {
        //   singleChar2 = (char) b2;
        //   System.out.print(singleChar2);
        // }

        // System.out.println("Done.");

        // everything ok, so returns true
        return true;
    }
}


// BACKUP ESCREVE BELS PRA 1 AGENTE SÓ
// package mylib;

// import jason.*;
// import jason.runtime.*;
// import jason.asSemantics.*;
// import jason.asSyntax.*;

// import java.nio.file.Path;
// import java.nio.file.Files;
// import java.nio.file.Paths;
// import java.io.*;
// import java.util.List;

// // FUNCIONAVA SÓ LENDO, AGORA QUERO ESCREVER
// // import java.nio.charset.StandardCharsets;

// import java.nio.charset.StandardCharsets;
// import java.nio.file.StandardOpenOption;


// // SÓ PRO RANDOM NO NOME, SE NÃO USAR, TIRAR
// import java.util.Random;

// //import java.io.File;

// public class my_create_ag extends DefaultInternalAction {

//     @Override
//     public Object execute(TransitionSystem ts, Unifier un, Term[] args) throws Exception {

//         System.out.println("Executing JAVA custom code");

//         if (Files.exists(Paths.get("/teste/important/send_agent3.txt")) && Files.size(Paths.get("/teste/important/send_agent3.txt")) >= 0 ) {
//             System.out.println("existe e não vazio");
//         }
//         else {
//             System.out.println("não existe ou vazio");
//         }

//         if (Files.exists(Paths.get("/teste/important/data0.txt"))) {
//             System.out.println("/teste/important/data0.txt não existe");
//         }
//         else {
//             if (Files.exists(Paths.get("/teste/important/send_agent3.txt"))) {
//                 // use Settings to add initial beliefs and goals for the new agent
//                 // (as used in the .mas2j project file)
//                 // Settings s = new Settings();
//                 // s.addOption(Settings.INIT_BELS, "b(10),b(20)");
//                 // s.addOption(Settings.INIT_GOALS, "a");

//                 // RuntimeServices provides services to create agents in the current platform (Local, JADE, JaCaMo, ...)
//                 RuntimeServices rs = RuntimeServicesFactory.get();

//                 int line = 1;
//                 String read_line = Files.readAllLines(Paths.get("/teste/important/send_agent3.txt")).get(line - 1);
//                 System.out.println(read_line);
                
//                 String name = read_line;
//                 // name = rs.createAgent(name.split(" ")[1], "bob.asl", null, null, null, s, ts.getAg());
//                 // Random random = new Random();
//                 // name = rs.createAgent(Double.toString(random.nextDouble() * 100), "bob.asl", null, null, null, s, ts.getAg());

//                 //String str = " Hello I'm your String";
                
//                 Random random = new Random();

//                 String[] splitStr = read_line.split("\\s+");
//                 Settings s = new Settings();
//                 String bels = "b(10),b(20)";
//                 s.addOption(Settings.INIT_BELS, bels+ ", b("+splitStr[2]+"), b("+splitStr[3]+"), b("+splitStr[4]+")");
//                 s.addOption(Settings.INIT_GOALS, "a");
//                 name = rs.createAgent(splitStr[1]+Double.toString(random.nextDouble() * 100), "bob.asl", null, null, null, s, ts.getAg());
//                 rs.startAgent(name);
//                 System.out.println("Agent created by custom file");
//             }
//             else {
//                 System.out.println("/teste/important/send_agent3.txt não existe");
//             }
//         }


//         // System.out.println("Writing...");

//         // Files.write(Paths.get("data2.txt"), "the text \n".getBytes(), StandardOpenOption.CREATE);
//         // Files.write(Paths.get("data2.txt"), "aehoo \n".getBytes(), StandardOpenOption.APPEND);

//         // System.out.println("Reading...");

//         // String fileName2 = "data2.txt";
//         // File file2 = new File(fileName2);

//         // byte [] fileBytes2 = Files.readAllBytes(file2.toPath());
//         // char singleChar2;
//         // for(byte b2 : fileBytes2) {
//         //   singleChar2 = (char) b2;
//         //   System.out.print(singleChar2);
//         // }

//         // System.out.println("Done.");

//         // everything ok, so returns true
//         return true;
//     }
// }


// BACKUP, DEPOIS DE JA TER JUNTADO, LÊ ARQUIVO E PRINTA COM NOME RANDOM
// package mylib;

// import jason.*;
// import jason.runtime.*;
// import jason.asSemantics.*;
// import jason.asSyntax.*;

// import java.nio.file.Path;
// import java.nio.file.Files;
// import java.nio.file.Paths;
// import java.io.*;
// import java.util.List;

// // FUNCIONAVA SÓ LENDO, AGORA QUERO ESCREVER
// // import java.nio.charset.StandardCharsets;

// import java.nio.charset.StandardCharsets;
// import java.nio.file.StandardOpenOption;


// // SÓ PRO RANDOM NO NOME, SE NÃO USAR, TIRAR
// import java.util.Random;

// //import java.io.File;

// public class my_create_ag extends DefaultInternalAction {

//     @Override
//     public Object execute(TransitionSystem ts, Unifier un, Term[] args) throws Exception {

//         System.out.println("Executing JAVA custom code");

//         if (Files.exists(Paths.get("/teste/important/send_agent3.txt")) && Files.size(Paths.get("/teste/important/send_agent3.txt")) >= 0 ) {
//             System.out.println("existe e vazio");
//         }
//         else {
//             System.out.println("não existe ou não vazio");
//         }

//         if (Files.exists(Paths.get("/teste/important/data0.txt"))) {
//             System.out.println("/teste/important/data0.txt não existe");
//         }
//         else {
//             if (Files.exists(Paths.get("/teste/important/send_agent3.txt"))) {
//                 // use Settings to add initial beliefs and goals for the new agent
//                 // (as used in the .mas2j project file)
//                 Settings s = new Settings();
//                 s.addOption(Settings.INIT_BELS, "b(10),b(20)");
//                 s.addOption(Settings.INIT_GOALS, "a");

//                 // RuntimeServices provides services to create agents in the current platform (Local, JADE, JaCaMo, ...)
//                 RuntimeServices rs = RuntimeServicesFactory.get();

//                 int line = 1;
//                 String read_line = Files.readAllLines(Paths.get("/teste/important/send_agent3.txt")).get(line - 1);
//                 System.out.println(read_line);
                
//                 String name = read_line;
//                 // name = rs.createAgent(name.split(" ")[1], "bob.asl", null, null, null, s, ts.getAg());
//                 Random random = new Random();
//                 name = rs.createAgent(Double.toString(random.nextDouble() * 100), "bob.asl", null, null, null, s, ts.getAg());
//                 rs.startAgent(name);
//                 System.out.println("Agent created by custom file");
//             }
//             else {
//                 System.out.println("/teste/important/send_agent3.txt não existe");
//             }
//         }


//         // System.out.println("Writing...");

//         // Files.write(Paths.get("data2.txt"), "the text \n".getBytes(), StandardOpenOption.CREATE);
//         // Files.write(Paths.get("data2.txt"), "aehoo \n".getBytes(), StandardOpenOption.APPEND);

//         // System.out.println("Reading...");

//         // String fileName2 = "data2.txt";
//         // File file2 = new File(fileName2);

//         // byte [] fileBytes2 = Files.readAllBytes(file2.toPath());
//         // char singleChar2;
//         // for(byte b2 : fileBytes2) {
//         //   singleChar2 = (char) b2;
//         //   System.out.print(singleChar2);
//         // }

//         // System.out.println("Done.");

//         // everything ok, so returns true
//         return true;
//     }
// }

// BACKUP ANTES DE JUNTAR COM TUDO, LÊ E ESCREVE, ANTES DE LER ARQUIVOS DO NETLOGO

// package mylib;

// import jason.*;
// import jason.runtime.*;
// import jason.asSemantics.*;
// import jason.asSyntax.*;

// import java.nio.file.Path;
// import java.nio.file.Files;
// import java.nio.file.Paths;
// import java.io.*;
// import java.util.List;

// // FUNCIONAVA SÓ LENDO, AGORA QUERO ESCREVER
// // import java.nio.charset.StandardCharsets;

// import java.nio.charset.StandardCharsets;
// import java.nio.file.StandardOpenOption;

// //import java.io.File;

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

//         //Path path2 = Paths.get("data.txt");
//         //List<String> lines2 = Files.readAllLines(path2, StandardCharsets.UTF_8);
//         System.out.println("Writing...");
//         //Path path3 = Paths.get("data2.txt");
//         //Files.write(path3, lines2, StandardCharsets.UTF_8, StandardOpenOption.CREATE, StandardOpenOption.APPEND);

//         Files.write(Paths.get("data2.txt"), "the text \n".getBytes(), StandardOpenOption.CREATE);
//         Files.write(Paths.get("data2.txt"), "aehoo \n".getBytes(), StandardOpenOption.APPEND);

//         System.out.println("Reading...");

//         String fileName2 = "data2.txt";
//         File file2 = new File(fileName2);

//         byte [] fileBytes2 = Files.readAllBytes(file2.toPath());
//         char singleChar2;
//         for(byte b2 : fileBytes2) {
//           singleChar2 = (char) b2;
//           System.out.print(singleChar2);
//         }

//         // FUNCIONA, LÊ, MAS É A OPÇÃO LENTA
//         // String fileName2 = "data2.txt";
//         // FileReader fileReader2 = new FileReader(fileName2);

//         // BufferedReader bufferedReader2 = new BufferedReader(fileReader2);
//         // String line2;
//         // while((line2 = bufferedReader2.readLine()) != null) {
//         //     System.out.println(line2);
//         // }

//         System.out.println("Done.");

//         // System.out.println("Será?");

//         // String fileName = "data2.txt";
//         // File file = new File(fileName);

//         // byte [] fileBytes = Files.readAllBytes(file.toPath());
//         // char singleChar;
//         // for(byte b : fileBytes) {
//         //   singleChar = (char) b;
//         //   System.out.println(singleChar);
//         // }

//         // System.out.println("foi?");

//         //String name = System.getProperty("user.dir");
//         String name = read_line;
//         //String name = "ta_dificil";
//         name = rs.createAgent(name, "bob.asl", null, null, null, s, ts.getAg());
//         rs.startAgent(name);

//         // int lineNumber = 1;
//         // String data = "aeee";
//         // Path path = Paths.get("data2.txt");
//         // List<String> lines = Files.readAllLines(path, StandardCharsets.UTF_8);
//         // lines.set(lineNumber - 1, data);
//         // // IMPRIME EM LINHA ESPECIFICA
//         // Files.write(path, lines, StandardCharsets.UTF_8);


//         // String name = read_line.get(0);
//         // name = rs.createAgent(name, "bob.asl", null, null, null, s, ts.getAg());
//         // rs.startAgent(name);

//         // everything ok, so returns true
//         return true;
//     }
// }


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
