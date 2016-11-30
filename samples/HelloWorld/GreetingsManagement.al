// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

// Codeunit for creating random greetings
codeunit 70051100 GreetingsManagement
{
    // Get a translated 'Hello World' string.
    // Thanks to https://www.bing.com/translator/
    local procedure GetHelloWorldText(GreetingNo : Integer) : Text;
    begin
        case GreetingNo of
            0:  exit('Afrikaans: Hallo wêreld');
            1:  exit('Arabic: مرحبا بالعالم');
            2:  exit('Bulgarian: Здравей, свят');
            3:  exit('Cantonese: 世界你好');
            4:  exit('Greek: Γεια σου κόσμε');
            5:  exit('Korean: 전 세계 여러분 안녕하세요');
            6:  exit('Thai: หวัดดีชาวโลก');
            7:  exit('Hindi: हैलो वर्ल्ड');
            8:  exit('Japanese: ハローワールド'); 
            9:  exit('Danish: Hej verden');
            10: exit('Polish: Witaj świecie');
            11: exit('Pig Latin: Ellohay Orldway');
            12: exit('Hungarian: Szia, világ!');
            13: exit('Flemish: Hej wereld');
            14: exit('Dutch: Hallo wereld');
            15: exit('French: Bonjour le monde');
            16: exit('Finnish: Hei maailma');
            17: exit('Spanish: Hola mundo');
        else
            exit('Hello, World'); // Default to the good old one.
        end;
    end;

    // Gets a random greeting.
    procedure GetRandomGreeting() : Text;
    begin
        Randomize;
        exit(GetHelloWorldText(Random(19) - 1));  // Random(int) is 1-based
    end;
}
