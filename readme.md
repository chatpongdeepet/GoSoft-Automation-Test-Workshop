# Online Product Purchase Automation

This project automates the process of purchasing products from the [AllOnline 7-Eleven Thailand website](https://www.allonline.7eleven.co.th/) using **Robot Framework** and **SeleniumLibrary**.

The test script handles the entire purchase flow, including logging in, searching for products, verifying product details, and completing a purchase with delivery to a specified address.

## Project Structure

### File Overview
- **`all-online_buy_success.robot`**:  
  Main Robot Framework script containing test cases and keywords to automate the purchase flow.
- **`requirements.txt`**:  
  List of required Python dependencies for the automation framework.

---

## Features
The test cases included in this project cover:
1. Logging into the website using credentials.
2. Searching for a product by name.
3. Verifying the search results and selecting a product.
4. Checking product details (price, ID, and title).
5. Setting the number of products to purchase.
6. Adding the product to the cart and proceeding to checkout.
7. Filling in the delivery address details.
8. Selecting a payment method (credit card).
9. (Optional) Navigating to the payment page.

---

## Prerequisites
Before running the project, ensure the following tools and dependencies are installed:
1. **Python 3.x**  
   Installation Guide: [https://www.python.org/](https://www.python.org/)
2. **Google Chrome** and **Chromedriver**  
   Ensure Chromedriver is compatible with your version of Chrome. Download here: [https://chromedriver.chromium.org/downloads](https://chromedriver.chromium.org/downloads)
3. Install dependencies from `requirements.txt`:
   ```bash
   pip install -r requirements.txt
   ```

---

## Running the Tests

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/your-repo-name.git
   cd your-repo-name
   ```

2. Make sure Chromedriver is accessible via PATH or provide its path during execution.

3. Run the test suite:
   ```bash
   robot all-online_buy_success.robot
   ```

4. View the test results:
   - **Output file**: `output.xml`
   - **Report file**: `report.html`
   - **Log file**: `log.html`

---

## Configurations
### Variables
Variables can be configured inside the `all-online_buy_success.robot` file:
- **User Credentials**:  
  Update `${USERNAME}` and `${PASSWORD}` variables with valid credentials.
- **URL**:  
  `${URL}` points to the AllOnline 7-Eleven website.
- **Selectors**:  
  XPaths for elements on the website (such as buttons and text fields) are defined in the `${VARIABLES}` section.

### Customizations
- To test with different products, update `${SEARCH_PRODUCT_NAME}` and `${SEARCH_PRODUCT_NAME_EXPECTED}` variables.
- Modify delivery details such as address, province, and district in the **Delivery Address Variables** section.

---

## Key Highlights in the Test Script

### Test Cases
- **`ตรวจสอบการสั่งซื้อสินค้าและจัดส่งตามที่อยู่สำเร็จ`**:  
  This is the main test case that combines all keywords to complete a product purchase flow.

### Keywords
- **`เปิดเว็บเบราว์เซอร์`**: Open the website and accept cookies.
- **`เลือกสินค้า`**: Select the search result based on the product name.
- **`ใส่จำนวนสินค้า`**: Update the product quantity before purchasing.
- **`ยืนยันการชำระเงิน`**: Scroll down and confirm payment.
- **`เลือกวิธีการชำระเงินด้วยบัตรเครดิต`**: Choose the credit card payment option.

---

## Dependencies
This project relies on the following libraries and frameworks:
- **Robot Framework**: Test automation tool.
- **SeleniumLibrary**: Browser automation library for Robot Framework.
- **Selenium**: Core browser driver interaction for automation.
- Full dependency list is available in `requirements.txt`.

---

## Results Reporting
Upon execution, a detailed test execution report is generated, including:
- **Logs**: Step-by-step execution details.
- **Reports**: Test case status (PASS/FAIL) with screenshots for failed cases (if configured).

---

## Future Improvements
- Add test coverage for different payment methods (e.g., mobile banking, e-wallets).
- Implement reusable keywords for handling dynamic content and pop-ups.
- Add support for multiple browsers like Firefox and Edge.
- Parameterize the script to support data-driven testing.

---

## Contributing
If you'd like to contribute:
1. Fork the repository.
2. Make your changes.
3. Create a pull request with a description of the enhancements or fixes.

---

## License
This project is licensed under the **MIT License**.