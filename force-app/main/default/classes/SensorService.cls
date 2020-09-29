/*
1. На 1м SF Org - Реализовать custom SOAP API:
Создать Custom objects:
 1. Sensor__c (fields: Name(text 80), Max_Vectors_Difference - Roll up summary , Account_Id__c Master-Detail (Account) ). 
 2. Sensor_Event_c (fields: Name- Autonumber, Previous_Event__c - Lookup(Sensor_Event__c), Modulus_difference_Vectors__c - Formula(Number =sqrt(x*x + y*y + z*z)), Sensor__c - Master Detail(Sensor__c), x - number, y - number, z - number)
 
 Разработать SOAP service на стороне Salesforce, который будет принимать данные вида {accountId: id, sensorid: id, line: [x1, y1, z1, x2, y2, z2, x3, .... xN, yN, zN]}
 Пример: {accountId: '001ABCDEFG00001', sensorid: '1', line: [22, 17, 197, 23, 45, 14, 22, 43, 196, 24, 42, 198]} 
*/


global with sharing class SensorService {
    webservice static SensorService(Id accountId, Id sensorid, List<Integer> line ) {
        Sensor__c sensor = new Sensor__c();
        List<Sensor__c> qList = [SELECT Id, Name FROM Sensor__c WHERE Id =: sensorid];
        sensor = qList.get(0);
        
    }
}
