@isTest
private class FinderControllerTest {
    
    public static testMethod void testTypeaheadController() {
       List<Id> fixedSearchResults = new List<Id>();
       fixedSearchResults.add('001x0000003G89h');
       fixedSearchResults.add('003x0000003G89h');
       fixedSearchResults.add('00Qx0000003G89h');
       fixedSearchResults.add('005x0000003G89h');
       fixedSearchResults.add('006x0000003G89h');
       Test.setFixedSearchResults(fixedSearchResults);
       Test.startTest();
       List<List<SObject>> results = FinderController.getOptions('test',10);
       Test.stopTest(); 
       System.assertEquals(5, results.size(), 'Expected 5 object types');
    }
}