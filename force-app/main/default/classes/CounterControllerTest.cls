/**
 * Test class for CounterController.
 * Tests increment, decrement, and reset operations.
 */
@isTest
private class CounterControllerTest {
    
    /**
     * Tests incrementing counter from a positive value.
     */
    @isTest
    static void shouldIncrementCounter_WhenValidPositiveValue() {
        // Given
        Integer initialValue = 5;
        
        // When
        Test.startTest();
        Integer result = CounterController.incrementCounter(initialValue);
        Test.stopTest();
        
        // Then
        Assert.areEqual(6, result, 'Counter should increment by 1');
    }
    
    /**
     * Tests incrementing counter from zero.
     */
    @isTest
    static void shouldIncrementCounter_WhenZeroValue() {
        // Given
        Integer initialValue = 0;
        
        // When
        Test.startTest();
        Integer result = CounterController.incrementCounter(initialValue);
        Test.stopTest();
        
        // Then
        Assert.areEqual(1, result, 'Counter should increment from 0 to 1');
    }
    
    /**
     * Tests incrementing counter from a negative value.
     */
    @isTest
    static void shouldIncrementCounter_WhenNegativeValue() {
        // Given
        Integer initialValue = -5;
        
        // When
        Test.startTest();
        Integer result = CounterController.incrementCounter(initialValue);
        Test.stopTest();
        
        // Then
        Assert.areEqual(-4, result, 'Counter should increment negative value by 1');
    }
    
    /**
     * Tests incrementing counter when null value is provided.
     */
    @isTest
    static void shouldIncrementCounter_WhenNullValue() {
        // Given
        Integer initialValue = null;
        
        // When
        Test.startTest();
        Integer result = CounterController.incrementCounter(initialValue);
        Test.stopTest();
        
        // Then
        Assert.areEqual(1, result, 'Counter should treat null as 0 and increment to 1');
    }
    
    /**
     * Tests decrementing counter from a positive value.
     */
    @isTest
    static void shouldDecrementCounter_WhenValidPositiveValue() {
        // Given
        Integer initialValue = 5;
        
        // When
        Test.startTest();
        Integer result = CounterController.decrementCounter(initialValue);
        Test.stopTest();
        
        // Then
        Assert.areEqual(4, result, 'Counter should decrement by 1');
    }
    
    /**
     * Tests decrementing counter from zero.
     */
    @isTest
    static void shouldDecrementCounter_WhenZeroValue() {
        // Given
        Integer initialValue = 0;
        
        // When
        Test.startTest();
        Integer result = CounterController.decrementCounter(initialValue);
        Test.stopTest();
        
        // Then
        Assert.areEqual(-1, result, 'Counter should decrement from 0 to -1');
    }
    
    /**
     * Tests decrementing counter from a negative value.
     */
    @isTest
    static void shouldDecrementCounter_WhenNegativeValue() {
        // Given
        Integer initialValue = -5;
        
        // When
        Test.startTest();
        Integer result = CounterController.decrementCounter(initialValue);
        Test.stopTest();
        
        // Then
        Assert.areEqual(-6, result, 'Counter should decrement negative value by 1');
    }
    
    /**
     * Tests decrementing counter when null value is provided.
     */
    @isTest
    static void shouldDecrementCounter_WhenNullValue() {
        // Given
        Integer initialValue = null;
        
        // When
        Test.startTest();
        Integer result = CounterController.decrementCounter(initialValue);
        Test.stopTest();
        
        // Then
        Assert.areEqual(-1, result, 'Counter should treat null as 0 and decrement to -1');
    }
    
    /**
     * Tests resetting counter.
     */
    @isTest
    static void shouldResetCounter_WhenCalled() {
        // When
        Test.startTest();
        Integer result = CounterController.resetCounter();
        Test.stopTest();
        
        // Then
        Assert.areEqual(0, result, 'Counter should reset to 0');
    }
}