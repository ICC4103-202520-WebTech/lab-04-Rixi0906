Room.create!([
  { number: "100", room_type: 1, price: 1000000, status: 1 },
  { number: "101", room_type: 2, price: 250000, status: 1 },
  { number: "102", room_type: 3, price: 85000, status: 0 }
])

Guest.create!([
  { first_name: "Ricardo", last_name: "Anzola", email: "rdanzola@miuandes.cl", phone: "987654321", document_id: "26434404-2" },
  { first_name: "Clemente", last_name: "Alarcon", email: "ctalarcon@miuandes.cl", phone: "123456789", document_id: "21450574-0" },
  { first_name: "Olivia", last_name: "Urzua", email: "mourzua@miuandes.cl", phone: "246813579", document_id: "21467789-K" }
])

Reservation.create!([
  { code: "AB12", guest_id: 1, room_id: 1, check_in: "2025-09-14", check_out: "2025-09-17", status: 1, adults: 2, children: 0 },
  { code: "CD34", guest_id: 2, room_id: 2, check_in: "2025-09-20", check_out: "2025-09-24", status: 1, adults: 1, children: 1 },
  { code: "EF56", guest_id: 3, room_id: 3, check_in: "2025-09-25", check_out: "2025-09-30", status: 0, adults: 2, children: 2 }
])

Service.create!([
  { name: "Room Service", price: 3000, is_active: true },
  { name: "Spa Access", price: 10000, is_active: true },
  { name: "Breakfast", price: 7000, is_active: false }
])

ServiceUsage.create!([
  { reservation_id: 1, service_id: 1, quantity: 5, used_at: Time.now, note: "Delivers food to the room" },
  { reservation_id: 2, service_id: 2, quantity: 2, used_at: Time.now, note: "Access to the spa for two hours" },
  { reservation_id: 3, service_id: 3, quantity: 3, used_at: Time.now, note: "Breakfast included" }
])

Invoice.create!([
  { reservation_id: 1, nights_subtotal: 130000, services_subtotal: 15000, tax: 22000, total: 167000, issued_at: Time.now, status: "paid" },
  { reservation_id: 2, nights_subtotal: 180000, services_subtotal: 20000, tax: 27000, total: 227000, issued_at: Time.now, status: "unpaid" },
  { reservation_id: 3, nights_subtotal: 100000, services_subtotal: 21000, tax: 28000, total: 149000, issued_at: Time.now, status: "paid" }
])