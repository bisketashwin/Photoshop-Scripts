﻿//alert(getLayerColour());  #target photoshopvar doc = activeDocument;  var cLayer$.writeln ( getLayerColour());loopLayers(doc);  function getLayerColour(theLayer){  //Colours returned ....   // "none","red","orange","yellowColor","grain","blue","violet","gray"     // return theLayer;var ref = new ActionReference();      //   ref.putEnumerated( charIDToTypeID("Lyr "), charIDToTypeID("Ordn"), charIDToTypeID("Trgt") );      var appDesc = executeActionGet(ref);      return typeIDToStringID(appDesc.getEnumerationValue(stringIDToTypeID('color')) );  };  function loopLayers (theParent, allLayers) {            if (!allLayers) {var allLayers = new Array}             else {};            for (var m = theParent.layers.length - 1; m >= 0;m--) {                      var theLayer = theParent.layers[m];  // apply the function to layersets;                      if (theLayer.typename == "ArtLayer") {                                allLayers.push(theLayer)                                var m = getLayerColour(theLayer);                              $.writeln ( m);                              }                      else {                          //var m = getLayerColour();                              //$.writeln ( m);                              allLayers = (loopLayers(theLayer, allLayers))  // this line includes the layer groups;                                allLayers.push(theLayer);                                }                      };            return allLayers  ;}; 