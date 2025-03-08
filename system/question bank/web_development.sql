USE eduai;

-- Insert Web Development Questions

-- Easy Questions (1-20)
INSERT INTO quizzes (topic, difficulty, question, options, answer) VALUES
('Web Development', 1, 'What does HTML stand for?', '["Hyper Text Markup Language", "High-Level Text Machine Language", "Hyperlinks and Text Markup Language", "Home Tool Markup Language"]', 'Hyper Text Markup Language'),
('Web Development', 1, 'Which tag is used to create a hyperlink in HTML?', '["<a>", "<link>", "<href>", "<hyperlink>"]', '<a>'),
('Web Development', 1, 'What does CSS stand for?', '["Cascading Style Sheets", "Computer Style Sheets", "Colorful Style Sheets", "Creative Style Sheets"]', 'Cascading Style Sheets'),
('Web Development', 1, 'Which property is used to change the background color in CSS?', '["background-color", "color", "bgcolor", "background"]', 'background-color'),
('Web Development', 1, 'What is the correct syntax for referring to an external JavaScript file?', '["<script src=\'script.js\'>", "<script href=\'script.js\'>", "<script name=\'script.js\'>", "<script file=\'script.js\'>"]', '<script src=\'script.js\'>'),
('Web Development', 1, 'Which HTML tag is used to define an internal style sheet?', '["<style>", "<css>", "<script>", "<link>"]', '<style>'),
('Web Development', 1, 'What is the correct way to write a JavaScript array?', '["var colors = [\'red\', \'green\', \'blue\'];", "var colors = (\'red\', \'green\', \'blue\');", "var colors = \'red\', \'green\', \'blue\';", "var colors = {\'red\', \'green\', \'blue\'};"]', 'var colors = [\'red\', \'green\', \'blue\'];'),
('Web Development', 1, 'Which HTML attribute is used to define inline styles?', '["style", "class", "font", "styles"]', 'style'),
('Web Development', 1, 'Which HTML tag is used to define a table row?', '["<tr>", "<td>", "<th>", "<table>"]', '<tr>'),
('Web Development', 1, 'What is the default display property of a <div> element?', '["block", "inline", "inline-block", "none"]', 'block'),
('Web Development', 1, 'Which CSS property is used to change the text color of an element?', '["color", "text-color", "font-color", "background-color"]', 'color'),
('Web Development', 1, 'What is the correct HTML for inserting an image?', '["<img src=\'image.jpg\' alt=\'My Image\'>", "<image src=\'image.jpg\' alt=\'My Image\'>", "<img href=\'image.jpg\' alt=\'My Image\'>", "<img alt=\'My Image\'>image.jpg</img>"]', '<img src=\'image.jpg\' alt=\'My Image\'>'),
('Web Development', 1, 'Which HTML tag is used to define a list item?', '["<li>", "<ul>", "<ol>", "<dl>"]', '<li>'),
('Web Development', 1, 'What is the correct way to write a JavaScript function?', '["function myFunction() {}", "function = myFunction() {}", "function:myFunction() {}", "function myFunction {}"]', 'function myFunction() {}'),
('Web Development', 1, 'Which HTML tag is used to define a paragraph?', '["<p>", "<para>", "<paragraph>", "<pg>"]', '<p>'),
('Web Development', 1, 'Which CSS property is used to control the text size?', '["font-size", "text-size", "font-style", "text-style"]', 'font-size'),
('Web Development', 1, 'What is the correct HTML for creating a checkbox?', '["<input type=\'checkbox\'>", "<checkbox>", "<input type=\'check\'>", "<check>"]', '<input type=\'checkbox\'>'),
('Web Development', 1, 'Which HTML tag is used to define a header cell in a table?', '["<th>", "<td>", "<tr>", "<header>"]', '<th>'),
('Web Development', 1, 'What is the correct way to write a comment in JavaScript?', '["// This is a comment", "<!-- This is a comment -->", "/* This is a comment */", "# This is a comment"]', '// This is a comment'),
('Web Development', 1, 'Which HTML tag is used to define a hyperlink target?', '["<a>", "<link>", "<target>", "<href>"]', '<a>');

-- Medium Questions (21-40)
INSERT INTO quizzes (topic, difficulty, question, options, answer) VALUES
('Web Development', 2, 'What is the purpose of the <head> tag in HTML?', '["To contain metadata and links to external resources", "To define the main content of the document", "To create a header section", "To define a hyperlink"]', 'To contain metadata and links to external resources'),
('Web Development', 2, 'Which CSS property is used to create space between elements?', '["margin", "padding", "border", "spacing"]', 'margin'),
('Web Development', 2, 'What is the purpose of the alt attribute in the <img> tag?', '["To provide alternative text for the image", "To define the alignment of the image", "To specify the image source", "To set the image size"]', 'To provide alternative text for the image'),
('Web Development', 2, 'Which JavaScript method is used to write content into an HTML document?', '["document.write()", "document.innerHTML", "document.content", "document.output"]', 'document.write()'),
('Web Development', 2, 'What is the purpose of the <meta> tag in HTML?', '["To provide metadata about the HTML document", "To define a section of the document", "To create a hyperlink", "To define a table"]', 'To provide metadata about the HTML document'),
('Web Development', 2, 'Which CSS property is used to control the layout of elements?', '["display", "visibility", "position", "layout"]', 'display'),
('Web Development', 2, 'What is the purpose of the <form> tag in HTML?', '["To create a form for user input", "To define a section of the document", "To create a hyperlink", "To define a table"]', 'To create a form for user input'),
('Web Development', 2, 'Which JavaScript method is used to select an HTML element by its id?', '["document.getElementById()", "document.querySelector()", "document.getElementByClass()", "document.selectElement()"]', 'document.getElementById()'),
('Web Development', 2, 'What is the purpose of the <script> tag in HTML?', '["To embed or reference JavaScript code", "To define a section of the document", "To create a hyperlink", "To define a table"]', 'To embed or reference JavaScript code'),
('Web Development', 2, 'Which CSS property is used to create rounded corners?', '["border-radius", "corner-radius", "round-corner", "border-style"]', 'border-radius'),
('Web Development', 2, 'What is the purpose of the <nav> tag in HTML?', '["To define a section of navigation links", "To define a section of the document", "To create a hyperlink", "To define a table"]', 'To define a section of navigation links'),
('Web Development', 2, 'Which JavaScript method is used to add an element to the end of an array?', '["push()", "append()", "add()", "insert()"]', 'push()'),
('Web Development', 2, 'What is the purpose of the <footer> tag in HTML?', '["To define a footer for a document or section", "To define a section of the document", "To create a hyperlink", "To define a table"]', 'To define a footer for a document or section'),
('Web Development', 2, 'Which CSS property is used to control the stacking order of elements?', '["z-index", "stack-order", "layer", "position"]', 'z-index'),
('Web Development', 2, 'What is the purpose of the <aside> tag in HTML?', '["To define content aside from the main content", "To define a section of the document", "To create a hyperlink", "To define a table"]', 'To define content aside from the main content'),
('Web Development', 2, 'Which JavaScript method is used to remove the last element of an array?', '["pop()", "remove()", "delete()", "shift()"]', 'pop()'),
('Web Development', 2, 'What is the purpose of the <article> tag in HTML?', '["To define an independent, self-contained content", "To define a section of the document", "To create a hyperlink", "To define a table"]', 'To define an independent, self-contained content'),
('Web Development', 2, 'Which CSS property is used to control the visibility of an element?', '["visibility", "display", "opacity", "hidden"]', 'visibility'),
('Web Development', 2, 'What is the purpose of the <section> tag in HTML?', '["To define a section in a document", "To define a section of the document", "To create a hyperlink", "To define a table"]', 'To define a section in a document'),
('Web Development', 2, 'Which JavaScript method is used to convert a string to lowercase?', '["toLowerCase()", "toLower()", "lowerCase()", "convertLower()"]', 'toLowerCase()');

-- Hard Questions (41-60)
INSERT INTO quizzes (topic, difficulty, question, options, answer) VALUES
('Web Development', 3, 'What is the purpose of the <canvas> tag in HTML?', '["To draw graphics on a web page", "To define a section of the document", "To create a hyperlink", "To define a table"]', 'To draw graphics on a web page'),
('Web Development', 3, 'Which CSS property is used to create animations?', '["animation", "transition", "transform", "keyframes"]', 'animation'),
('Web Development', 3, 'What is the purpose of the <svg> tag in HTML?', '["To define vector graphics", "To define a section of the document", "To create a hyperlink", "To define a table"]', 'To define vector graphics'),
('Web Development', 3, 'Which JavaScript method is used to find the index of an element in an array?', '["indexOf()", "findIndex()", "search()", "locate()"]', 'indexOf()'),
('Web Development', 3, 'What is the purpose of the <iframe> tag in HTML?', '["To embed another HTML page", "To define a section of the document", "To create a hyperlink", "To define a table"]', 'To embed another HTML page'),
('Web Development', 3, 'Which CSS property is used to control the spacing between letters?', '["letter-spacing", "word-spacing", "text-spacing", "font-spacing"]', 'letter-spacing'),
('Web Development', 3, 'What is the purpose of the <audio> tag in HTML?', '["To embed audio content", "To define a section of the document", "To create a hyperlink", "To define a table"]', 'To embed audio content'),
('Web Development', 3, 'Which JavaScript method is used to sort the elements of an array?', '["sort()", "order()", "arrange()", "compare()"]', 'sort()'),
('Web Development', 3, 'What is the purpose of the <video> tag in HTML?', '["To embed video content", "To define a section of the document", "To create a hyperlink", "To define a table"]', 'To embed video content'),
('Web Development', 3, 'Which CSS property is used to control the alignment of text?', '["text-align", "align-text", "text-justify", "text-position"]', 'text-align'),
('Web Development', 3, 'What is the purpose of the <details> tag in HTML?', '["To create a collapsible section", "To define a section of the document", "To create a hyperlink", "To define a table"]', 'To create a collapsible section'),
('Web Development', 3, 'Which JavaScript method is used to remove whitespace from the beginning and end of a string?', '["trim()", "strip()", "clean()", "removeWhitespace()"]', 'trim()'),
('Web Development', 3, 'What is the purpose of the <figure> tag in HTML?', '["To group media content with a caption", "To define a section of the document", "To create a hyperlink", "To define a table"]', 'To group media content with a caption'),
('Web Development', 3, 'Which CSS property is used to control the order of flex items?', '["order", "flex-order", "item-order", "flex-direction"]', 'order'),
('Web Development', 3, 'What is the purpose of the <mark> tag in HTML?', '["To highlight text", "To define a section of the document", "To create a hyperlink", "To define a table"]', 'To highlight text'),
('Web Development', 3, 'Which JavaScript method is used to convert a string to an integer?', '["parseInt()", "toInteger()", "convertToInt()", "stringToInt()"]', 'parseInt()'),
('Web Development', 3, 'What is the purpose of the <progress> tag in HTML?', '["To represent the progress of a task", "To define a section of the document", "To create a hyperlink", "To define a table"]', 'To represent the progress of a task'),
('Web Development', 3, 'Which CSS property is used to control the direction of flex items?', '["flex-direction", "flex-order", "flex-flow", "flex-align"]', 'flex-direction'),
('Web Development', 3, 'What is the purpose of the <time> tag in HTML?', '["To represent a specific time or date", "To define a section of the document", "To create a hyperlink", "To define a table"]', 'To represent a specific time or date'),
('Web Development', 3, 'Which JavaScript method is used to convert a number to a string?', '["toString()", "toText()", "convertToString()", "stringify()"]', 'toString()');