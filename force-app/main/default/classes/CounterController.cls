/**
 * Controller class for the counter application.
 * Provides backend logic for increment, decrement, and reset operations.
 */
public with sharing class CounterController {
    
    /**
     * Increments the counter value by 1.
     * 
     * @param currentValue The current counter value
     * @return The incremented counter value
     * @example
     * Integer newValue = CounterController.incrementCounter(5);
     * // Returns: 6
     */
    @AuraEnabled
    public static Integer incrementCounter(Integer currentValue) {
        try {
            if (currentValue == null) {
                currentValue = 0;
            }
            return currentValue + 1;
        } catch (Exception e) {
            throw new AuraHandledException('Error incrementing counter: ' + e.getMessage());
        }
    }
    
    /**
     * Decrements the counter value by 1.
     * 
     * @param currentValue The current counter value
     * @return The decremented counter value
     * @example
     * Integer newValue = CounterController.decrementCounter(5);
     * // Returns: 4
     */
    @AuraEnabled
    public static Integer decrementCounter(Integer currentValue) {
        try {
            if (currentValue == null) {
                currentValue = 0;
            }
            return currentValue - 1;
        } catch (Exception e) {
            throw new AuraHandledException('Error decrementing counter: ' + e.getMessage());
        }
    }
    
    /**
     * Resets the counter value to 0.
     * 
     * @return The reset counter value (0)
     * @example
     * Integer newValue = CounterController.resetCounter();
     * // Returns: 0
     */
    @AuraEnabled
    public static Integer resetCounter() {
        try {
            return 0;
        } catch (Exception e) {
            throw new AuraHandledException('Error resetting counter: ' + e.getMessage());
        }
    }
}