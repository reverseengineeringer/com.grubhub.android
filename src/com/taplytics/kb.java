package com.taplytics;

public enum kb
{
  private String clam;
  
  static
  {
    jdField_albatross_of_type_ComTaplyticsKb = new kb("VIEWTRACKING", 0, "views");
    alligator = new kb("EVENTS", 1, "events");
    alpaca = new kb("ANALYTICS", 2, "analytics");
    anteater = new kb("EXTERNAL", 3, "external");
    antelope = new kb("GOOGLE", 4, "google");
    ape = new kb("MIXPANEL", 5, "mixpanel");
    armadillo = new kb("FLURRY", 6, "flurry");
    baboon = new kb("ADOBE", 7, "adobe");
    badger = new kb("LOCALYTICS", 8, "localytics");
    barracuda = new kb("AMPLITUDE", 9, "amplitude");
    bat = new kb("LISTVIEWS", 10, "listviews");
    bear = new kb("RECYCLERVIEWS", 11, "recyclerviews");
    beaver = new kb("VISUAL", 12, "visual");
    bee = new kb("ERRORS", 13, "errors");
    bison = new kb("SOCKETS", 14, "sockets");
    bluejay = new kb("VIEWPAGERS", 15, "viewpagers");
    boar = new kb("SUPPORTFRAGMENTS", 16, "supportfragments");
    bobcat = new kb("FRAGMENTS", 17, "fragments");
    buffalo = new kb("PUSH", 18, "push");
    butterfly = new kb("GEOFENCES", 19, "geofences");
    camel = new kb("CODE", 20, "code");
    caribou = new kb("BUTTONS", 21, "buttons");
    carmine = new kb("DYNAMICVARS", 22, "dynamicvars");
    cat = new kb("DELAYLOAD", 23, "delay");
    caterpillar = new kb("SHAKEMENU", 24, "shakemenu");
    catfish = new kb("REQUESTERRORS", 25, "requesterrors");
    cattle = new kb("EVENTSTHROTTLED", 26, "eventsThrottled");
    jdField_albatross_of_type_ArrayOfComTaplyticsKb = new kb[] { jdField_albatross_of_type_ComTaplyticsKb, alligator, alpaca, anteater, antelope, ape, armadillo, baboon, badger, barracuda, bat, bear, beaver, bee, bison, bluejay, boar, bobcat, buffalo, butterfly, camel, caribou, carmine, cat, caterpillar, catfish, cattle };
  }
  
  private kb(String paramString)
  {
    clam = paramString;
  }
  
  public String getText()
  {
    return clam;
  }
}

/* Location:
 * Qualified Name:     com.taplytics.kb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */