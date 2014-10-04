gti-project1
============

Project assignment for the Information Management and Processing course 

MEIC-A # 2014/2015
www.tecnico.ulisboa.pt/ 

-
The XML document available at https://fenix.ist.utl.pt/downloadFile/3779580002803 contains a data sample of transcripts for parliament interventions, taken from the Portuguese Assembleia da República, together with profile information regarding the Portuguese politicians involved in these parliamentary discussions.

 Exercise 1
-
 1.1 - Create an XML Schema for validating an XML document with information regarding politicians and parliamentary interventions, similar to that from Figure 1. When developing the XML Schema, take the following particular aspects into consideration:
 - Ensure that the developed XML Schema uses global data types, instead of local type definitions encapsulated within the elements, in order to promote modularity and code re-usage.
 - Ensure that the data types for the contents of attributes named order and age correspond to positive integer numbers.
 - Ensure that politician names start with an uppercase letter, and that they are composed of at least two separate words.
 - Ensure that the attribute named code is of mandatory occurrence in the elements named politician, whereas the attribute named politician, in the elements named speech, is optional. 
