json.extract! order, :id, :order_no, :order_date, :order_title, :prefix, :postfix, :order_scan_path, :notes, :created_at, :updated_at
json.url order_url(order, format: :json)
