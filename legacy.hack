<?hh

function register_customer(string $username, string $email, string $password, string $full_name, string $phone = '', string $country = 'RS', string $city = '', string $address = ''): void {}
function login_customer(string $username, string $password): void {}
function get_customer(string $customer_id): void {}
function update_customer_profile(string $customer_id, string $new_email, string $new_phone, string $new_address): void {}
function reset_password(string $email, string $new_password): void {}
function verify_email(string $token): void {}
function add_payment_method(string $customer_id, string $type, string $card_number, string $expiry_month, string $expiry_year, string $cvv, string $holder_name, string $iban = ''): void {}
function list_payment_methods(string $customer_id): void {}
function delete_payment_method(string $pm_id): void {}
function process_payment(string $customer_id, string $payment_method_id, string $amount, string $currency = 'EUR', ?string $external_order_id = null, ?string $ip = null): void {}
function list_payments(string $customer_id): void {}
function get_payment_details(string $payment_id): void {}
function create_refund(string $payment_id, string $amount, string $reason = 'customer request'): void {}
function process_refund(string $refund_id): void {}
function simulate_chargeback(string $payment_id, string $amount, string $reason = 'fraud'): void {}
function resolve_chargeback(string $chargeback_id, string $won = 'true'): void {}
function create_fraud_review(string $payment_id, string $customer_id, string $score = '85'): void {}
function decide_fraud_review(string $review_id, string $decision, string $reviewer_email, string $reviewer_password): void {}
function admin_list_all_customers(): void {}
function admin_export_all_data(): void {}
function search_payments(string $search_term): void {}
function process_recurring_billing(): void {}
function handle_webhook(string $payload): void {}
function ban_customer(string $customer_id): void {}
function generate_api_key(string $customer_id): void {}
