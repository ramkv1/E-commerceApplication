# Project Name

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


