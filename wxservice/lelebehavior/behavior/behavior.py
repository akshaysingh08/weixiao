#!/usr/bin/env python
# -*- coding: utf-8 -*-

from sqlalchemy.orm import sessionmaker, relationship
from sqlalchemy import desc
from models import db_connect, create_behaviors_table
from models import Behaviors
import threading

class behavior (threading.Thread):
    def __init__(self, obj):
        threading.Thread.__init__(self)
        self.engine = db_connect()
        create_behaviors_table(self.engine)
        self.Session = sessionmaker(bind=self.engine)
        self.session = self.Session()
        self.obj = obj
    #end def

    def run(self):
        # put behavior item into the database
        try:
            behavior_item = Behaviors(**self.obj)
            self.session.add(behavior_item)
            self.session.commit() 
            self.session.close()
            print 'ok to save behavior'
        except Exception as e:
            print str(e)
        #endtry
    #enddef

#end class


def getallbehaviors(query):
    engine = db_connect()
    Session = sessionmaker(bind=engine)
    session = Session()
    behaviors = []
    myquery = session.query(Behaviors).filter(Behaviors.tid==query['tid']).filter(Behaviors.uid!=-1).filter(Behaviors.bcode!=5).filter(Behaviors.bcode!=11)
    total = myquery.count()
    for instance in myquery.order_by(desc(Behaviors.t)).offset(query['offset']).limit(query['limit']):
        behavior = {}
        behavior['uid'] = instance.uid
        behavior['t'] = instance.t
        behavior['bcode'] = instance.bcode
        behaviors.append(behavior)
    #endfor
    session.close()
   
    hasMore = 1
    number = query['offset']+query['limit']
    if (number>total):
        hasMore = 0
 
    return { 'numFound':total, 'hasMore':hasMore, 'behaviors':behaviors}
#enddef

