Feature: Controlling Light Devices
    In order for plants to grow they need light and darkness.
    As a controller for a garden the system needs to turn devices that may provide light on and off.

Scenario: A light device in the off state configured to turn on with a timer shall turn on when its timeout expires
    Given A device named 'light'
    And The device state is 'off'
    And The device is configured to turn 'on' when 1000 milliseconds elapse
    When 999 milliseconds elapse
    Then The device state is 'off'
    When 1 milliseconds elapse
    Then The device state is 'on'

Scenario: A light device in the on state configured to turn off with a timer shall turn off when its timeout expires
    Given A device named 'light'
    And The device state is 'on'
    And The device is configured to turn 'off' when 1000 milliseconds elapse
    When 999 milliseconds elapse
    Then The device state is 'on'
    When 1 milliseconds elapse
    Then The device state is 'off'

Scenario: A light device in the off state configured to turn off with a timer shall stay off when its timeout expires
    Given A device named 'light'
    And The device state is 'off'
    And The device is configured to turn 'off' when 1000 milliseconds elapse
    When 999 milliseconds elapse
    Then The device state is 'off'
    When 1 milliseconds elapse
    Then The device state is 'off'

Scenario: A light device in the on state configured to turn on with a timer shall stay on when its timeout expires
    Given A device named 'light'
    And The device state is 'on'
    And The device is configured to turn 'on' when 1000 milliseconds elapse
    When 999 milliseconds elapse
    Then The device state is 'on'
    When 1 milliseconds elapse
    Then The device state is 'on'
