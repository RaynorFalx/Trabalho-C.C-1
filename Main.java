package decaf;

import java.io.*;
import antlr.Token;
import java6035.tools.CLI.*;

class Main {
    public static void main(String[] args) {
        try {
        	CLI.parse (args, new String[0]);
        	
        	InputStream inputStream = args.length == 0 ?
                    System.in : new java.io.FileInputStream(CLI.infile);

        	if (CLI.target == CLI.SCAN)
        	{
        		DecafScanner lexer = new DecafScanner(new DataInputStream(inputStream));
        		Token token;
        		boolean done = false;
        		while (!done)
        		{
        			try
        			{
		        		for (token=lexer.nextToken(); token.getType()!=DecafParserTokenTypes.EOF; token=lexer.nextToken())
		        		{
		        			String type = "";
		        			String text = token.getText();
		
		        			switch (token.getType())
		        			{
				  
								case DecafScannerTokenTypes.DIGIT:
				    				type = " DIGITAL";
				    				break;
								case DecafScannerTokenTypes.TIMES:
				    				type = " TIMESOP";
				    				break;
								case DecafScannerTokenTypes.DIV:
				    				type = " DIVOP";
				    				break;
								case DecafScannerTokenTypes.ADD:
				    				type = " ADDOP";
				    				break;
								case DecafScannerTokenTypes.MINUS:
				    				type = " MINUSOP";
				    				break;
								case DecafScannerTokenTypes.POINT:
				    				type = " POINTOPP";
				    				break;
		        			}
		        			System.out.println (token.getLine() + type + " " + text);
		        		}
		        		done = true;
        			} catch(Exception e) {
        	        	// print the error:
        	            System.out.println(CLI.infile+" "+e);
        	            lexer.consume ();
        	        }
        		}
        	}
        	else if (CLI.target == CLI.PARSE || CLI.target == CLI.DEFAULT)
        	{
        		DecafScanner lexer = new DecafScanner(new DataInputStream(inputStream));
        		DecafParser parser = new DecafParser (lexer);
                parser.atom();
        	}
        	
        } catch(Exception e) {
        	// print the error:
            System.out.println(CLI.infile+" "+e);
        }
    }
}
