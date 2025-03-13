# E-commerceApplication

## Overview

This project uses PostgreSQL as the database. To set up PostgreSQL in a containerized environment, follow the instructions below.

## Prerequisites

- Docker
- Docker Compose

## Steps to Spin Up PostgreSQL

1. Clone the repository if you haven't already:
    ```bash
    git clone https://github.com/ramkv1/E-commerceApplication.git
    cd E-commerceApplication
    ```

2. Ensure you have the `docker-compose.yml` file in the root of your project directory.

3. Run the following command to start the PostgreSQL container:
    ```bash
    docker-compose up -d
    ```

    This will download the PostgreSQL image (if not already present), create the container, and start it in detached mode.

4. After the container is up and running, PostgreSQL will be accessible through the configured port (default: `5432`).

5. To stop the PostgreSQL container, use:
    ```bash
    docker-compose down
    ```

## Database Configuration

Once the PostgreSQL container is running, you can connect to it using your preferred SQL client or the following command:

# Create `update_order_status` Procedure in PostgreSQL

```
CREATE OR REPLACE Procedure update_order_status(p_order_id INT, p_status VARCHAR)
AS $$
BEGIN
    -- Update the order status
    UPDATE Orders
    SET status = p_status,
        deliveryDate = CASE 
                          WHEN p_status = 'Delivered' THEN CURRENT_TIMESTAMP 
                          ELSE deliveryDate 
                      END
    WHERE id = p_order_id;
END;
$$ LANGUAGE plpgsql;

```


# Import E-commerce Postman Collection

## Steps to Import the `E-commerce.postman_collection.json` into Postman

1. **Open Postman:**

   - Launch the Postman application on your machine.

2. **Import the Collection:**

   - In Postman, click on the **Import** button, which can be found at the top left of the application.



3. **Choose the JSON File:**

   - In the **Import** window, select **File** from the available options. 
   - Browse to the location where the `E-commerce.postman_collection.json` file is stored on your computer.
   - Select the file and click **Open**.

4. **View the Collection:**

   - After importing, you will see the `E-commerce` collection listed in the left sidebar of Postman under the **Collections** tab.
   - Click on the collection to expand it and view all the requests.

5. **Start Using the Collection:**

   - Now, you can start using the requests in the collection to interact with the E-commerce API.
   - You can modify the request parameters, headers, and body as needed to match your API environment.
   - Execute the requests by clicking on the **Send** button in Postman.

## Example Usage of a Request

Once the collection is imported, you can test a specific endpoint, such as placing an order or getting a product list. Here’s how you can test a request:

1. Open the desired API request from the `E-commerce` collection.
2. Modify any request parameters or body if needed.
3. Click on **Send** to execute the request and see the response.

---
![UpdateAnOrderByAdmin](https://github.com/user-attachments/assets/7d6bcb0c-bb64-462a-9aca-036d36b91d08)
![GetAllOrdersByAdmin](https://github.com/user-attachments/assets/67827b51-1cbe-4ef1-8c56-e93db3bc6a3d)
![DeleteAnOrder](https://github.com/user-attachments/assets/ff138e02-5ae7-401d-a403-55e3ae918c1d)
![getAllOrderes](https://github.com/user-attachments/assets/5cc387f0-c489-4b39-8c19-3013299c7689)
![getAnOrder](https://github.com/user-attachments/assets/5acd9d6a-bca5-4246-b68a-03612023c686)
![CreateAnOrder](https://github.com/user-attachments/assets/4a140f59-fbab-4926-941b-747dac1cd4c8)
![retentionRateCal](https://github.com/user-attachments/assets/d38d3891-9213-4db9-98cd-36e4d54c071d)
![MostProfitableCust](https://github.com/user-attachments/assets/76eeaec9-5262-440c-9250-2544d4567e52)
![LongestOrderProcessing](https://github.com/user-attachments/assets/f937e8e1-1664-42b3-abce-5291a7373505)
![SeasonalOrderPattern](https://github.com/user-attachments/assets/ba5e8234-7b7e-4021-a647-fce861582e19)
![OrderSizeClassification](https://github.com/user-attachments/assets/be925b1f-8b01-41ae-8b0f-96d6264f8753)
![BestWorestcategorybyaov](https://github.com/user-attachments/assets/28337498-2edd-4c6d-a6f7-10a50853df70)
![CreateCustomer](https://github.com/user-attachments/assets/c26f9ccd-522c-4a51-9176-c523fa7fe578)















