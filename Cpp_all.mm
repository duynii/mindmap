<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1365557248443" ID="ID_925052849" MODIFIED="1365557257537" TEXT="C++">
<node CREATED="1365557260468" ID="ID_1904400884" MODIFIED="1365560631420" POSITION="right" STYLE="bubble" TEXT="Effective C++">
<node CREATED="1365557501485" FOLDED="true" ID="ID_813119986" MODIFIED="1366030349346" TEXT="Chapter 1">
<node CREATED="1365557508343" ID="ID_1439393594" MODIFIED="1366023902382" TEXT="Item 3: Use const whenever possible">
<node CREATED="1365557512543" ID="ID_1984474106" MODIFIED="1366029832602" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      char greeting[] = &quot;Hello&quot;;
    </p>
    <p>
      
    </p>
    <p>
      char *p = greeting;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// non-const pointer,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// non-const data
    </p>
    <p>
      
    </p>
    <p>
      const char *p = greeting;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// non-const pointer,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// const data
    </p>
    <p>
      
    </p>
    <p>
      char * const p = greeting;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// const pointer,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// non-const data
    </p>
    <p>
      
    </p>
    <p>
      const char * const p = greeting;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// const pointer,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// const data
    </p>
    <p>
      <font color="#059fde">//Iterator</font>
    </p>
    <p>
      const std::vector&lt;int&gt;::iterator iter =&#160;&#160;&#160;&#160;&#160;// iter acts like a T* const
    </p>
    <p>
      &#160;&#160;vec.begin();
    </p>
    <p>
      *iter = 10;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// OK, changes what iter points to
    </p>
    <p>
      ++iter;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// error! iter is const
    </p>
    <p>
      
    </p>
    <p>
      <font color="#14cbe1">// Or const_iterator</font>
    </p>
    <p>
      std::vector&lt;int&gt;::const_iterator cIter =&#160;&#160;&#160;//cIter acts like a const T*
    </p>
    <p>
      &#160;&#160;vec.begin();
    </p>
    <p>
      *cIter = 10;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// error! *cIter is const
    </p>
    <p>
      ++cIter;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// fine, changes cIter
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1365557271997" ID="ID_1888091666" MODIFIED="1366029452631" TEXT="Item 2: Prefer consts, enums, and inlines to #defines">
<node CREATED="1365557284650" ID="ID_1865895013" MODIFIED="1365557426749" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      const char * const authorName = &quot;Scott Meyers&quot;;
    </p>
    <p>
      const string str = &quot;ssds&quot;;
    </p>
    <p>
      
    </p>
    <p>
      // static in class def or in file.
    </p>
    <p>
      // Easier to debug, goes into symbol table unlike defines
    </p>
    <p>
      static const double val = 1.635;
    </p>
    <p>
      
    </p>
    <p>
      // So no reference to NumTurns possible
    </p>
    <p>
      enum { NumTurms = 5 };
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1365557867973" ID="ID_342094625" MODIFIED="1365557893595" STYLE="fork" TEXT="void f1(const Widget *pw);         // f1 takes a pointer to a                                    // constant Widget object  void f2(Widget const *pw);         // so does f2 "/>
</node>
<node CREATED="1365557982005" FOLDED="true" ID="ID_524161576" MODIFIED="1366030258201" TEXT="Item 4: Make sure that objects are initialized before they&apos;re used">
<node CREATED="1366029880946" ID="ID_70730507" MODIFIED="1366030079500" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#1424f7">A better way to write the ABEntry constructor is to use the member initialization list instead of assignments: </font>
    </p>
    <p>
      
    </p>
    <p>
      ctor:ctor() :
    </p>
    <p>
      &#160;&#160;&#160;str(),
    </p>
    <p>
      &#160;&#160;&#160;str2(_b),
    </p>
    <p>
      &#160;&#160;&#160;int(0)
    </p>
    <p>
      {}
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1366030082105" ID="ID_1609801420" MODIFIED="1366030256212" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Avoid initialization order problems across translation units by replacing <b>non-local static objects</b>&#160;with<b>&#160;local static objects</b>.
    </p>
    <p>
      
    </p>
    <p>
      There is no way to know order rof init. of global static variables (non-local static objects - NLSB), one NLSB may rely on another. Wrap NLSB in function to make them <b>local static objects </b>LSB.
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Century Schoolbook L">class FileSystem { ... };&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// as before </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Century Schoolbook L">FileSystem&amp; tfs()&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// this replaces the tfs object; it could be </font>
    </p>
    <p>
      <font size="4" face="Century Schoolbook L">{&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// static in the FileSystem class </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Century Schoolbook L">&#160;&#160;static FileSystem fs;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// define and initialize a local static object </font>
    </p>
    <p>
      <font size="4" face="Century Schoolbook L">&#160;&#160;return fs;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// return a reference to it </font>
    </p>
    <p>
      <font size="4" face="Century Schoolbook L">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Century Schoolbook L">class Directory { ... };&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// as before </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Century Schoolbook L">Directory::Directory( params )&#160;&#160;&#160;&#160;&#160;&#160;// as before, except references to tfs are </font>
    </p>
    <p>
      <font size="4" face="Century Schoolbook L">{&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// now to tfs() </font>
    </p>
    <p>
      <font size="4" face="Century Schoolbook L">&#160;&#160;... </font>
    </p>
    <p>
      <font size="4" face="Century Schoolbook L">&#160;&#160;std::size_t disks = tfs().numDisks(); </font>
    </p>
    <p>
      <font size="4" face="Century Schoolbook L">&#160;&#160;... </font>
    </p>
    <p>
      <font size="4" face="Century Schoolbook L">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Century Schoolbook L">Directory&amp; tempDir()&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// this replaces the tempDir object; it </font>
    </p>
    <p>
      <font size="4" face="Century Schoolbook L">{&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// could be static in the Directory class </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Century Schoolbook L">&#160;&#160;static Directory td;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// define/initialize local static object </font>
    </p>
    <p>
      <font size="4" face="Century Schoolbook L">&#160;&#160;return td;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// return reference to it </font>
    </p>
    <p>
      <font size="4" face="Century Schoolbook L">}</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1366030285256" ID="ID_312347151" MODIFIED="1366030287235" TEXT="Item 1: View C++ as a federation of languages">
<node CREATED="1366030288617" ID="ID_912449881" MODIFIED="1366030323206" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ol>
      <li>
        C
      </li>
      <li>
        Object Oriented C++
      </li>
      <li>
        Template C++
      </li>
      <li>
        STL
      </li>
    </ol>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1365558320720" FOLDED="true" ID="ID_1726008729" MODIFIED="1366098571438">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Chapter2:
    </p>
    <p>
      Constructors, Destructors, and Assignment Operators
    </p>
  </body>
</html></richcontent>
<node CREATED="1365558323980" FOLDED="true" ID="ID_449931251" MODIFIED="1366094424794" TEXT="Item 5: Know what functions C++ silently writes and calls">
<node CREATED="1365558328339" ID="ID_1253933388" MODIFIED="1365558360741" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Compilers may implicitly generate a class's default constructor, copy constructor, copy assignment operator, and destructor.
    </p>
    <p>
      
    </p>
    <p>
      If it cannot, const attribute, it wont compile
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1366030356372" ID="ID_1094808385" MODIFIED="1366094419989" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      class Empty{};
    </p>
    <p>
      
    </p>
    <p>
      <u>it's essentially the same as if you'd written this:</u>
    </p>
    <p>
      
    </p>
    <p>
      class Empty {
    </p>
    <p>
      public:
    </p>
    <p>
      <b>&#160;&#160;Empty() { ... }&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// default constructor </b>
    </p>
    <p>
      <b>&#160;&#160;Empty(const Empty&amp; rhs) { ... }&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// copy constructor </b>
    </p>
    <p>
      
    </p>
    <p>
      <b>&#160;&#160;~Empty() { ... }&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// destructor &#8212; see below </b>
    </p>
    <p>
      <b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// for whether it's virtual </b>
    </p>
    <p>
      
    </p>
    <p>
      <b>&#160;&#160;Empty&amp; operator=(const Empty&amp; rhs) { ... } // copy assignment operator</b>
    </p>
    <p>
      };
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1366030371531" ID="ID_337502354" MODIFIED="1366030431273" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Empty e1;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// default constructor;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// destructor
    </p>
    <p>
      
    </p>
    <p>
      Empty e2(e1);&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// copy constructor
    </p>
    <p>
      
    </p>
    <p>
      Empty e3 = e1;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// copy constructor
    </p>
    <p>
      
    </p>
    <p>
      e2 = e1;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// copy assignment operator
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1365558514084" FOLDED="true" ID="ID_1706468198" MODIFIED="1366094435558" TEXT="Item 6: Explicitly disallow the use of compiler-generated functions you do not want - copy ctor and assignment op">
<node CREATED="1365558554932" ID="ID_956595869" MODIFIED="1366030471320" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      To disallow functionality automatically provided by compilers, declare the corresponding member <b>functions private and give no implementations</b>. Using a <b>base class like Uncopyable</b>&#160;is one way to do this.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1365558537215" ID="ID_1815056600" MODIFIED="1365558584649" TEXT="Item 7: Declare destructors virtual in polymorphic base classes"/>
<node CREATED="1365558667599" ID="ID_605165087" MODIFIED="1366030590558" TEXT="Item 8: Prevent exceptions from leaving destructors">
<node CREATED="1365558671090" ID="ID_922374361" MODIFIED="1366030511353" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Things to Remember
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        &#160;&#160;&#160;&#160;<b>Destructors should never emit exceptions.</b>&#160; If functions called in a destructor may throw, the destructor should catch any exceptions, then swallow them or terminate the program.
      </li>
      <li>
        &#160;&#160;&#160;&#160;If class clients need to be able to react to exceptions thrown during an operation, the <b>class should provide a regular (i.e., non-destructor) function</b>&#160;that performs the operation. eg. close()
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1365558795901" ID="ID_59303439" MODIFIED="1365558797732" TEXT="Item 9: Never call virtual functions during construction or destruction"/>
<node CREATED="1365558856838" ID="ID_725729584" MODIFIED="1365558857793" TEXT="Item 10: Have assignment operators return a reference to *this"/>
<node CREATED="1365558885793" ID="ID_1606772307" MODIFIED="1366030591884" TEXT="Item 11: Handle assignment to self in operator=">
<node CREATED="1365559067759" ID="ID_1323836597" MODIFIED="1365559082243" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Make sure operator= is well-behaved when an object is assigned to itself. Techniques include comparing addresses of source and target objects, careful statement ordering, and copy-and-swap.
    </p>
    <p>
      
    </p>
    <p>
      Make sure that any function operating on more than one object behaves correctly if two or more of the objects are the same.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1365559159854" ID="ID_7119559" MODIFIED="1366030540499" TEXT="Item 12: Copy all parts of an object">
<node CREATED="1365559162663" ID="ID_20833655" MODIFIED="1366030586215" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Only two functions copy objects: the aptly named copy constructor and copy assignment operator. We'll call these the <b>copying functions. </b>
    </p>
    <p>
      
    </p>
    <p>
      <b>Assignment operator must call parent's version first - copy all - then copy own attributes.</b>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1365559391243" FOLDED="true" ID="ID_770070191" MODIFIED="1366094449239" TEXT="Chapter3: Resource Management">
<node CREATED="1365559786991" FOLDED="true" ID="ID_426475793" MODIFIED="1365560174411" TEXT=" Item 13: Use objects to manage resources">
<node CREATED="1365559792705" ID="ID_1719279260" MODIFIED="1365559805075" STYLE="fork" TEXT="use unique_ptr and auto_ptr"/>
<node CREATED="1365559807215" ID="ID_1461572471" MODIFIED="1365559837513" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      void f()
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;Investment *pInv = createInvestment();&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// call factory function
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;...&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// use pInv
    </p>
    <p>
      &#160;&#160;// EXCEPTION HERE
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;delete pInv;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// release object
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1365559921900" FOLDED="true" ID="ID_176270832" MODIFIED="1365560175347" TEXT="Item 14: Think carefully about copying behavior in resource-managing classes">
<node CREATED="1365559924927" ID="ID_686458525" MODIFIED="1365559941664" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ol>
      <li>
        Copying an RAII object entails copying the resource it manages, so the copying behavior of the resource determines the copying behavior of the RAII object.
      </li>
      <li>
        Common RAII class copying behaviors are disallowing copying and performing reference counting, but other behaviors are possible.
      </li>
    </ol>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1365560138957" FOLDED="true" ID="ID_583926961" MODIFIED="1365560176243" TEXT="Item 15: Provide access to raw resources in resource-managing classes">
<node CREATED="1365560142371" ID="ID_1281134812" MODIFIED="1365560172297" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      APIs often require access to raw resources, so each RAII class should offer a way to get at the resource it manages.
    </p>
    <p>
      
    </p>
    <p>
      Access may be via explicit conversion or implicit conversion. In general, explicit conversion is safer, but implicit conversion is more convenient for clients.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1365560308064" FOLDED="true" ID="ID_1642769636" MODIFIED="1365560499253" TEXT="Item 16: Use the same form in corresponding uses of new and delete">
<node CREATED="1365560310107" ID="ID_61993474" MODIFIED="1365560320036" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      If you use [] in a new expression, you must use [] in the corresponding delete expression. If you don't use [] in a new expression, you mustn't use [] in the corresponding delete expression.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1365560459665" FOLDED="true" ID="ID_1752097318" MODIFIED="1365560498067" TEXT="Item 17: Store newed objects in smart pointers in standalone statements">
<node CREATED="1365560462243" ID="ID_1666292910" MODIFIED="1365560496560" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Store newed objects in smart pointers in standalone statements. Failure to do this can lead to subtle resource leaks when exceptions are thrown.
    </p>
    <p>
      
    </p>
    <p>
      <font color="#0820dc">std::tr1::shared_ptr&lt;Widget&gt; pw(new Widget);&#160;&#160;// store newed object </font>
    </p>
    <p>
      <font color="#0820dc">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// in a smart pointer in a </font>
    </p>
    <p>
      <font color="#0820dc">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// standalone statement </font>
    </p>
    <p>
      <font color="#0820dc">processWidget(pw, priority());&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// this call won't leak</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1365560625251" FOLDED="true" ID="ID_1780362600" MODIFIED="1366098570078" TEXT="Chapter4:">
<node CREATED="1365566222473" ID="ID_1547506156" MODIFIED="1366094711506" TEXT="Item 18: Make interfaces easy to use correctly and hard to use incorrectly">
<node CREATED="1365566224397" ID="ID_1538659022" MODIFIED="1366094964408" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Good interfaces are easy to use correctly and hard to use incorrectly. Your should strive for these characteristics in all your interfaces.
    </p>
    <p>
      
    </p>
    <p>
      Ways to facilitate correct use include consistency in<b>&#160;interfaces and behavioral compatibility with built-in types: </b>
    </p>
    <p>
      <font face="Times New Roman" color="#0000cc">// Use structs or class </font>
    </p>
    <p>
      <font face="Times New Roman" color="#0000cc">Date date(Day(28), Month(2), Year(2013); </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Times New Roman" color="#0000cc">Class Month { </font>
    </p>
    <p>
      <font face="Times New Roman" color="#0000cc">public: </font>
    </p>
    <p>
      <font face="Times New Roman" color="#0000cc">&#160;&#160;&#160;&#160;static Month jan() { return Month(1); } </font>
    </p>
    <p>
      <font face="Times New Roman" color="#0000cc">&#160;&#160;&#160;&#160;static Month feb() { return Month(2); } </font>
    </p>
    <p>
      <font face="Times New Roman" color="#0000cc">&#160;&#160;&#160;&#160;... </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Times New Roman" color="#0000cc">private: </font>
    </p>
    <p>
      <font face="Times New Roman" color="#0000cc">&#160;&#160;&#160;&#160;explicit Month(int); //Hidden </font>
    </p>
    <p>
      <font face="Times New Roman" color="#0000cc">};</font><b><font color="#0000cc">&#160;</font> </b>
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      <b>Ways to prevent errors include <u>creating new types</u>, restricting operations on types, constraining object values, and eliminating client resource management responsibilities.</b>
    </p>
    <p>
      
    </p>
    <p>
      tr1::shared_ptr supports custom deleters. This prevents the cross-DLL problem, can be used to automatically unlock mutexes (see Item 14), etc.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1365566326258" ID="ID_173307956" MODIFIED="1365566327836" TEXT="Item 19: Treat class design as type design">
<node CREATED="1365566330359" FOLDED="true" ID="ID_717616751" MODIFIED="1366095226596">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Class design is type design. Before defining a new type, be sure to consider all the issues discussed in this Item.</b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1365566379117" ID="ID_1203692665" MODIFIED="1365566385030" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;How should objects of your new type be created and destroyed? How this is done influences the design of your class's constructors and destructor, as well as its memory allocation and deallocation functions (operator new, operator new[], operator delete, and operator delete[] &#8212; see Chapter 8), if you write them.
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;How should object initialization differ from object assignment? The answer to this question determines the behavior of and the differences between your constructors and your assignment operators. It's important not to confuse initialization with assignment, because they correspond to different function calls (see Item 4).
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;What does it mean for objects of your new type to be passed by value? Remember, the copy constructor defines how pass-by-value is implemented for a type.
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;What are the restrictions on legal values for your new type? Usually, only some combinations of values for a class's data members are valid. Those combinations determine the invariants your class will have to maintain. The invariants determine the error checking you'll have to do inside your member functions, especially your constructors, assignment operators, and &#8220;setter&#8221; functions. It may also affect the exceptions your functions throw and, on the off chance you use them, your functions' exception specifications.
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;Does your new type fit into an inheritance graph? If you inherit from existing classes, you are constrained by the design of those classes, particularly by whether their functions are virtual or non-virtual (see Items 34 and 36). If you wish to allow other classes to inherit from your class, that affects whether the functions you declare are virtual, especially your destructor (see Item 7).
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;What kind of type conversions are allowed for your new type? Your type exists in a sea of other types, so should there be conversions between your type and other types? If you wish to allow objects of type T1 to be implicitly converted into objects of type T2, you will want to write either a type conversion function in class T1 (e.g., operator T2) or a non-explicit constructor in class T2 that can be called with a single argument. If you wish to allow explicit conversions only, you'll want to write functions to perform the conversions, but you'll need to avoid making them type conversion operators or non-explicit constructors that can be called with one argument. (For an example of both implicit and explicit conversion functions, see Item 15.)
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;What operators and functions make sense for the new type? The answer to this question determines which functions you'll declare for your class. Some functions will be member functions, but some will not (see Items 23, 24, and 46).
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;What standard functions should be disallowed? Those are the ones you'll need to declare private (see Item 6).
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;Who should have access to the members of your new type? This question helps you determine which members are public, which are protected, and which are private. It also helps you determine which classes and/or functions should be friends, as well as whether it makes sense to nest one class inside another.
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;What is the &#8220;undeclared interface&#8221; of your new type? What kind of guarantees does it offer with respect to performance, exception safety (see Item 29), and resource usage (e.g., locks and dynamic memory)? The guarantees you offer in these areas will impose constraints on your class implementation.
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;How general is your new type? Perhaps you're not really defining a new type. Perhaps you're defining a whole family of types. If so, you don't want to define a new class, you want to define a new class template.
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;Is a new type really what you need? If you're defining a new derived class only so you can add functionality to an existing class, perhaps you'd better achieve your goals by simply defining one or more non-member functions or templates.
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#3b8de7" CREATED="1365566530701" FOLDED="true" ID="ID_1793483233" MODIFIED="1366096074621" TEXT="Item 20: Prefer pass-by-reference-to-const to pass-by-value">
<node CREATED="1365566533972" ID="ID_1749857093" MODIFIED="1366095221104" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        Prefer pass-by-reference-to-const over pass-by-value. It's typically more efficient and it avoids the slicing problem.
      </li>
      <li>
        The rule doesn't apply to built-in types and STL iterator and function object types. For them, pass-by-value is usually appropriate.
      </li>
    </ul>
    <p>
      Pass-by-value drawback: if a function expects arent object and a derived passed. Information of the derived is sliced to be parent -<b>&#160;slicing problem</b>.
    </p>
    <p>
      
    </p>
    <p>
      <font face="Times New Roman">class Window {...}; </font>
    </p>
    <p>
      <font face="Times New Roman">class WindowScrollable : public Window { ... }; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Times New Roman">// Passing WindowScrollable instance here - slicing problem </font>
    </p>
    <p>
      <font face="Times New Roman">void printNameAndDisplay(Window w) { ...}</font>
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1365566595804" FOLDED="true" ID="ID_607920662" MODIFIED="1365566618757" TEXT="Item 21: Don&apos;t try to return a reference when you must return an object">
<node CREATED="1365566612995" ID="ID_1706709015" MODIFIED="1365566617079" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Never return a pointer or reference to a local stack object, a reference to a heap-allocated object, or a pointer or reference to a local static object if there is a chance that more than one such object will be needed. (Item 4 provides an example of a design where returning a reference to a local static is reasonable, at least in single-threaded environments.)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1365566661149" ID="ID_631397688" MODIFIED="1365566674346" TEXT="Item 22: Declare data members private">
<node CREATED="1365566675707" ID="ID_1719693992" MODIFIED="1365566700403" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        Declare data members <b>private</b>. It gives clients syntactically uniform access to data, affords fine-grained access control, allows invariants to be enforced, and offers class authors implementation flexibility.
      </li>
      <li>
        <b>protected</b>&#160;is no more encapsulated than public.
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1365566892406" FOLDED="true" ID="ID_349223928" MODIFIED="1366096024710">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Item 23: Prefer non-member non-friend functions to member functions
    </p>
    <p>
      Oddball?
    </p>
  </body>
</html></richcontent>
<node CREATED="1366095758096" ID="ID_1359445157" MODIFIED="1366096018798" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Example:
    </p>
    <p>
      <font face="Times New Roman">class WebBrowser { </font>
    </p>
    <p>
      <font face="Times New Roman">public: </font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;&#160;void clearCache(); </font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;&#160;void clearHistory(); </font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;&#160;void removeCookies(); </font>
    </p>
    <p>
      <font face="Times New Roman">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Times New Roman">// Use non-friend non member function </font>
    </p>
    <p>
      <font face="Times New Roman">namespace WebBrowserStuff { //convenience function </font>
    </p>
    <p>
      <b><font face="Times New Roman">&#160;&#160;&#160;// Because clearBrowser() has no access to private data, only other three member functions does </font></b>
    </p>
    <p>
      <font face="Times New Roman"><b>&#160;&#160;&#160;//&#160;&#160;It is better for encapsulation</b></font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;&#160;void clearBrowser(WebBrowser&amp; w) { </font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;&#160;&#160;&#160;&#160;&#160;w.clearCache(); </font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;&#160;&#160;&#160;&#160;&#160;w.clearHistory(); </font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;&#160;&#160;&#160;&#160;&#160;w.clearCookies(): </font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font face="Times New Roman">};</font>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#3b8de7" CREATED="1365567024555" FOLDED="true" ID="ID_227550289" MODIFIED="1366096076689" STYLE="bubble" TEXT="Item 24: Declare non-member functions when type conversions should apply to all parameters">
<node CREATED="1365567026744" ID="ID_301294074" MODIFIED="1365567106366" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      It turns out that parameters are eligible for implicit type conversion only if they are listed in the parameter list. The implicit parameter corresponding to the object on which the member function is invoked &#8212; the one this points to &#8212; is never eligible for implicit conversions.
    </p>
    <p>
      
    </p>
    <p>
      This works:
    </p>
    <p>
      const Rational operator*(const Rational&amp; lhs,&#160;&#160;&#160;&#160;&#160;// now a non-member
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;const Rational&amp; rhs)&#160;&#160;&#160;&#160;&#160;// function
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        If you need type conversions on all parameters to a function (including the one pointed to by the this pointer), the function must be a non-member.
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1365567290734" FOLDED="true" ID="ID_1255552110" MODIFIED="1366096461583" TEXT="Item 25: Consider support for a non-throwing swap">
<node CREATED="1365567297962" ID="ID_1437078632" MODIFIED="1366096457805" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        &#160;&#160;&#160;&#160;Provide a swap member function when std::swap would be <b>inefficient</b>&#160;for your type. Make sure your swap doesn't throw exceptions. <u>STL swap does three copies, could be 3 deep copies when a custom swap can be used to only swap the heap object/s pointered inside.</u>
      </li>
      <li>
        &#160;&#160;&#160;&#160;If you offer a member swap, also offer a non-member swap that calls the member. For classes (not templates), specialize std::swap, too.
      </li>
      <li>
        &#160;&#160;&#160;&#160;When calling swap, employ a using declaration for std::swap, then call swap without namespace qualification.
      </li>
      <li>
        &#160;&#160;&#160;&#160;It's fine to totally specialize std templates for user-defined types, but never try to add something completely new to std. Template specialisation eg.
      </li>
    </ul>
    <p>
      // OK to specialise for STL
    </p>
    <p>
      <font face="Times New Roman">namespace std { </font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;&#160;template&lt;&gt; void swap&lt;Widget&gt;(Widget&amp; a, Widget&amp; b) { </font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;&#160;&#160;&#160;&#160;a.swap(b); // Custom implementation. </font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font face="Times New Roman">}</font>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1365560632445" FOLDED="true" ID="ID_1108748214" MODIFIED="1366096469966" TEXT="Chapter 5. Implementations">
<node CREATED="1365560638100" FOLDED="true" ID="ID_1963625729" MODIFIED="1365562504412" TEXT="Item 26: Postpone variable definitions as long as possible.">
<node CREATED="1365562086518" ID="ID_910735287" MODIFIED="1365562101522" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Postpone variable definitions as long as possible. It increases program clarity and improves program efficiency.
    </p>
    <p>
      
    </p>
    <p>
      Simple.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1365562384482" FOLDED="true" ID="ID_757905425" MODIFIED="1365562502492" TEXT="Item 27: Minimize casting.">
<node CREATED="1365562409326" ID="ID_1025069872" MODIFIED="1365562416981" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Avoid casts whenever practical, especially dynamic_casts in performance-sensitive code. If a design requires casting, try to develop a cast-free alternative.
    </p>
    <p>
      
    </p>
    <p>
      When casting is necessary, try to hide it inside a function. Clients can then call the function instead of putting casts in their own code.
    </p>
    <p>
      
    </p>
    <p>
      Prefer C++-style casts to old-style casts. They are easier to see, and they are more specific about what they do.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1365562480658" FOLDED="true" ID="ID_1922444723" MODIFIED="1365562503412" TEXT="Item 28: Avoid returning &#x201c;handles&#x201d; to object internals.">
<node CREATED="1365562484866" ID="ID_691959602" MODIFIED="1365562499201" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Avoid returning handles (references, pointers, or iterators) to object internals. It increases encapsulation, helps const member functions act const, and minimizes the creation of dangling handles.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1365562588571" FOLDED="true" ID="ID_24192546" MODIFIED="1365562727028" TEXT="Item 29: Strive for exception-safe code.">
<node CREATED="1365562591638" ID="ID_902734736" MODIFIED="1365562708983" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      When an exception is thrown, exception-safe functions:
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;Leak no resources. The code above fails this test, because if the &#8220;new Image(imgSrc)&#8221; expression yields an exception, the call to unlock never gets executed, and the mutex is held forever.
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;Don't allow data structures to become corrupted. If &#8220;new Image(imgSrc)&#8221; throws, bgImage is left pointing to a deleted object. In addition, imageChanges has been incremented, even though it's not true that a new image has been installed. (On the other hand, the old image has definitely been eliminated, so I suppose you could argue that the image has been &#8220;changed.&#8221;)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1365562712213" ID="ID_23310767" MODIFIED="1365562725548" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Exception-safe functions leak no resources and allow no data structures to become corrupted, even when exceptions are thrown. Such functions offer the basic, strong, or nothrow guarantees.
    </p>
    <p>
      
    </p>
    <p>
      The strong guarantee can often be implemented via copy-and-swap, but the strong guarantee is not practical for all functions.
    </p>
    <p>
      
    </p>
    <p>
      A function can usually offer a guarantee no stronger than the weakest guarantee of the functions it calls.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1365562921803" FOLDED="true" ID="ID_605744969" MODIFIED="1365563843109">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Item 30: Understand the ins and outs of inlining.
    </p>
    <p>
      Implicit and explicit (inline)
    </p>
  </body>
</html></richcontent>
<node CREATED="1365562937844" ID="ID_261823106" MODIFIED="1365562995223" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Templates are not 'inlined', only when explicitly:
    </p>
    <p>
      <font color="#1e11e1">template&lt;typename T&gt;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// an explicit inline </font>
    </p>
    <p>
      <font color="#1e11e1">inline const T&amp; std::max(const T&amp; a, const T&amp; b)&#160;&#160;&#160;// request: std::max is </font>
    </p>
    <p>
      <font color="#1e11e1">{ return a &lt; b ? b : a; }&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// preceded by &quot;inline&quot;</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1365563197665" ID="ID_716687610" MODIFIED="1365563229686" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Limit most inlining to small, frequently called functions. This facilitates debugging and binary upgradability, minimizes potential code bloat, and maximizes the chances of greater program speed.
    </p>
    <p>
      
    </p>
    <p>
      Don't declare function templates inline just because they appear in header files.
    </p>
    <p>
      
    </p>
    <p>
      Try not to inline ctor and dtor in inheritance hierarchy
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#d8a2a2" CREATED="1365563527303" FOLDED="true" ID="ID_19310918" MODIFIED="1365563846229" TEXT="Item 31: Minimize compilation dependencies between files">
<node CREATED="1365563540118" ID="ID_119440361" MODIFIED="1365563544983" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The general idea behind minimizing compilation dependencies is to depend on declarations instead of definitions. Two approaches based on this idea are Handle classes and Interface classes.
    </p>
    <p>
      
    </p>
    <p>
      Library header files should exist in full and declaration-only forms. This applies regardless of whether templates are involved.
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1365563638477" ID="ID_1173273819" MODIFIED="1366096470716" TEXT="Chapter 6. Inheritance and Object-Oriented Design">
<node CREATED="1365563744249" FOLDED="true" ID="ID_1114157010" MODIFIED="1366097093886" TEXT="Item 32: Make sure public inheritance models &#x201c;is-a.&#x201d;">
<node CREATED="1365563748505" ID="ID_1488503421" MODIFIED="1365563766288" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      If you write that class D (&#8220;Derived&#8221;) publicly inherits from class B (&#8220;Base&#8221;), you are telling C++ compilers (as well as human readers of your code) that every object of type D is also an object of type B, but not vice versa. You are saying that B represents a more general concept than D, that D represents a more specialized concept than B. You are asserting that anywhere an object of type B can be used, an object of type D can be used just as well, because every object of type D is an object of type B. On the other hand, if you need an object of type D, an object of type B will not do: every D is-a B, but not vice versa.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1365563862788" ID="ID_728190398" MODIFIED="1365563868448" STYLE="fork" TEXT="Within the realm of C++, any function that expects an argument of type Person (or pointer-to-Person or reference-to-Person) will also take a Student object (or pointer-to-Student or reference-to-Student):"/>
<node CREATED="1365564104163" ID="ID_1303322426" MODIFIED="1366097059438" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Public inheritance means &#8220;is-a.&#8221; Everything that applies to base classes must also apply to derived classes, because every derived class object is a base class object.</b>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#d8a2a2" CREATED="1365564455380" FOLDED="true" ID="ID_1574035193" MODIFIED="1366098566903" TEXT=" Item 33: Avoid hiding inherited names">
<node CREATED="1365564464530" ID="ID_428063309" MODIFIED="1366098521316" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        Names in derived classes hide names in base classes. Under public inheritance, this is never desirable.
      </li>
      <li>
        To make hidden names visible again, employ <font color="#060bd6">using </font>declarations or forwarding functions.
      </li>
    </ul>
    <p>
      
    </p>
    <p>
      All names in local scope will hide global scope.
    </p>
    <p>
      
    </p>
    <p>
      <font face="Times New Roman">int x; //global </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Times New Roman">void someFunc() { </font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;&#160;&#160;double x; // local var </font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;&#160;&#160;// local hiding global </font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;&#160;&#160;std::cin &gt;&gt; x; <b>// read in new value for local x</b>&#160;</font>
    </p>
    <p>
      <font face="Times New Roman">} </font>
    </p>
    <p>
      
    </p>
    <p>
      Rules:
    </p>
    <ol>
      <li>
        Derived class is current scope, after searching for a 'name' here it will search base scope.
      </li>
      <li>
        This is for any name, regardless of attribute or function params.
      </li>
      <li>
        Regardless of virtual or non virtual.
      </li>
    </ol>
    <p>
      
    </p>
    <p>
      <font face="Times New Roman">class Base { </font>
    </p>
    <p>
      <font face="Times New Roman">public: </font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;&#160;virtual void mf1() = 0; </font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;&#160;virtual void mf1(int); </font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;&#160;void mf3(); </font>
    </p>
    <p>
      <font face="Times New Roman">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Times New Roman">&#160;class Derived : public Base { </font>
    </p>
    <p>
      <font face="Times New Roman">public: </font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;&#160;virtual void mf1(); <b>// This hides both mf1() s of Base's</b>&#160;</font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;&#160;void mf3(); </font>
    </p>
    <p>
      <font face="Times New Roman">} </font>
    </p>
    <p>
      <font face="Times New Roman"><br face="Times New Roman" />
      Derived d; </font>
    </p>
    <p>
      <font face="Times New Roman">d.mf1()&#160;&#160;//Calls Derived::mf1() </font>
    </p>
    <p>
      <font face="Times New Roman">d.mf1(4);&#160;<b>&#160;// error, hidden by mf1 name in Dereived</b>&#160;</font>
    </p>
    <p>
      <font face="Times New Roman">d.mf3();&#160;&#160;// Calls Derived::mf3</font>
    </p>
    <p>
      
    </p>
    <p>
      <b>Solution:</b>
    </p>
    <p>
      // Always need to inherit names from parent
    </p>
    <p>
      <font face="Times New Roman">class Derived : public Base { </font>
    </p>
    <p>
      <font face="Times New Roman">public: </font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;using Base::mf1; // make mf1 functions visible </font>
    </p>
    <p>
      <font face="Times New Roman">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Times New Roman">Derived d; </font>
    </p>
    <p>
      <font face="Times New Roman">d.mf1()&#160;&#160;//Calls Derived::mf1() </font>
    </p>
    <p>
      <font face="Times New Roman">d.mf1(4);&#160;<b>&#160;//Now OK calls Base::mf1(int)</b></font>
    </p>
    <p>
      <font face="Times New Roman">d.mf3();&#160;&#160;// Calls Derived::mf3</font>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#d8a2a2" CREATED="1365564871849" ID="ID_318473513" MODIFIED="1366098252631" TEXT="Item 34: Differentiate between inheritance of interface and inheritance of implementation">
<node CREATED="1365564881740" FOLDED="true" ID="ID_1274959639" MODIFIED="1366099569240" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Inheritance of interface is different from inheritance of implementation. Under public inheritance, derived classes always inherit base class interfaces.
    </p>
    <p>
      
    </p>
    <p>
      Pure virtual functions specify inheritance of interface only.
    </p>
    <p>
      
    </p>
    <p>
      Simple (impure) virtual functions specify inheritance of interface plus inheritance of a default implementation.
    </p>
    <p>
      
    </p>
    <p>
      Non-virtual functions specify inheritance of interface plus inheritance of a mandatory implementation.
    </p>
  </body>
</html></richcontent>
<node CREATED="1366099014778" ID="ID_1384906058" MODIFIED="1366099441282" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Use <b>pure virtual </b>when needed, however when default implementation is needed: <b>pure virtual funtion can also provide default implemenation</b>.
    </p>
    <p>
      Using only virtual non-pure for fly, programmer may leave out flt() impl. in ModelC leading to error.
    </p>
    <p>
      
    </p>
    <p>
      <font face="Times New Roman">class Airplane { </font>
    </p>
    <p>
      <font face="Times New Roman">public: </font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;&#160;&#160;virtual void fly(const Airport&amp; dest) = 0; </font>
    </p>
    <p>
      <font face="Times New Roman">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Times New Roman">void Airplane::fly(const Airport&amp; dest) </font>
    </p>
    <p>
      <font face="Times New Roman">{ </font>
    </p>
    <p>
      <font face="Times New Roman">&#160; <b>&#160;// Default implmentation, only accessable via Airplane::fly()</b> </font>
    </p>
    <p>
      <font face="Times New Roman">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Times New Roman">class ModelA : public Airplane { </font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;&#160;&#160;virtual void fly(const Airplane&amp; dest) { Airplane::fly(); }&#160;&#160;// Just calls default implementation </font>
    </p>
    <p>
      <font face="Times New Roman">}; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Times New Roman">class ModelC : public Airplane { </font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;&#160;&#160;virtual void fly(const Airplane&amp; dest) {&#160;&#160;// Programmer must think about it, function must be implamented </font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b>// Provide totally dif. implementation from default</b> </font>
    </p>
    <p>
      <font face="Times New Roman">&#160;&#160;&#160;&#160;&#160;} </font>
    </p>
    <p>
      <font face="Times New Roman">}; </font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1366099392316" ID="ID_855392656" MODIFIED="1366099567797">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Method two is also use pure virtual&#160;&#160;function, but provide default impl. in a separate protected non-virtual function defaultFly().
    </p>
    <p>
      
    </p>
    <p>
      <font face="Times New Roman" color="#000000">class Airplane { </font>
    </p>
    <p>
      <font face="Times New Roman" color="#000000">public: </font>
    </p>
    <p>
      <font face="Times New Roman" color="#000000">&#160;&#160;&#160;&#160;virtual void fly(const Airport&amp; dest) = 0; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font face="Times New Roman" color="#000000">protected: </font>
    </p>
    <p>
      <font face="Times New Roman" color="#000000">&#160;&#160;&#160; <b>// No Derived should re-implement inherited non virtual function - Item 36 - is-a relationship </b></font>
    </p>
    <p>
      <b><font face="Times New Roman" color="#000000">&#160;&#160;&#160;&#160;void defaultFly(const Airplane&amp; dest); // Model A calls it, Model C does not</font></b>
    </p>
    <p>
      <font face="Times New Roman" color="#000000">}; </font>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#d8a2a2" CREATED="1365565210348" ID="ID_1013157509" MODIFIED="1366098539195" TEXT="Item 35: Consider alternatives to virtual functions">
<node CREATED="1365565222982" ID="ID_1781937550" MODIFIED="1366100632330" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ol>
      <li>
        &#160;&#160;&#160;&#160;Use the<b>&#160;non-virtual interface idiom (NVI idiom)</b>, a form of the Template Method design pattern that wraps public non-virtual member functions around less accessible virtual functions. <u>Still uses virtual function, just private virtual function.</u>
      </li>
      <li>
        &#160;&#160;&#160;&#160;Replace virtual functions with<b>&#160;function pointer data members</b>, a stripped-down manifestation of the Strategy design pattern.<b>&#160;C style strip down.</b>
      </li>
      <li>
        &#160;&#160;&#160;&#160;Replace virtual functions with <b>tr1::function</b>&#160;&#160;data members, thus allowing use of any callable entity with a signature compatible with what you need. This, too, is a form of the Strategy design pattern. <u>Almost the same as 2. but tr1:function can take anything with the same function signature: function pointer, function object, or member function. tr1::function also supports when implicit conversion is used for return type and param/s.</u>
      </li>
      <li>
        &#160;&#160;&#160;&#160;Replace virtual functions in one hierarchy with virtual functions in another hierarchy. This is the conventional implementation of the <b>Strategy design pattern</b>. Good old design pattern with vitual function.
      </li>
    </ol>
    <p>
      
    </p>
    <p>
      Soln 2-4 move calculation out of class, so a bit problematic if the calc function need to access private member variables.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1365565512648" ID="ID_1586244132" MODIFIED="1365565513362" TEXT="Item 36: Never redefine an inherited non-virtual function"/>
<node BACKGROUND_COLOR="#9999ff" CREATED="1365565554622" ID="ID_1928666136" MODIFIED="1366099594704" TEXT="Item 37: Never redefine a function&apos;s inherited default parameter value">
<node CREATED="1365565556852" ID="ID_93919777" MODIFIED="1365565627284" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      That being the case, the justification for this Item becomes quite straightforward: virtual functions are dynamically bound, but default parameter values are statically bound.
    </p>
    <p>
      
    </p>
    <p>
      That means you may end up invoking a virtual function defined in a derived class but using a default parameter value from a base class
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1365565734977" ID="ID_1714384140" MODIFIED="1365565735712" TEXT="Item 38: Model &#x201c;has-a&#x201d; or &#x201c;is-implemented-in-terms-of&#x201d; through composition">
<node CREATED="1365565750732" ID="ID_1603832698" MODIFIED="1365565761432" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        Composition has meanings completely different from that of public inheritance.
      </li>
      <li>
        In the application domain, composition means has-a. In the implementation domain, it means is-implemented-in-terms-of.
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1365565882687" FOLDED="true" ID="ID_1884630877" MODIFIED="1365565922724" TEXT="Item 39: Use private inheritance judiciously">
<node CREATED="1365565909798" ID="ID_171381733" MODIFIED="1365565920816" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Use composition if can.
    </p>
    <p>
      
    </p>
    <p>
      Well, the first rule governing private inheritance you've just seen in action: in contrast to public inheritance, compilers will generally not convert a derived class object (such as Student) into a base class object (such as Person) if the inheritance relationship between the classes is private. That's why the call to eat fails for the object s. The second rule is that members inherited from a private base class become private members of the derived class, even if they were protected or public in the base class.
    </p>
    <p>
      
    </p>
    <p>
      So much for behavior. That brings us to meaning. Private inheritance means is-implemented-in-terms-of. If you make a class D privately inherit from a class B, you do so because you are interested in taking advantage of some of the features available in class B, not because there is any conceptual relationship between objects of types B and D. As such, private inheritance is purely an implementation technique.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1365566049583" ID="ID_1401415010" MODIFIED="1365566050679" TEXT="Item 40: Use multiple inheritance judiciously">
<node CREATED="1365566061349" ID="ID_1092332210" MODIFIED="1365566063527" STYLE="fork" TEXT="Multiple inheritance is more complex than single inheritance. It can lead to new ambiguity issues and to the need for virtual inheritance.  Virtual inheritance imposes costs in size, speed, and complexity of initialization and assignment. It&apos;s most practical when virtual base classes have no data.  Multiple inheritance does have legitimate uses. One scenario involves combining public inheritance from an Interface class with private inheritance from a class that helps with implementation."/>
</node>
</node>
</node>
</node>
</map>
