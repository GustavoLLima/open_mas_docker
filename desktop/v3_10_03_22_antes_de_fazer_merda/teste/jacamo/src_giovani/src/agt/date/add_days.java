// Internal action code for project ObjectTerm

package date;

import jason.asSemantics.*;
import jason.asSyntax.*;

import java.util.Calendar;
import java.util.logging.Logger;

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
import java.nio.charset.StandardCharsets;

import java.nio.charset.StandardCharsets;
import java.nio.file.StandardOpenOption;


// SÓ PRO RANDOM NO NOME, SE NÃO USAR, TIRAR
import java.util.Random;

import java.util.*;

//import java.io.File;

import java.util.stream.Stream;

public class add_days extends DefaultInternalAction {

    private Logger logger = Logger.getLogger("ObjectTerm."+add_days.class.getName());

    @Override
    public Object execute(TransitionSystem ts, Unifier un, Term[] args) throws Exception {
        try {
            // RuntimeServices provides services to create agents in the current platform (Local, JADE, JaCaMo, ...)
            RuntimeServices rs = RuntimeServicesFactory.get();


            Collection<String> names = rs.getAgentsNames();
            String y[] = names.toArray(new String[names.size()]);
            System.out.println("All agents:");
            System.out.println(names);

            if (names.size() >= 1){
                System.out.println("Mais de 0 agentes, processando");
                Random Dice = new Random();

                String str = "";

                int tries = 0;

                do {
                    int n = Dice.nextInt(y.length);
                    str = y[n];
                    tries++;

                    System.out.println("Try: "+str);

                    if (!str.equals("sample_agent") && !str.equals("test_agent") && !str.equals("ag1")){
                        System.out.println("Match, string:");
                        System.out.println(str);
                        break;
                    }
                // } while (tries < 10 && str.matches("^[0-9]*$"));
                } while (tries < 50);

                if (tries == 50){
                    System.out.println("Max attempts achieved");
                    System.out.println(tries);
                } else {
                    System.out.println("Attempts nao foi 10");
                    System.out.println(tries);
                    System.out.println("String escolhida:");
                    System.out.println(str);
                }

                if(str.equals("sample_agent") || str.equals("test_agent") || str.equals("ag1")){
                    throw new IllegalArgumentException("Deu ruim");
                }

                if (!str.equals("")){
                    System.out.println("Agent randomly chosen:");
                    System.out.println(str);


                    Term t = new ObjectTermImpl(str);

                    // unify the result
                    return un.unifies(args[0], t);
                } else {
                    System.out.println("Max tries achieved, return on next run");
                }
                str = "";
            } else {
                System.out.println("Menos de 2 agentes, sem agentes para processar");
            }
        } catch (Exception e) {
            // logger.warning("Error in internal action 'date.add_days'! "+e);
        }

        return false;
    }
}
// // Internal action code for project ObjectTerm

// package date;

// import jason.asSemantics.*;
// import jason.asSyntax.*;

// import java.util.Calendar;
// import java.util.logging.Logger;

// public class add_days extends DefaultInternalAction {

//     private Logger logger = Logger.getLogger("ObjectTerm."+add_days.class.getName());

//     @Override
//     public Object execute(TransitionSystem ts, Unifier un, Term[] args) throws Exception {
//         try {
//             Term t = new ObjectTermImpl("AAAA");

//             // unify the result
//             return un.unifies(args[2], t);
//         } catch (Exception e) {
//             logger.warning("Error in internal action 'date.add_days'! "+e);
//         }
//         return false;
//     }
// }



// // Internal action code for project ObjectTerm

// package date;

// import jason.asSemantics.*;
// import jason.asSyntax.*;

// import java.util.Calendar;
// import java.util.logging.Logger;

// public class add_days extends DefaultInternalAction {

//     private Logger logger = Logger.getLogger("ObjectTerm."+add_days.class.getName());

//     @Override
//     public Object execute(TransitionSystem ts, Unifier un, Term[] args) throws Exception {
//         try {
//             // get the object wrapped by args[0]
//             Calendar c = (Calendar) ((ObjectTerm)args[0]).getObject();

//             // clone (so to not change the original object)
//             c = (Calendar)c.clone();

//             // do the changes
//             c.add(Calendar.DAY_OF_YEAR, (int)((NumberTerm)args[1]).solve());

//             // unify the result
//             return un.unifies(args[2], new ObjectTermImpl(c));
//         } catch (Exception e) {
//             logger.warning("Error in internal action 'date.add_days'! "+e);
//         }
//         return false;
//     }
// }
