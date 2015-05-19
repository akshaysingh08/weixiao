<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1431563822998" ID="ID_1825471418" MODIFIED="1431651853621" TEXT="zookeeper">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1431564253999" FOLDED="true" ID="ID_1098404943" MODIFIED="1431998780255" POSITION="right" TEXT="&#x52bf; - Challenges: common distributed coordination tasks">
<node CREATED="1431564278271" ID="ID_423362975" MODIFIED="1431564286411" TEXT="configuration management"/>
<node CREATED="1431564286913" ID="ID_945558149" MODIFIED="1431564293109" TEXT="naming service">
<node CREATED="1431564349078" ID="ID_1016961318" MODIFIED="1431564357859" TEXT="service discovery"/>
</node>
<node CREATED="1431564293747" ID="ID_1864667491" MODIFIED="1431564311325" TEXT="distributed sysnchronization, such as locks and barries"/>
<node CREATED="1431564311556" ID="ID_328307147" MODIFIED="1431564340339" TEXT="cluster membership operations,such as detection of node join or leave"/>
<node CREATED="1431654965022" ID="ID_230758381" MODIFIED="1431654988576" TEXT="leader selection (&#x4e3b;&#x4ece;&#x5207;&#x6362;)"/>
<node CREATED="1431564384772" ID="ID_1340077734" MODIFIED="1431564404207" TEXT="ensure high availability">
<node CREATED="1431564410928" ID="ID_709469639" MODIFIED="1431564420262" TEXT="fault tolerance"/>
</node>
</node>
<node CREATED="1431564199298" ID="ID_1656371843" MODIFIED="1431651314735" POSITION="right" TEXT="&#x6cd5; - what is it?">
<node CREATED="1431998685301" FOLDED="true" ID="ID_1521145929" MODIFIED="1431998778855" TEXT="concept">
<node CREATED="1431998711733" FOLDED="true" ID="ID_1128358001" MODIFIED="1431998777702" TEXT="feature">
<node CREATED="1431564214745" ID="ID_140202377" MODIFIED="1431564232485" TEXT="centralized coordination service"/>
<node CREATED="1431649779950" ID="ID_1034349679" MODIFIED="1431649795672" TEXT="highly available service"/>
</node>
<node CREATED="1431649913667" FOLDED="true" ID="ID_1255173300" MODIFIED="1431998634304" TEXT="illustration diagram">
<node CREATED="1431649874591" ID="ID_1721792802" MODIFIED="1431649893782">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="zkservice.jpg" />
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1431564239275" FOLDED="true" ID="ID_720709713" MODIFIED="1431999562902" TEXT="zookeeper ensemble">
<node CREATED="1431572101448" FOLDED="true" ID="ID_1885958200" MODIFIED="1431999537277" TEXT="quorum">
<node CREATED="1431572076559" ID="ID_317506402" MODIFIED="1431572128151" TEXT="zookeeper instances are working in a leader / follower format"/>
<node CREATED="1431564711188" ID="ID_1524835182" MODIFIED="1431564738666" TEXT="minimum recommended size - 3 on seperate machines"/>
<node CREATED="1431572065962" ID="ID_919985996" MODIFIED="1431572075656" TEXT="better to have 5"/>
</node>
<node CREATED="1431572897276" FOLDED="true" ID="ID_248158298" MODIFIED="1431999137580" TEXT="multiple node modes - operations">
<node CREATED="1431572941831" ID="ID_1331613526" MODIFIED="1431998351898" TEXT="single machine version">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1431572950790" ID="ID_315083402" MODIFIED="1431573495862" TEXT="1) create three different configuration files under conf folder of ${ZK_HOME} - &#xa;zoo1.cfg, zoo2.cfg and zoo3.cfg">
<node CREATED="1431573086615" ID="ID_447601910" MODIFIED="1431573160718" TEXT="tickTime=2000 &#xa;initLimit=5 &#xa;syncLimit=2 &#xa;dataDir=/home/hawk/Documents/tmp/zookeeper/zoo1 &#xa;clientPort=2181 &#xa;server.1=localhost:2666:3666 &#xa;server.2=localhost:2667:3667 &#xa;server.3=localhost:2668:3668"/>
<node CREATED="1431573086615" ID="ID_532944272" MODIFIED="1431573193332" TEXT="tickTime=2000 &#xa;initLimit=5 &#xa;syncLimit=2 &#xa;dataDir=/home/hawk/Documents/tmp/zookeeper/zoo2 &#xa;clientPort=2182 &#xa;server.1=localhost:2666:3666 &#xa;server.2=localhost:2667:3667 &#xa;server.3=localhost:2668:3668"/>
<node CREATED="1431573086615" ID="ID_629637335" MODIFIED="1431573201798" TEXT="tickTime=2000 &#xa;initLimit=5 &#xa;syncLimit=2 &#xa;dataDir=/home/hawk/Documents/tmp/zookeeper/zoo3 &#xa;clientPort=2183 &#xa;server.1=localhost:2666:3666 &#xa;server.2=localhost:2667:3667 &#xa;server.3=localhost:2668:3668"/>
</node>
<node CREATED="1431573245224" ID="ID_454034606" MODIFIED="1431573480928" TEXT="2) fix the server ID parameter correctly in the myid file for each instance">
<node CREATED="1431573263502" ID="ID_722843563" MODIFIED="1431573315855">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      echo 1 &gt; /home/hawk/Documents/tmp/zookeeper/zoo1/myid
    </p>
    <p>
      echo 2 &gt; /home/hawk/Documents/tmp/zookeeper/zoo2/myid
    </p>
    <p>
      echo 3 &gt; /home/hawk/Documents/tmp/zookeeper/zoo3/myid
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1431573438021" ID="ID_783373308" MODIFIED="1431573485843" TEXT="3) start the ZooKeeper instances">
<node CREATED="1431573713039" ID="ID_1757473843" MODIFIED="1431573716643" TEXT="${ZK_HOME}/bin/zkServer.sh start ${ZK_HOME}/conf/zoo1.cfg"/>
<node CREATED="1431573718075" ID="ID_1750960411" MODIFIED="1431573729497" TEXT="${ZK_HOME}/bin/zkServer.sh start ${ZK_HOME}/conf/zoo2.cfg"/>
<node CREATED="1431573719833" ID="ID_113452857" MODIFIED="1431573731959" TEXT="${ZK_HOME}/bin/zkServer.sh start ${ZK_HOME}/conf/zoo3.cfg"/>
</node>
<node CREATED="1431573461461" ID="ID_178669946" MODIFIED="1431573490205" TEXT="4) connect to the multinode ZooKeeper cluster">
<node CREATED="1431577716522" ID="ID_733977114" MODIFIED="1431577863281" TEXT="zkCli.sh -server localhost:2181,localhost:2182,localhost:2183"/>
</node>
</node>
</node>
<node CREATED="1431999540239" FOLDED="true" ID="ID_1532433674" MODIFIED="1431999562206" TEXT="node type">
<node CREATED="1431999549571" ID="ID_1748244711" MODIFIED="1431999551596" TEXT="leader"/>
<node CREATED="1431999551864" ID="ID_855964271" MODIFIED="1431999554970" TEXT="follower"/>
<node CREATED="1431999555245" ID="ID_604825519" MODIFIED="1431999558360" TEXT="observor"/>
</node>
</node>
<node CREATED="1431650971114" FOLDED="true" ID="ID_98105926" MODIFIED="1431998761939" TEXT="znode">
<node CREATED="1431650979942" FOLDED="true" ID="ID_84614006" MODIFIED="1431998758678" TEXT="types">
<node CREATED="1431650988473" ID="ID_1940344293" MODIFIED="1431650999549" TEXT="persistent">
<node CREATED="1431651038118" ID="ID_1278980032" MODIFIED="1431651057323" TEXT="create /hawktest &quot;good&quot;"/>
<node CREATED="1431651057886" ID="ID_1412509457" MODIFIED="1431651519017" TEXT="can have children, including ephemeral child node">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1431651063938" ID="ID_165498440" MODIFIED="1431651082562" TEXT="alive until delete by client"/>
</node>
<node CREATED="1431650999864" ID="ID_254041982" MODIFIED="1431651007774" TEXT="ephemeral">
<node CREATED="1431651086600" ID="ID_41376860" MODIFIED="1431651096492" TEXT="create -e /hawktest &quot;good&quot;"/>
<node CREATED="1431651097028" ID="ID_387604929" MODIFIED="1431651103656" TEXT="can not have children"/>
<node CREATED="1431651104147" ID="ID_188044366" MODIFIED="1431651129604" TEXT="die when client dispear or deleted by client"/>
</node>
<node CREATED="1431651708511" ID="ID_346074562" MODIFIED="1431651714108" TEXT="squential">
<node CREATED="1431651716990" ID="ID_689640973" MODIFIED="1431651735280" TEXT="A sequential znode is assigned a sequence number by ZooKeeper as a part of its name during its creation"/>
<node CREATED="1431651736677" ID="ID_1207353668" MODIFIED="1431651738052" TEXT="The value of a monotonously increasing counter (maintained by the parent znode) is appended to the name of the znode"/>
<node CREATED="1431651778393" ID="ID_879545046" MODIFIED="1431651786376" TEXT="The counter used to store the sequence number is a signed integer (4 bytes). It has a format of 10 digits with 0 (zero) padding. For example, look at /path/to/ znode-0000000001"/>
<node CREATED="1431651812022" ID="ID_1316804862" MODIFIED="1431651813919" TEXT="usage">
<node CREATED="1431651816776" ID="ID_1170277938" MODIFIED="1431651818999" TEXT="Sequential znodes can be used for the implementation of a distributed global queue, as sequence numbers can impose a global ordering."/>
<node CREATED="1431651839309" ID="ID_298348778" MODIFIED="1431651840420" TEXT="They may also be used to design a lock service for a distributed application."/>
</node>
</node>
<node CREATED="1431651008444" ID="ID_595168698" MODIFIED="1431651015828" TEXT="persistent_sequential">
<node CREATED="1431651875420" ID="ID_1850480228" MODIFIED="1431651876509" TEXT="create -s /[PacktPub] &quot;PersistentSequentialZnode&quot;"/>
</node>
<node CREATED="1431651016275" ID="ID_649772300" MODIFIED="1431651027659" TEXT="ephemeral_sequential">
<node CREATED="1431651888054" ID="ID_494484559" MODIFIED="1431651888955" TEXT="create -s -e /[PacktPub] &quot;EphemeralSequentialZnode&quot;"/>
</node>
</node>
<node CREATED="1431656176603" FOLDED="true" ID="ID_541124476" MODIFIED="1431998761245" TEXT="stat structure">
<node CREATED="1431656228617" ID="ID_1230717453" MODIFIED="1431656351025" TEXT="use get /nodename or stat /nodename or ls2 /nodename, you will see them"/>
</node>
</node>
<node CREATED="1431652734131" FOLDED="true" ID="ID_1849881306" MODIFIED="1431998748944" TEXT="watches">
<node CREATED="1431652826056" ID="ID_1667831559" MODIFIED="1431652826739" TEXT="A common design anti-pattern associated while accessing such services by clients is through polling or a pull kind of model."/>
<node CREATED="1431654566503" FOLDED="true" ID="ID_717884087" MODIFIED="1431656390077" TEXT="what it is?">
<node CREATED="1431652744863" ID="ID_725766929" MODIFIED="1431652750206" TEXT="one-time trigger">
<node CREATED="1431652787550" ID="ID_38945414" MODIFIED="1431652789857" TEXT="To continue receiving notifications over time, the client must reregister the watch upon receiving each event notification"/>
</node>
<node CREATED="1431652855476" FOLDED="true" ID="ID_544065265" MODIFIED="1431653065342" TEXT="for the following three changes to a znode">
<node CREATED="1431652866753" ID="ID_1521244163" MODIFIED="1431652879410" TEXT="1.&#x9; Any changes to the data of a znode, such as when new data is written to the znode&apos;s data field using the setData operation. &#xa;&#xa;2.&#x9; Any changes to the children of a znode. For instance, children of a znode are deleted with the delete operation. &#xa;&#xa;3.&#x9; A znode being created or deleted, which could happen in the event that a new znode is added to a path or an existing one is deleted."/>
</node>
<node CREATED="1431652892720" FOLDED="true" ID="ID_218080605" MODIFIED="1431653069539" TEXT="ZooKeeper guarantees">
<node CREATED="1431652919437" ID="ID_1271964933" MODIFIED="1431652920161" TEXT="ZooKeeper ensures that watches are always ordered in the first in first out (FIFO) manner and that notifications are always dispatched in order"/>
<node CREATED="1431652920386" ID="ID_1120331417" MODIFIED="1431652928425" TEXT="Watch notifications are delivered to a client before any other change is made to the same znode"/>
<node CREATED="1431652936384" ID="ID_1788836241" MODIFIED="1431652937890" TEXT="The order of the watch events are ordered with respect to the updates seen by the ZooKeeper service"/>
</node>
<node CREATED="1431653002212" ID="ID_954616386" MODIFIED="1431653006424" TEXT="notes">
<node CREATED="1431653009744" ID="ID_1141651405" MODIFIED="1431653050570" TEXT="there is one possible scenario worth mentioning where a watch might be missed by a client">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node CREATED="1431653023413" ID="ID_498547507" MODIFIED="1431653024687" TEXT="This specific scenario is when a client has set a watch for the existence of a znode that has not yet been created. In this case, a watch event will be missed if the znode is created, and deleted while the client is in the disconnected state."/>
</node>
</node>
<node CREATED="1431654582558" ID="ID_1317706025" MODIFIED="1431654601572" TEXT="what is in watch event?">
<node CREATED="1431654608451" ID="ID_1588692801" MODIFIED="1431654615219" TEXT="event type"/>
<node CREATED="1431654615543" ID="ID_1375317662" MODIFIED="1431654627035" TEXT="znode path"/>
</node>
</node>
<node CREATED="1431656074764" FOLDED="true" ID="ID_1933824547" MODIFIED="1431999153574" TEXT="ACL - access control lists">
<node CREATED="1431656097526" ID="ID_1609765887" MODIFIED="1431656117766" TEXT="An ACL is the combination of &#xa;1) an authentication mechanism, &#xa;2) an identity for that mechanism, and &#xa;3) a set of permissions."/>
</node>
<node CREATED="1431999160251" ID="ID_1829186396" MODIFIED="1431999181748" TEXT="zookeeper transaction processing">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1431999185822" FOLDED="true" ID="ID_1345218132" MODIFIED="1431999439611" TEXT="Read request">
<node CREATED="1431999340626" ID="ID_1725672615" MODIFIED="1431999341444" TEXT="read requests such as exists , getData , and getChildren are processed locally by the ZooKeeper server where the client is connected."/>
<node CREATED="1431999352919" ID="ID_5582084" MODIFIED="1431999354319" TEXT="This makes the read operations very fast in ZooKeeper."/>
</node>
<node CREATED="1431999210050" ID="ID_651031212" MODIFIED="1431999213148" TEXT="Write request">
<node CREATED="1431999381519" ID="ID_1247434999" MODIFIED="1431999382896" TEXT="Write or update requests such as create , delete , and setData are forwarded to the leader in the ensemble. The leader carries out the client request as a transaction. This transaction is similar to the concept of a transaction in a database management system."/>
<node CREATED="1431999594671" FOLDED="true" ID="ID_469411920" MODIFIED="1431999627702" TEXT="Node state">
<node CREATED="1431999601650" ID="ID_1891485311" MODIFIED="1431999605979" TEXT="LOOKING"/>
<node CREATED="1431999606310" ID="ID_1774513673" MODIFIED="1431999610220" TEXT="LEADING"/>
<node CREATED="1431999610625" ID="ID_1420232433" MODIFIED="1431999613488" TEXT="FOLLOWING"/>
<node CREATED="1431999621308" ID="ID_1282099059" MODIFIED="1431999625407" TEXT="OBSERVING?"/>
</node>
<node CREATED="1431999384591" ID="ID_997788642" MODIFIED="1431999437201" TEXT="Two-phase commit protocol">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1431999463549" ID="ID_1360315612" MODIFIED="1431999464408" TEXT="Phase 1 &#x2013; leader election">
<node CREATED="1431999902827" ID="ID_1728517098" MODIFIED="1431999904056" TEXT="Each server that participates in the leader election algorithm has a state called LOOKING ."/>
<node CREATED="1431999666738" ID="ID_1017252568" MODIFIED="1431999685800" TEXT="condition 1: have leader already">
<node CREATED="1431999924211" ID="ID_1496962006" MODIFIED="1431999941034" TEXT="The peer servers inform the new participant servers about the existing leader."/>
<node CREATED="1431999926143" ID="ID_87565829" MODIFIED="1431999934487" TEXT="After learning about the leader, the new servers sync their state with the leader."/>
</node>
<node CREATED="1431999687093" ID="ID_1472135948" MODIFIED="1431999718384" TEXT="condition 2: no leader yet"/>
</node>
<node CREATED="1431999465158" ID="ID_18495425" MODIFIED="1431999473848" TEXT="Phase 2 &#x2013; atomic broadcast"/>
</node>
</node>
<node CREATED="1431999291101" FOLDED="true" ID="ID_1684398738" MODIFIED="1431999444955" TEXT="illustration">
<node CREATED="1431999300884" ID="ID_14124957" MODIFIED="1431999311446">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="zkcomponents.jpg" />
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1431651214028" ID="ID_1381886383" MODIFIED="1431651309417" POSITION="right" TEXT="&#x672f; - how zookeeper help us?"/>
<node CREATED="1431564500578" ID="ID_1874733229" MODIFIED="1431564502852" POSITION="right" TEXT="client">
<node CREATED="1431564438290" FOLDED="true" ID="ID_1371654271" MODIFIED="1431998782470" TEXT="client bindings">
<node CREATED="1431564447078" ID="ID_1895666119" MODIFIED="1431564449466" TEXT="C"/>
<node CREATED="1431564449913" ID="ID_5094464" MODIFIED="1431564451515" TEXT="Java">
<node CREATED="1431571340752" ID="ID_1318963325" MODIFIED="1431571342586" TEXT="zkCli.sh -server localhost:2181"/>
</node>
<node CREATED="1431564452017" ID="ID_1582914009" MODIFIED="1431564455100" TEXT="Perl"/>
<node CREATED="1431564455510" ID="ID_1843531936" MODIFIED="1431564475672" TEXT="Python"/>
</node>
<node CREATED="1431564479536" FOLDED="true" ID="ID_747801673" MODIFIED="1431564533593" TEXT="Communicty contributed client libraries">
<node CREATED="1431564509934" ID="ID_693382430" MODIFIED="1431564518302" TEXT="Go"/>
<node CREATED="1431564519033" ID="ID_1102224370" MODIFIED="1431564521884" TEXT="Scala"/>
<node CREATED="1431564522153" ID="ID_573222638" MODIFIED="1431564526560" TEXT="Erlang"/>
<node CREATED="1431564526954" ID="ID_1192169222" MODIFIED="1431564530771" TEXT="etc."/>
</node>
</node>
<node CREATED="1431568461610" FOLDED="true" ID="ID_1621867539" MODIFIED="1431649576891" POSITION="right" TEXT="installation">
<node CREATED="1431568469089" ID="ID_1527369460" MODIFIED="1431572888458" TEXT="-------------- zookeeper 3.4.6 ------------------------- &#xa;wget http://www.gtlib.gatech.edu/pub/apache/zookeeper/stable/zookeeper-3.4.6.tar.gz &#xa;ls -alh zookeeper-3.4.6.tar.gz  &#xa;sudo tar -C /usr/share -zxf zookeeper-3.4.6.tar.gz &#xa;cd /usr/share/zookeeper-3.4.6/ &#xa;ls  &#xa;&#xa;&#x66f4;&#x65b0;&#x73af;&#x5883;&#x53d8;&#x91cf;&#xa;vi ~/.bashrc&#xa;export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64&#xa;export CLASSPATH=.:$JAVA_HOME/jre/lib/dt.jar:$JAVA_HOME/jre/lib/tools.jar:$JAVA_HOME/jre/lib/rt.jar:$JAVA_HOME/jre/lib&#xa;export PATH=$PATH:$JAVA_HOME/bin&#xa;export ZK_HOME=/usr/share/zookeeper-3.4.6&#xa;export PATH=$PATH:$ZK_HOME/bin&#xa;&#xa;source ~/.bashrc&#xa;&#xa;&#x66f4;&#x6539;singlenode mode&#x4e0b;&#x7684;&#x914d;&#x7f6e;&#x6587;&#x4ef6;&#xff0c;&#x5176;&#x4e2d;dataDir&#x9700;&#x8981;&#x5f53;&#x524d;&#x7528;&#x6237;&#x53ef;&#x8bbf;&#x95ee;&#x6743;&#x9650;&#xa;$ sudo vi conf/zoo.cfg&#xa;tickTime=2000&#xa;dataDir=/home/hawk/Documents/tmp/zookeeper&#xa;clientPort=2181&#xa;&#xa;&#x8fd0;&#x884c;&#xa;zkServer.sh start&#xa;&#xa;&#x68c0;&#x67e5;&#x662f;&#x5426;&#x8fd0;&#x884c;&#x6b63;&#x5e38;&#xa;ps -ef | grep zookeeper | grep -v grep | awk &apos;{print $2}&apos;&#xa;&#x6216;&#x8005;&#xa;jps&#xa;&#x5f97;&#x5230; QuorumPeerMain&#xa;&#x6216;&#x8005;&#xa;zkServer.sh status&#xa;&#xa;&#xa;"/>
</node>
</node>
</map>
