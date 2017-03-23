public with sharing class FinderController {
    @AuraEnabled
    public static List<List<SObject>> getOptions(String term, Integer limitSize) {
        term = term + '*';
        return [FIND :term IN ALL FIELDS RETURNING Account (Id, Name), Contact (Id, Name), Lead (Id, Name), User(Id, Name), Opportunity(Id, Name) LIMIT :limitSize];
    }  
}