<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1365557248443" ID="ID_925052849" MODIFIED="1365557257537" TEXT="C++">
<node CREATED="1365557260468" ID="ID_1904400884" MODIFIED="1366163285684" POSITION="right" STYLE="bubble" TEXT="Effective C++">
<node CREATED="1365557501485" ID="ID_813119986" MODIFIED="1366200215983" TEXT="Chapter 1">
<node CREATED="1365557508343" FOLDED="true" ID="ID_1439393594" MODIFIED="1366203277634" TEXT="Item 3: Use const whenever possible">
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
<node CREATED="1365557271997" FOLDED="true" ID="ID_1888091666" MODIFIED="1366203180218" TEXT="Item 2: Prefer consts, enums, and inlines to #defines">
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
<node CREATED="1366162760198" ID="ID_1785900001" MODIFIED="1366162855394" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>class static member must be init outside the class def. unless </b>
    </p>
    <p>
      <b>they are<u>&#160;const or integral</u>.</b>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1365557982005" FOLDED="true" ID="ID_524161576" MODIFIED="1366203476162" TEXT="Item 4: Make sure that objects are initialized before they&apos;re used">
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
<node CREATED="1366030285256" FOLDED="true" ID="ID_312347151" MODIFIED="1366203081922" TEXT="Item 1: View C++ as a federation of languages">
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
<node CREATED="1365558320720" FOLDED="true" ID="ID_1726008729" MODIFIED="1366528883036">
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
<node CREATED="1365558323980" FOLDED="true" ID="ID_449931251" MODIFIED="1366203695202" TEXT="Item 5: Know what functions C++ silently writes and calls">
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
</html></richcontent>
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
<node CREATED="1365558514084" ID="ID_1706468198" MODIFIED="1366203701308" TEXT="Item 6: Explicitly disallow the use of compiler-generated functions you do not want - copy ctor and assignment op">
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
<node CREATED="1365558667599" FOLDED="true" ID="ID_605165087" MODIFIED="1366204138634" TEXT="Item 8: Prevent exceptions from leaving destructors">
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
<node CREATED="1365558885793" FOLDED="true" ID="ID_1606772307" MODIFIED="1366162745819" TEXT="Item 11: Handle assignment to self in operator=">
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
<node CREATED="1365559159854" ID="ID_7119559" MODIFIED="1366205796938" TEXT="Item 12: Copy all parts of an object">
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
<node CREATED="1365559391243" FOLDED="true" ID="ID_770070191" MODIFIED="1366528895115" TEXT="Chapter3: Resource Management">
<node CREATED="1365559786991" FOLDED="true" ID="ID_426475793" MODIFIED="1366528892785" TEXT=" Item 13: Use objects to manage resources">
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
<node CREATED="1365559921900" ID="ID_176270832" MODIFIED="1366206083785" TEXT="Item 14: Think carefully about copying behavior in resource-managing classes">
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
<node CREATED="1365560625251" ID="ID_1780362600" MODIFIED="1366163287429" TEXT="Chapter4:">
<node CREATED="1365566222473" FOLDED="true" ID="ID_1547506156" MODIFIED="1366162745848" TEXT="Item 18: Make interfaces easy to use correctly and hard to use incorrectly">
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
</html></richcontent>
</node>
</node>
<node CREATED="1365566326258" FOLDED="true" ID="ID_173307956" MODIFIED="1366162745848" TEXT="Item 19: Treat class design as type design">
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
</html></richcontent>
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
<node CREATED="1365566661149" FOLDED="true" ID="ID_631397688" MODIFIED="1366162745848" TEXT="Item 22: Declare data members private">
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
</html></richcontent>
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
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1365560632445" FOLDED="true" ID="ID_1108748214" MODIFIED="1366163282774" TEXT="Chapter 5. Implementations">
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
<node CREATED="1365563638477" FOLDED="true" ID="ID_1173273819" MODIFIED="1366163282775" TEXT="Chapter 6. Inheritance and Object-Oriented Design">
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
</html></richcontent>
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
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#d8a2a2" CREATED="1365564871849" FOLDED="true" ID="ID_318473513" MODIFIED="1366162745850" TEXT="Item 34: Differentiate between inheritance of interface and inheritance of implementation">
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
</html></richcontent>
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
</html></richcontent>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#d8a2a2" CREATED="1365565210348" FOLDED="true" ID="ID_1013157509" MODIFIED="1366162745850" TEXT="Item 35: Consider alternatives to virtual functions">
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
</html></richcontent>
</node>
</node>
<node CREATED="1365565512648" ID="ID_1586244132" MODIFIED="1365565513362" TEXT="Item 36: Never redefine an inherited non-virtual function"/>
<node BACKGROUND_COLOR="#9999ff" CREATED="1365565554622" FOLDED="true" ID="ID_1928666136" MODIFIED="1366162745850" TEXT="Item 37: Never redefine a function&apos;s inherited default parameter value">
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
<node CREATED="1365565734977" FOLDED="true" ID="ID_1714384140" MODIFIED="1366162745851" TEXT="Item 38: Model &#x201c;has-a&#x201d; or &#x201c;is-implemented-in-terms-of&#x201d; through composition">
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
<node CREATED="1365565882687" FOLDED="true" ID="ID_1884630877" MODIFIED="1366162745853" TEXT="Item 39: Use private inheritance judiciously">
<node CREATED="1366161529106" FOLDED="true" ID="ID_109217051" MODIFIED="1366162446002" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ol>
      <li>
        <font color="#0033ff">Compiler will not convert Derived to Base in private inheritance: eg. someFunc(Base base) will be an error. </font>
      </li>
      <li>
        <font color="#0033ff">All inherited members (public or protected even) becomes private in the child:<b>&#160;is-implemented-in-term-of</b>. </font>
      </li>
      <li>
        <font color="#0033ff">Composition in is always a preffered alternative, only when you need to redefined a base class's virtual function will private inheritance useful (again composition of Derived class is of use here).</font>
      </li>
    </ol>
  </body>
</html></richcontent>
<node CREATED="1365565909798" ID="ID_171381733" MODIFIED="1366162443675" STYLE="fork">
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
</node>
<node CREATED="1365566049583" FOLDED="true" ID="ID_1401415010" MODIFIED="1366162745853" TEXT="Item 40: Use multiple inheritance judiciously">
<node CREATED="1366161934720" FOLDED="true" ID="ID_993763257" MODIFIED="1366162445234" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      <b>Default</b>&#160;is derived class have <b>replicated data</b>&#160;from the Bases if namespace clashes.
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Times New Roman">eg. </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">// Where both bases have checkOut() function </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">class MP3Player : public LibraryItem, <b>private</b>&#160;ElectronicGadget { </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">} </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">MP3Player mp; </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">mp.BorrowableItem.checkOut(); <b>//qualify with base class name here</b></font>
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      <b>Diamond of Death/Deadly MI diamond</b>
    </p>
    <ol>
      <li>
        Use virtual base class -<b>&#160;virtual inheritance</b>, complex and costly. No replication of data, do not include any data in virtual base class eg. as an Interface.
      </li>
    </ol>
    <p>
      <font size="4" face="Times New Roman">// Where File is the virtual base class </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">class InputFile: virtual public File {} </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">class OutputFile: virtual public File {} </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">class IOFile: public InputFile, public OutputFile {}</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1365566061349" ID="ID_1092332210" MODIFIED="1366162430195" STYLE="fork" TEXT="Multiple inheritance is more complex than single inheritance. It can lead to new ambiguity issues and to the need for virtual inheritance.  Virtual inheritance imposes costs in size, speed, and complexity of initialization and assignment. It&apos;s most practical when virtual base classes have no data.  Multiple inheritance does have legitimate uses. One scenario involves combining public inheritance from an Interface class with private inheritance from a class that helps with implementation."/>
</node>
</node>
</node>
</node>
<node CREATED="1367413238719" ID="ID_1411444984" MODIFIED="1367413244732" POSITION="left" STYLE="bubble" TEXT="STL">
<node CREATED="1367413248080" ID="ID_72990046" MODIFIED="1367413253921" TEXT="c++11">
<node CREATED="1367413257401" FOLDED="true" ID="ID_934820599" MODIFIED="1367464949729" TEXT="bind">
<node BACKGROUND_COLOR="#f7eafd" CREATED="1367413264339" ID="ID_68574411" MODIFIED="1367461315624" STYLE="fork" TEXT="The binder can also be called directly. For example,  std::cout &lt;&lt; std::bind(std::plus&lt;int&gt;(),_1,10)(32) &lt;&lt; std::endl;&#xa;&#xa;//plus&lt;int&gt;() takes two params: param 1 + param2&#xa;// hence 32 here is param1, 10 is param2"/>
<node BACKGROUND_COLOR="#1f76d8" CREATED="1367413536552" FOLDED="true" ID="ID_1792019145" MODIFIED="1367461318918" TEXT="find_if">
<node CREATED="1367413552039" ID="ID_457953673" MODIFIED="1367413594552" STYLE="fork" TEXT="In the same way, you can define a binder that represents a sorting criterion. For example, to find the first element that is greater than 42, you bind greater&lt;&gt; with the passed argument as first and 42 as second operator: &#xa;&#xa;&#xa; // find first element &gt;42&#xa0;&#xa0;- find_if &#xa; auto pos = std::find_if (coll.begin(),coll.end(), &#xa;&#xa; &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;std::bind(std::greater&lt;int&gt;(),_1,42))"/>
</node>
<node BACKGROUND_COLOR="#1f76d8" CREATED="1367413613515" FOLDED="true" ID="ID_1130269400" MODIFIED="1367413670571" TEXT="transform">
<node CREATED="1367413334102" ID="ID_1938534610" MODIFIED="1367413344829" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      if you pass this function object to an algorithm, the algorithm can apply it to every element the algorithms operates with. For example:
    </p>
    <p>
      
    </p>
    <p>
      // add 10 to each element
    </p>
    <p>
      std::transform (coll.begin(), coll.end(),&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// source
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;coll.begin(),&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// destination
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;std::bind(std::plus&lt;int&gt;(),_1,10)); // operation
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1367413649443" ID="ID_802019214" MODIFIED="1367413767792" STYLE="fork" TEXT="Note that you always have to specify the argument type of the predefined function object used. If the type doesn&#x2019;t match, a type conversion is forced, or the expression results in a compile-time error.&#xa;"/>
<node CREATED="1367413732556" FOLDED="true" ID="ID_1311989050" MODIFIED="1367413773032" TEXT="nesting binds">
<node CREATED="1367413740515" ID="ID_442232" MODIFIED="1367413748835" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      bind(multiplies&lt;int&gt;(),&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// (param1+10)*2
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;bind(plus&lt;int&gt;(),_1,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;10),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2);
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#1f76d8" CREATED="1367413971889" FOLDED="true" ID="ID_1308161731" MODIFIED="1367461293436" TEXT="search">
<node CREATED="1367413979073" FOLDED="true" ID="ID_1995249634" MODIFIED="1367414085480">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      //with <b>char myToupper (char c);</b>
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;string s(&quot;Internationalization&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;string sub(&quot;Nation&quot;);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;// search substring case insensitive
    </p>
    <p>
      &#160;&#160;&#160;&#160;string::iterator pos;
    </p>
    <p>
      &#160;&#160;&#160;&#160;pos = search (s.begin(),s.end(),&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// string to search in
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;sub.begin(),sub.end(),&#160;&#160;&#160;&#160;&#160;// substring to search
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;bind(equal_to&lt;char&gt;(),&#160;&#160;&#160;&#160;&#160;// compar. criterion
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;bind(myToupper,_1),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;bind(myToupper,_2)));
    </p>
    <p>
      &#160;&#160;&#160;&#160;if (pos != s.end()) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;cout &lt;&lt; &quot;\&quot;&quot; &lt;&lt; sub &lt;&lt; &quot;\&quot; is part of \&quot;&quot; &lt;&lt; s &lt;&lt; &quot;\&quot;&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;&lt; endl;
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1367414053735" ID="ID_1951306065" MODIFIED="1367414075720" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Here, we use the search() algorithm to check whether sub is a substring in s, when case sensitivity doesn&#8217;t matter. With
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Times New Roman">bind(equal_to&lt;char&gt;(), </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160;&#160;&#160;&#160;bind(myToupper,_1), </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160;&#160;&#160;&#160;bind(myToupper,_2)));</font>
    </p>
    <p>
      
    </p>
    <p>
      we create a function object calling:
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Times New Roman">myToupper(param1)==myToupper(param2)</font>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1367414139480" ID="ID_1785257540" MODIFIED="1367414144351" STYLE="fork" TEXT="http://www.cplusplus.com/reference/algorithm/search/?kw=search"/>
</node>
<node BACKGROUND_COLOR="#d81f2b" CREATED="1367414253062" FOLDED="true" ID="ID_613830370" MODIFIED="1367461303326" STYLE="bubble" TEXT="References in bind">
<node CREATED="1367414277514" ID="ID_439935271" MODIFIED="1367414361828" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="SansSerif">Note that bind() internally copies passed arguments.</font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Times New Roman">void incr (int&amp; i) </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">{ </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160;&#160;&#160;++i; </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">} </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Times New Roman">int i=0; </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">bind(incr,i)();&#160;&#160;&#160;&#160;&#160;&#160;&#160;// increments a copy of i, no effect for i </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">bind(incr,ref(i))();&#160;&#160;// increments i</font>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1367414415748" ID="ID_944722693" MODIFIED="1367414424390" TEXT="Calling member function">
<node BACKGROUND_COLOR="#6a2bec" CREATED="1367414425734" ID="ID_1674882853" MODIFIED="1367416568058" TEXT="TBC"/>
</node>
<node BACKGROUND_COLOR="#6834e9" CREATED="1367416517220" ID="ID_226915804" MODIFIED="1367416558546" TEXT="mem_fn"/>
</node>
<node CREATED="1367461324206" FOLDED="true" ID="ID_1619286332" MODIFIED="1367464948240" TEXT="Lamda">
<node CREATED="1367461329362" ID="ID_1564449556" MODIFIED="1367461346151" STYLE="fork" TEXT="Can replace bind"/>
<node CREATED="1367461427750" ID="ID_191567391" MODIFIED="1367461794357">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Syntax:</b>
    </p>
    <p>
      auto var = [] (params) { ... };
    </p>
    <p>
      
    </p>
    <p>
      It can call anything inside {}: global functions or
    </p>
    <p>
      member function of an object
    </p>
    <p>
      
    </p>
    <p>
      params can of course be by reference
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1367461511503" ID="ID_1347651117" MODIFIED="1367461582215" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font size="4" face="Times New Roman">Examples - function object&#160;replace:</font></b>
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160; </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160;auto plus10 = [] (int i) { </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return i+10; </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}; </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160;&#160;&#160;std::cout &lt;&lt; &quot;+10:&#160;&#160;&#160;&#160;&quot; &lt;&lt; plus10(7) &lt;&lt; std::endl; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160;&#160;&#160;auto plus10times2 = [] (int i) { </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return (i+10)*2; </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}; </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160;&#160;&#160;std::cout &lt;&lt; &quot;+10 *2: &quot; &lt;&lt; plus10times2(7) &lt;&lt; std::endl; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160;&#160;&#160;auto pow3 = [] (int i) { </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return i*i*i; </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}; </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160;&#160;&#160;std::cout &lt;&lt; &quot;x*x*x:&#160;&#160;&quot; &lt;&lt; pow3(7) &lt;&lt; std::endl; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160;&#160;&#160;auto inversDivide = [] (double d1, double d2) { </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return d2/d1; </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}; </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160;&#160;&#160;std::cout &lt;&lt; &quot;invdiv: &quot; &lt;&lt; inversDivide(49,7) &lt;&lt; std::endl;</font>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1367461630304" ID="ID_31435808" MODIFIED="1367463162321" TEXT="Can be stateful">
<node CREATED="1367461636848" ID="ID_269466029" MODIFIED="1367461651977" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      //Like function objects
    </p>
    <p>
      #include &lt;iostream&gt;
    </p>
    <p>
      #include &lt;vector&gt;
    </p>
    <p>
      #include &lt;algorithm&gt;
    </p>
    <p>
      using namespace std;
    </p>
    <p>
      
    </p>
    <p>
      int main()
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;vector&lt;int&gt; coll = { 1, 2, 3, 4, 5, 6, 7, 8 };
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;// process and print mean value
    </p>
    <p>
      &#160;&#160;&#160;long sum = 0;
    </p>
    <p>
      &#160;&#160;&#160;for_each (coll.begin(), coll.end(),&#160;&#160;&#160;&#160;// range
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;[&amp;sum] (int elem) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;sum += elem;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;});
    </p>
    <p>
      &#160;&#160;&#160;double mv = static_cast&lt;double&gt;(sum)/static_cast&lt;double&gt;(coll.size());
    </p>
    <p>
      &#160;&#160;&#160;cout &lt;&lt; &quot;mean value: &quot; &lt;&lt; mv &lt;&lt; endl;
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1367461810446" FOLDED="true" ID="ID_793741825" MODIFIED="1367461944271" TEXT="param by reference">
<node CREATED="1367461826512" ID="ID_1683880711" MODIFIED="1367461834626" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      int count=0;&#160;&#160;&#160;&#160;&#160;// call counter
    </p>
    <p>
      pos = remove_if(coll.begin(),coll.end(),&#160;&#160;// range
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;[&amp;count] (int) {&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// remove criterion
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return ++count == 3;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;});
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#d52222" CREATED="1367461885246" FOLDED="true" ID="ID_1199329490" MODIFIED="1367461933599" TEXT="search">
<node CREATED="1367461899860" ID="ID_431267033" MODIFIED="1367461931044" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      #include &lt;iostream&gt;
    </p>
    <p>
      #include &lt;algorithm&gt;
    </p>
    <p>
      #include &lt;locale&gt;
    </p>
    <p>
      #include &lt;string&gt;
    </p>
    <p>
      using namespace std;
    </p>
    <p>
      
    </p>
    <p>
      char myToupper (char c)
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;std::locale loc;
    </p>
    <p>
      &#160;&#160;&#160;&#160;return std::use_facet&lt;std::ctype&lt;char&gt; &gt;(loc).toupper(c);
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      int main()
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;string s(&quot;Internationalization&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;string sub(&quot;Nation&quot;);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;// search substring case insensitive
    </p>
    <p>
      &#160;&#160;&#160;&#160;string::iterator pos;
    </p>
    <p>
      &#160;&#160;&#160;&#160;pos = search (s.begin(),s.end(),&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// string to search in
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;sub.begin(),sub.end(),&#160;&#160;&#160;&#160;&#160;&#160;&#160;// substring to search
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;[] (char c1, char c2) {&#160;&#160;&#160;&#160;&#160;&#160;// compar. criterion
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return myToupper(c1)==myToupper(c2);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;});
    </p>
    <p>
      &#160;&#160;&#160;&#160;if (pos != s.end()) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;cout &lt;&lt; &quot;\&quot;&quot; &lt;&lt; sub &lt;&lt; &quot;\&quot; is part of \&quot;&quot; &lt;&lt; s &lt;&lt; &quot;\&quot;&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;&lt; endl;
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1367461982101" ID="ID_1625452026" MODIFIED="1367463099764" TEXT="Lamda as hash function and function object">
<node CREATED="1367462006395" ID="ID_1665064702" MODIFIED="1367462056856" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      class Person {
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      };
    </p>
    <p>
      // As a hash function definition
    </p>
    <p>
      auto hash = [] (const Person&amp; p) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      };
    </p>
    <p>
      //As an equivalence function object
    </p>
    <p>
      auto eq = [] (const Person&amp; p1, Person&amp; p2) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      };
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1367464952008" ID="ID_681533056" MODIFIED="1367464956981" TEXT="algorithm">
<node CREATED="1367464960475" ID="ID_38644524" MODIFIED="1367464966618" TEXT="modifying algo">
<node CREATED="1367464968267" FOLDED="true" ID="ID_1192185049" MODIFIED="1367465203823" TEXT="for_each">
<node CREATED="1367464976770" ID="ID_541835006" MODIFIED="1367465201794" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#8226; for_each() accepts an operation that modifies its argument. Thus, the argument has to be passed by reference. For example:
    </p>
    <p>
      
    </p>
    <p>
      void square (int&amp; elem)&#160;&#160;&#160;// call-by-reference
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;elem = elem * elem;&#160;&#160;&#160;// assign processed value directly
    </p>
    <p>
      }
    </p>
    <p>
      ...
    </p>
    <p>
      for_each(coll.begin(),coll.end(),&#160;&#160;&#160;&#160;// range
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;square);&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// operation
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1367465206593" FOLDED="true" ID="ID_669744883" MODIFIED="1367465310559" TEXT="transform">
<node CREATED="1367465211406" ID="ID_388327427" MODIFIED="1367465308965" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#8226; transform() uses an operation that returns the modified argument. The trick is that it can be used to assign the result to the original element. For example:
    </p>
    <p>
      
    </p>
    <p>
      int square (int elem)&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// call-by-value
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;return elem * elem;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// return processed value
    </p>
    <p>
      }
    </p>
    <p>
      ...
    </p>
    <p>
      transform (coll.cbegin(), coll.cend(),&#160;&#160;// source range
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;coll.begin(),&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// destination range
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;square);&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// operation
    </p>
    <p>
      
    </p>
    <p>
      Using transform() is a bit slower because it returns and assigns the result instead of modifying the element directly. However, it is more flexible because it can also be used to modify elements while they are being copied into a different destination sequence. Another version of transform() can process and combine elements of two source ranges.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1367465453226" ID="ID_1476133932" MODIFIED="1367465458048" TEXT="removing algo">
<node CREATED="1367465459808" ID="ID_1187722425" MODIFIED="1367465506331">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      remove()
    </p>
    <p>
      remove_if()
    </p>
    <p>
      remove_copy()
    </p>
    <p>
      remove_copy_if()
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1367465508344" ID="ID_201965750" MODIFIED="1367465513467">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      unique()
    </p>
    <p>
      unique_copy()
    </p>
  </body>
</html>
</richcontent>
</node>
<node BACKGROUND_COLOR="#226fd5" CREATED="1367465515436" FOLDED="true" ID="ID_1283752243" MODIFIED="1367466178895" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Remove algo do not remove!
    </p>
    <p>
      Then return the position of the new 'end',
    </p>
    <p>
      it's up to the caller to remove.
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1367465983272" ID="ID_793561338" MODIFIED="1367466176875" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>// Elements are moved, removed elements are then past the new 'end' </b>
    </p>
    <p>
      <b>// and all existing elements moved forward before the new 'end'</b>
    </p>
    <p>
      #include &lt;algorithm&gt;
    </p>
    <p>
      #include &lt;iterator&gt;
    </p>
    <p>
      #include &lt;list&gt;
    </p>
    <p>
      #include &lt;iostream&gt;
    </p>
    <p>
      using namespace std;
    </p>
    <p>
      
    </p>
    <p>
      int main()
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;list&lt;int&gt; coll;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;// insert elements from 6 to 1 and 1 to 6
    </p>
    <p>
      &#160;&#160;&#160;&#160;for (int i=1; i&lt;=6; ++i) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;coll.push_front(i);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;coll.push_back(i);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;// print all elements of the collection
    </p>
    <p>
      &#160;&#160;&#160;&#160;copy (coll.cbegin(), coll.cend(),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;ostream_iterator&lt;int&gt;(cout,&quot; &quot;));
    </p>
    <p>
      &#160;&#160;&#160;&#160;cout &lt;&lt; endl;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;// remove all elements with value 3
    </p>
    <p>
      &#160;&#160;&#160;&#160;// - retain new end
    </p>
    <p>
      &#160;&#160;&#160;&#160;list&lt;int&gt;::iterator end = remove (coll.begin(), coll.end(),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;// print resulting elements of the collection
    </p>
    <p>
      &#160;&#160;&#160;&#160;copy (coll.begin(), end,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;ostream_iterator&lt;int&gt;(cout,&quot; &quot;));
    </p>
    <p>
      &#160;&#160;&#160;&#160;cout &lt;&lt; endl;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;// print number of removed elements
    </p>
    <p>
      &#160;&#160;&#160;&#160;cout &lt;&lt; &quot;number of removed elements: &quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;&lt; distance(end,coll.end()) &lt;&lt; endl;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;// remove ''removed'' elements
    </p>
    <p>
      &#160;&#160;&#160;&#160;coll.erase (end, coll.end());
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;// print all elements of the modified collection
    </p>
    <p>
      &#160;&#160;&#160;&#160;copy (coll.cbegin(), coll.cend(),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;ostream_iterator&lt;int&gt;(cout,&quot; &quot;));
    </p>
    <p>
      &#160;&#160;&#160;&#160;cout &lt;&lt; endl;
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1367466143753" ID="ID_1109856184" MODIFIED="1367466155891">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Removing in one line
    </p>
  </body>
</html></richcontent>
<node CREATED="1367466164492" ID="ID_229100029" MODIFIED="1367466174588" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      If you really want to remove elements in one statement, you can call the following statement:
    </p>
    <p>
      
    </p>
    <p>
      coll.erase (remove(coll.begin(),coll.end(),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;coll.end());
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1367466866618" ID="ID_320706299" MODIFIED="1367466875222" TEXT="mutating algo">
<node CREATED="1367466880608" ID="ID_576735140" MODIFIED="1367466982478">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      reverse()
    </p>
    <p>
      reverse_copy()
    </p>
    <p>
      rotate()
    </p>
    <p>
      rotate_copy()
    </p>
    <p>
      ...
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1367468267858" ID="ID_794127418" MODIFIED="1367468312235" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      string str = &quot;abcdef&quot;;
    </p>
    <p>
      string empty = &quot;aaaaaa&quot;;
    </p>
    <p>
      
    </p>
    <p>
      reverse(str.begin(), str.end());
    </p>
    <p>
      cout &lt;&lt; str &lt;&lt; endl;
    </p>
    <p>
      
    </p>
    <p>
      reverse_copy(str.begin(), str.end(), empty.begin());
    </p>
    <p>
      cout &lt;&lt; &quot;copied: &quot; &lt;&lt; empty &lt;&lt; endl;
    </p>
    <p>
      
    </p>
    <p>
      //Outputs:
    </p>
    <p>
      //fedcba
    </p>
    <p>
      //copied: abcdef
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1367468317259" ID="ID_1376548596" MODIFIED="1367468322579" TEXT="sortting algo">
<node CREATED="1367468324089" ID="ID_1488526197" MODIFIED="1367468516800">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      sort() - quicksort based
    </p>
    <p>
      stable_sort() -&#160;&#160;merge sort, high memory
    </p>
    <p>
      partial_sort() //sort first few elements
    </p>
    <p>
      partital_sort_copy()
    </p>
    <p>
      
    </p>
    <p>
      make_heap()&#160;&#160;// convert range into a heap
    </p>
    <p>
      push_heap()
    </p>
    <p>
      pop_heap()
    </p>
    <p>
      sort_heap() // no longer a heap after the call
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1367468519429" ID="ID_193909161" MODIFIED="1367468522429" TEXT="checking algo">
<node CREATED="1367468523852" ID="ID_1002342834" MODIFIED="1367468690851">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      is_sorted() // c++11
    </p>
    <p>
      is_sorted_until() // c++11 returns first unsorted element
    </p>
    <p>
      is_heap() // returns whether&#160;&#160;elements in range are heap sorted
    </p>
    <p>
      is_heap_until()
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1367468692943" ID="ID_93430695" MODIFIED="1367468698548" TEXT="sorted-range algo">
<node CREATED="1367468699846" ID="ID_208544594" MODIFIED="1367469084028">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      binary_search()
    </p>
    <p>
      includes()
    </p>
    <p>
      lower_bound()
    </p>
    <p>
      upper_bound()
    </p>
    <p>
      equal_range()
    </p>
    <p>
      set_union()
    </p>
    <p>
      inplace_merge()
    </p>
    <p>
      partition_point()
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1367468934765" ID="ID_585886503" MODIFIED="1367469265536" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      partition_point()
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1367469266770" ID="ID_1454172704" MODIFIED="1367469271989" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      divides
    </p>
    <p>
      &#160;&#160;&#160;&#160;a range based on fulfilling
    </p>
    <p>
      &#160;&#160;&#160;&#160;and not fulfilling a predicate
    </p>
    <p>
      
    </p>
    <p>
      elements must be already sorted, eg partition()'ed
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1367468945485" ID="ID_1332877350" MODIFIED="1367468952774" TEXT="inplace_merge()">
<node CREATED="1367469237597" ID="ID_1794678905" MODIFIED="1367469249202" STYLE="fork" TEXT="ideal for merge sort"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1367416065439" ID="ID_888018937" MODIFIED="1367416071406" TEXT="c++98">
<node CREATED="1367416072788" FOLDED="true" ID="ID_481464040" MODIFIED="1367466181295" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      bind1st &amp; bind2nd
    </p>
    <p>
      
    </p>
    <p>
      Construct unary function from a binary function: bind1st bind 1st argument of binary, bind2nd binds second argument.
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1367416247067" ID="ID_425248" MODIFIED="1367416324051" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="4" face="Times New Roman">// bind1st example </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">#include &lt;iostream&gt; </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">#include &lt;functional&gt; </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">#include &lt;algorithm&gt; </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">using namespace std; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="4" face="Times New Roman">int main () { </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160;int numbers[] = {10,20,30,40,50,10}; </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160;int cx; </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160;cx = count_if (numbers, numbers+6, bind1st(equal_to&lt;int&gt;(),10) ); </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160;cout &lt;&lt; &quot;There are &quot; &lt;&lt; cx &lt;&lt; &quot; elements that are equal to 10.\n&quot;; </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">&#160;&#160;return 0; </font>
    </p>
    <p>
      <font size="4" face="Times New Roman">}</font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1367416326562" ID="ID_536660512" MODIFIED="1367416355894" STYLE="fork">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      // The function bind1st
    </p>
    <p>
      template &lt;class Operation, class T&gt;
    </p>
    <p>
      &#160;&#160;binder1st&lt;Operation&gt; bind1st (const Operation&amp; op, const T&amp; x)
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;return binder1st&lt;Operation&gt;(op, typename Operation::first_argument_type(x));
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
</map>
