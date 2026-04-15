import { LightningElement, track } from 'lwc';
import incrementCounter from '@salesforce/apex/CounterController.incrementCounter';
import decrementCounter from '@salesforce/apex/CounterController.decrementCounter';
import resetCounter from '@salesforce/apex/CounterController.resetCounter';

/**
 * Counter Application Component
 * A simple counter that demonstrates integration between LWC and Apex
 */
export default class CounterApp extends LightningElement {
    @track counterValue = 0;
    @track errorMessage = '';

    /**
     * Handles increment button click
     * Calls Apex method to increment the counter value
     */
    handleIncrement() {
        this.errorMessage = '';
        incrementCounter({ currentValue: this.counterValue })
            .then(result => {
                this.counterValue = result;
            })
            .catch(error => {
                this.errorMessage = error.body ? error.body.message : 'An error occurred';
                console.error('Error incrementing counter:', error);
            });
    }

    /**
     * Handles decrement button click
     * Calls Apex method to decrement the counter value
     */
    handleDecrement() {
        this.errorMessage = '';
        decrementCounter({ currentValue: this.counterValue })
            .then(result => {
                this.counterValue = result;
            })
            .catch(error => {
                this.errorMessage = error.body ? error.body.message : 'An error occurred';
                console.error('Error decrementing counter:', error);
            });
    }

    /**
     * Handles reset button click
     * Calls Apex method to reset the counter value to 0
     */
    handleReset() {
        this.errorMessage = '';
        resetCounter()
            .then(result => {
                this.counterValue = result;
            })
            .catch(error => {
                this.errorMessage = error.body ? error.body.message : 'An error occurred';
                console.error('Error resetting counter:', error);
            });
    }
}