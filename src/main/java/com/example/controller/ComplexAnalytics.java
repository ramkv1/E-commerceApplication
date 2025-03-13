package com.example.controller;

import java.time.Duration;
import java.time.Month;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.entity.Customer;
import com.example.entity.OrderItem;
import com.example.entity.Orders;
import com.example.service.IOrderItemService;
import com.example.service.IOrderService;


@RestController
@RequestMapping("/ComplexAnalytics")
public class ComplexAnalytics {

	
	@Autowired
	private IOrderService orderService;
	
	@Autowired
	private IOrderItemService orderItemService;


	// 3.1. Most Profitable Customers 
	
	@GetMapping("/MostProfitableCustomers")
	public String getMostProfitableCustomers() {
		List<Orders> orders = orderService.getAllOrders(); // Fetch orders from service

		// Ensure no null values in Customer  or Total Amount
	    Map<Customer, Double> customerRevenue = orders.stream()
	            .dropWhile(order -> order.getCustomer() == null || order.getTotalamount() == null || order.getTotalamount() == 0|| order.getCustomer().getId() == null)
	            .collect(Collectors.groupingBy(Orders::getCustomer, Collectors.summingDouble(Orders::getTotalamount)));
	    
	    


		// Find the customer with the highest revenue
		Customer bestCustomer1 = Collections.max(customerRevenue.entrySet(), Map.Entry.comparingByValue()).getKey();

		Customer bestCustomer2 = Collections.max(customerRevenue.entrySet(), Map.Entry.comparingByValue()).getKey();

		

		return "Most Profitable Customer: " + bestCustomer1;
	}
	
	//3.2 RetentionRateCalculator 
	
	@GetMapping("/RetentionRateCalculator")
	public Map<Month,String> RetentionRateCalculator() {
		
		List<Month> listOfOrderMonths= Arrays.asList(Month.JANUARY,Month.FEBRUARY,Month.MARCH,Month.APRIL,Month.MAY,Month.JUNE,Month.JULY,Month.AUGUST,Month.SEPTEMBER,Month.OCTOBER,Month.NOVEMBER,Month.DECEMBER);
	    Map<Month,String> monthwiseRetention = new HashMap<>();
	        // Sample data: Replace with actual data fetched from database
	    Map<Month, Set<Customer>> list=new HashMap<>();
		 list=orderService.getAllOrders().stream()
		.filter(order -> order.getOrderDate() != null)
            .collect(Collectors.groupingBy(
                order -> order.getOrderDate().getMonth(),  // Extract month
                Collectors.mapping(Orders::getCustomer, Collectors.toSet())  // Sum revenue
            ));
		
		for (int i = 0; i < listOfOrderMonths.size()-1; i++) {
			 Set<Integer> month01=new HashSet<>();
			  Set<Integer> month02=new HashSet<>();
			   if(list.get(listOfOrderMonths.get(i))!=null && list.get(listOfOrderMonths.get(i+1))!=null) {
		           month01= list.get(listOfOrderMonths.get(i)).stream().map(Customer::getId).collect(Collectors.toSet());
		           month02= list.get(listOfOrderMonths.get(i+1)).stream().map(Customer::getId).collect(Collectors.toSet());
		 
			   }
	           // Find overlapping customers (customers who ordered in both months)
		        Set<Integer> returningCustomers = new HashSet<>(month01);
		        returningCustomers.retainAll(month02);
		        int totalCustomersInJan = month01.size();
		        int returningCustomerCount = returningCustomers.size();
		        double retentionRate = (double) returningCustomerCount / totalCustomersInJan * 100;
		        System.out.println("Returning Customers:  "+returningCustomerCount);
		        System.out.println("Total Customers in : "+ listOfOrderMonths.get(i) +": " + totalCustomersInJan);
		        System.out.printf("Retention Rate: %.2f%%\n", retentionRate);
		        monthwiseRetention.put(listOfOrderMonths.get(i), "Returning Customers:  "+returningCustomerCount + "  Total Customers in : "+ listOfOrderMonths.get(i) +": " + totalCustomersInJan + "  Retention Rate: "+ retentionRate);
		}
		return monthwiseRetention;
		 
	}
	//3.3 Longest Order Processing Times
	
	@GetMapping("/LongestOrderProcessingTimes")
	public String getLongestOrderProcessingTimes() {
        List<Orders> orders = orderService.getAllOrders();
        
        List<Orders> sortedOrders = orders.stream()
                .filter(order -> order.getOrderDate() != null && order.getDeliveryDate() != null)
                .sorted(Comparator.comparing(order -> 
                    Duration.between(order.getOrderDate(), order.getDeliveryDate()).toHours(), Comparator.reverseOrder()
                ))
                .collect(Collectors.toList());
        return "Longest Order Processing Time: " + sortedOrders.get(0).getId() + " ====" + Duration.between(sortedOrders.get(0).getOrderDate(), sortedOrders.get(0).getDeliveryDate()).toHours() + " hours"
        		+ "\n"+"Longest Order Processing Time: " + sortedOrders.get(1).getId() + " ====" + Duration.between(sortedOrders.get(1).getOrderDate(), sortedOrders.get(1).getDeliveryDate()).toHours() + " hours";
	}
	///======================================
	// 3.4 BestWorstCategoryByAOV
	@GetMapping("/bestworstcategorybyaov")
	public String getOrderItem() {
		List<OrderItem> list = orderItemService.getAllOrderItems();
		Map<String, Double> categoryRevenue = list.stream()
				.collect(Collectors.groupingBy(OrderItem::getCategory, Collectors.summingDouble(OrderItem::getPrice)));

		// Sort by revenue in descending order
		List<Map.Entry<String, Double>> sortedList = categoryRevenue.entrySet().stream()
				.sorted(Map.Entry.<String, Double>comparingByValue(Comparator.reverseOrder()))
				.collect(Collectors.toList());

		return "Best Product Category by Revenue:====> " + sortedList.get(0) + "\n"
				+ "Worst Product Category by Revenue: ====>" + sortedList.get(sortedList.size() - 1);
	}


	///======================================
	// 3.5 Seasonal Order Patterns
	@GetMapping("/SeasonalOrderPatterns")
	public String getSeasonalOrderPatterns() {
		List<Orders> orders = orderService.getAllOrders(); // Fetch orders from service

        // Group by month and sum totalAmount0
        Map<Month, Double> monthlyRevenue = orders.stream()
        		.filter(order -> order.getOrderDate() != null)
            .collect(Collectors.groupingBy(
                order -> order.getOrderDate().getMonth(),  // Extract month
                Collectors.summingDouble(Orders::getTotalamount)  // Sum revenue
            ));
		
		Map<String, List<Month>> seasons = new HashMap<>();
        seasons.put("Winter", Arrays.asList(Month.DECEMBER, Month.JANUARY,Month.FEBRUARY));
        seasons.put("Spring", Arrays.asList(Month.MARCH,Month.APRIL,Month.MAY));
        seasons.put("Summer", Arrays.asList(Month.JUNE,Month.JULY,Month.AUGUST));
        seasons.put("Fall", Arrays.asList(Month.SEPTEMBER,Month.OCTOBER,Month.NOVEMBER));

                
     // Compute revenue per season
        Map<String, Double> seasonRevenue = new HashMap<>();
        for (Map.Entry<String, List<Month>> entry : seasons.entrySet()) {
            String season = entry.getKey();
            double total = 0;
            for (Month month : entry.getValue()) {
                total = total +  monthlyRevenue.getOrDefault(month, 0.0);
            }
            seasonRevenue.put(season, total);
        }
     // Find the season with the highest revenue
        List<Map.Entry<String, Double>> sortedSeasons = seasonRevenue.entrySet().stream()
                .sorted(Map.Entry.comparingByValue(Comparator.reverseOrder())) // Sort by value (descending)
                .collect(Collectors.toList());
        
        System.out.println(monthlyRevenue);
        System.out.println(sortedSeasons);
        
		return "Most Profitable Season: " + sortedSeasons;
	}

	
	///======================================
	// 3.6 OrderSizeClassification
	@GetMapping("/OrderSizeClassification")
	public String getOrderSizeClassification() {
		List<OrderItem> list = orderItemService.getAllOrderItems();
		Map<String, Integer> orderSizeCounts = new HashMap<>();

		// Initialize counts for each category
		orderSizeCounts.put("Small", 0);
		orderSizeCounts.put("Medium", 0);
		orderSizeCounts.put("Large", 0);
		list.stream().forEach(orderItem -> {
			int totalItems = orderItem.getQuantity();
			if (totalItems >= 1 && totalItems <= 2) {
				orderSizeCounts.put("Small", orderSizeCounts.get("Small") + 1);
			} else if (totalItems >= 3 && totalItems <= 5) {
				orderSizeCounts.put("Medium", orderSizeCounts.get("Medium") + 1);
			} else if (totalItems >= 6) {
				orderSizeCounts.put("Large", orderSizeCounts.get("Large") + 1);
			}
		});

		return Map.of("Small orders", orderSizeCounts.get("Small"), "Medium orders", orderSizeCounts.get("Medium"),
				"Large orders", orderSizeCounts.get("Large")).toString();
	}

}
