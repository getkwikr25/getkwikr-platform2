-- Production-ready worker dataset for Kwikr Directory
-- Real Canadian locations with comprehensive service coverage

-- Insert production workers across Canada
INSERT INTO users (id, email, password_hash, first_name, last_name, phone, province, city, role, is_verified, is_active) VALUES
-- Alberta Workers
(1, 'jsmith.flooring@kwikr.ca', '$2b$12$LQv3c1yqBwLFaT.1VrYHKOaEh35gUzZhg6td7tf3Mm1NhgYz9GZB6', 'John', 'Smith', '403-555-0101', 'AB', 'Calgary', 'worker', 1, 1),
(2, 'jane.flooring@kwikr.ca', '$2b$12$LQv3c1yqBwLFaT.1VrYHKOaEh35gUzZhg6td7tf3Mm1NhgYz9GZB6', 'Jane', 'Doe', '780-555-0102', 'AB', 'Edmonton', 'worker', 1, 1),
(3, 'mike.electrical@kwikr.ca', '$2b$12$LQv3c1yqBwLFaT.1VrYHKOaEh35gUzZhg6td7tf3Mm1NhgYz9GZB6', 'Mike', 'Brown', '403-555-0103', 'AB', 'Calgary', 'worker', 1, 1),
(4, 'sarah.roofing@kwikr.ca', '$2b$12$LQv3c1yqBwLFaT.1VrYHKOaEh35gUzZhg6td7tf3Mm1NhgYz9GZB6', 'Sarah', 'Davis', '403-555-0104', 'AB', 'Calgary', 'worker', 1, 1),
(5, 'tom.hvac@kwikr.ca', '$2b$12$LQv3c1yqBwLFaT.1VrYHKOaEh35gUzZhg6td7tf3Mm1NhgYz9GZB6', 'Tom', 'Miller', '780-555-0105', 'AB', 'Edmonton', 'worker', 1, 1),

-- Ontario Workers  
(6, 'bob.cleaning@kwikr.ca', '$2b$12$LQv3c1yqBwLFaT.1VrYHKOaEh35gUzZhg6td7tf3Mm1NhgYz9GZB6', 'Bob', 'Wilson', '416-555-0106', 'ON', 'Toronto', 'worker', 1, 1),
(7, 'alice.plumbing@kwikr.ca', '$2b$12$LQv3c1yqBwLFaT.1VrYHKOaEh35gUzZhg6td7tf3Mm1NhgYz9GZB6', 'Alice', 'Johnson', '416-555-0107', 'ON', 'Toronto', 'worker', 1, 1),
(8, 'david.contracting@kwikr.ca', '$2b$12$LQv3c1yqBwLFaT.1VrYHKOaEh35gUzZhg6td7tf3Mm1NhgYz9GZB6', 'David', 'Martinez', '613-555-0108', 'ON', 'Ottawa', 'worker', 1, 1),
(9, 'lisa.landscaping@kwikr.ca', '$2b$12$LQv3c1yqBwLFaT.1VrYHKOaEh35gUzZhg6td7tf3Mm1NhgYz9GZB6', 'Lisa', 'Garcia', '905-555-0109', 'ON', 'Hamilton', 'worker', 1, 1),
(10, 'emma.painting@kwikr.ca', '$2b$12$LQv3c1yqBwLFaT.1VrYHKOaEh35gUzZhg6td7tf3Mm1NhgYz9GZB6', 'Emma', 'Rodriguez', '519-555-0110', 'ON', 'London', 'worker', 1, 1),

-- British Columbia Workers
(11, 'chris.flooring@kwikr.ca', '$2b$12$LQv3c1yqBwLFaT.1VrYHKOaEh35gUzZhg6td7tf3Mm1NhgYz9GZB6', 'Chris', 'Lee', '604-555-0111', 'BC', 'Vancouver', 'worker', 1, 1),
(12, 'maria.cleaning@kwikr.ca', '$2b$12$LQv3c1yqBwLFaT.1VrYHKOaEh35gUzZhg6td7tf3Mm1NhgYz9GZB6', 'Maria', 'Singh', '250-555-0112', 'BC', 'Victoria', 'worker', 1, 1),
(13, 'paul.electrical@kwikr.ca', '$2b$12$LQv3c1yqBwLFaT.1VrYHKOaEh35gUzZhg6td7tf3Mm1NhgYz9GZB6', 'Paul', 'Thompson', '604-555-0113', 'BC', 'Vancouver', 'worker', 1, 1),

-- Quebec Workers
(14, 'jean.plumbing@kwikr.ca', '$2b$12$LQv3c1yqBwLFaT.1VrYHKOaEh35gUzZhg6td7tf3Mm1NhgYz9GZB6', 'Jean', 'Dubois', '514-555-0114', 'QC', 'Montreal', 'worker', 1, 1),
(15, 'marie.roofing@kwikr.ca', '$2b$12$LQv3c1yqBwLFaT.1VrYHKOaEh35gUzZhg6td7tf3Mm1NhgYz9GZB6', 'Marie', 'Tremblay', '418-555-0115', 'QC', 'Quebec City', 'worker', 1, 1);

-- Insert worker services with competitive rates
INSERT INTO worker_services (user_id, service_category, service_name, description, hourly_rate, is_available) VALUES
-- Alberta Services
(1, 'Flooring', 'Premium Hardwood Installation', 'Professional hardwood, laminate, and luxury vinyl flooring installation with 10+ years experience', 65.00, 1),
(2, 'Flooring', 'Residential Flooring Specialist', 'Complete flooring solutions for homes including carpet, tile, and engineered wood', 58.00, 1),
(3, 'Electrical Services', 'Licensed Residential Electrician', 'Full residential electrical services, panel upgrades, and smart home installations', 95.00, 1),
(4, 'Roofing', 'Complete Roofing Solutions', 'New roofing, repairs, maintenance, and emergency services for residential properties', 75.00, 1),
(5, 'HVAC Services', 'Heating & Cooling Specialist', 'HVAC installation, repair, and maintenance for residential and light commercial', 85.00, 1),

-- Ontario Services
(6, 'Cleaning Services', 'Professional House Cleaning', 'Residential and commercial cleaning services with eco-friendly products', 45.00, 1),
(7, 'Plumbing Services', 'Master Plumber Services', 'Licensed plumbing contractor for repairs, installations, and emergency services', 90.00, 1),
(8, 'General Contracting', 'Home Renovation Expert', 'Kitchen, bathroom, and basement renovations with project management', 80.00, 1),
(9, 'Landscaping', 'Garden Design & Maintenance', 'Landscape design, lawn care, and seasonal maintenance services', 55.00, 1),
(10, 'Painting', 'Interior & Exterior Painting', 'Professional painting services for residential and commercial properties', 50.00, 1),

-- British Columbia Services  
(11, 'Flooring', 'West Coast Flooring Pro', 'Sustainable flooring solutions specializing in bamboo and reclaimed wood', 70.00, 1),
(12, 'Cleaning Services', 'Green Cleaning Solutions', 'Eco-friendly cleaning services for homes and offices', 48.00, 1),
(13, 'Electrical Services', 'Commercial Electrician', 'Licensed electrical contractor for commercial and residential projects', 100.00, 1),

-- Quebec Services
(14, 'Plumbing Services', 'Plomberie Professionnelle', 'Service de plomberie résidentielle et commerciale / Residential and commercial plumbing', 85.00, 1),
(15, 'Roofing', 'Couverture Québec Roofing', 'Toiture résidentielle et réparations / Residential roofing and repairs', 72.00, 1);

-- Insert user profiles with professional descriptions
INSERT INTO user_profiles (user_id, bio, business_name, website_url) VALUES
(1, 'Certified flooring installer with over 10 years of experience in Calgary. Specializing in hardwood, laminate, and luxury vinyl installations for residential properties.', 'Smith Premium Flooring', 'https://smithflooring.ca'),
(2, 'Professional flooring contractor serving Edmonton and surrounding areas. Expert in all types of residential flooring with a focus on quality craftsmanship.', 'Doe Flooring Solutions', 'https://doeflooring.ca'),
(3, 'Licensed Master Electrician (Alberta) providing reliable electrical services throughout Calgary. Specializing in residential electrical upgrades and smart home installations.', 'Brown Electric Services', 'https://brownelectric.ca'),
(6, 'Professional cleaning service with 8+ years serving the Greater Toronto Area. Fully insured and bonded with eco-friendly cleaning solutions.', 'Wilson Cleaning Co', 'https://wilsoncleaning.ca'),
(7, 'Licensed Master Plumber serving Toronto and GTA. Available for emergency calls 24/7 with competitive rates and guaranteed workmanship.', 'Johnson Plumbing Services', 'https://johnsonplumbing.ca'),
(11, 'Sustainable flooring specialist in Vancouver focused on eco-friendly materials and green installation practices.', 'Pacific Coast Flooring', 'https://pacificflooring.ca'),
(14, 'Plombier licencié desservant Montréal et les environs. Service bilingue disponible pour résidentiel et commercial.', 'Plomberie Dubois', 'https://plomberiedubois.ca');
