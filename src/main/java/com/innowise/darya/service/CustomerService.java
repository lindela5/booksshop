package com.innowise.darya.service;

import com.innowise.darya.dto.CustomerDTO;
import com.innowise.darya.entity.Customer;


public interface CustomerService {

    CustomerDTO getCustomerStats(Long customerId);
}
