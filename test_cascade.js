// Test script to verify cascade mathematical accuracy

// Service-specific province distribution
const serviceProvinceData = {
  'Cleaning Services': [
    { province: 'ON', worker_count: 24, name: 'Ontario' },
    { province: 'QC', worker_count: 12, name: 'Quebec' },
    { province: 'BC', worker_count: 12, name: 'British Columbia' },
    { province: 'AB', worker_count: 10, name: 'Alberta' },
    { province: 'MB', worker_count: 2, name: 'Manitoba' },
    { province: 'SK', worker_count: 2, name: 'Saskatchewan' },
    { province: 'NS', worker_count: 1, name: 'Nova Scotia' },
    { province: 'NB', worker_count: 1, name: 'New Brunswick' }
  ]
};

// Base city distribution ratios
const baseCityDistribution = {
  'ON': [
    { city: 'Toronto', ratio: 0.25 },      // 25%
    { city: 'Ottawa', ratio: 0.16 },       // 16%
    { city: 'Mississauga', ratio: 0.13 },  // 13%
    { city: 'Hamilton', ratio: 0.10 },     // 10%
    { city: 'London', ratio: 0.09 },       // 9%
    { city: 'Markham', ratio: 0.08 },      // 8%
    { city: 'Vaughan', ratio: 0.07 },      // 7%
    { city: 'Kitchener', ratio: 0.05 },    // 5%
    { city: 'Other Cities', ratio: 0.07 }  // 7%
  ]
};

// Function to calculate dynamic city distribution
function calculateCityDistribution(province, serviceType) {
  console.log('Testing with:', { province, serviceType });
  
  // Get service-specific province total
  let provinceTotal = 0;
  if (serviceType && serviceProvinceData[serviceType]) {
    const provinceData = serviceProvinceData[serviceType].find(p => p.province === province);
    provinceTotal = provinceData ? provinceData.worker_count : 0;
    console.log('Province total for', serviceType, 'in', province, ':', provinceTotal);
  }
  
  // Get base city distribution for this province
  const baseCities = baseCityDistribution[province] || [];
  if (baseCities.length === 0 || provinceTotal === 0) {
    return [];
  }
  
  // Calculate proportional worker counts
  let cityDistribution = baseCities.map(city => ({
    city: city.city,
    worker_count: Math.round(city.ratio * provinceTotal)
  }));
  
  console.log('Initial distribution:', cityDistribution);
  
  // Adjust for rounding errors to ensure exact sum
  const currentSum = cityDistribution.reduce((sum, city) => sum + city.worker_count, 0);
  const difference = provinceTotal - currentSum;
  
  console.log('Sum check:', { currentSum, provinceTotal, difference });
  
  if (difference !== 0) {
    // Adjust the largest city to compensate for rounding errors
    const largestCityIndex = cityDistribution.reduce((maxIndex, city, index, arr) => 
      city.worker_count > arr[maxIndex].worker_count ? index : maxIndex, 0);
    cityDistribution[largestCityIndex].worker_count += difference;
    console.log('Adjusted largest city by', difference);
  }
  
  // Filter out cities with 0 workers and sort by worker count
  const finalDistribution = cityDistribution
    .filter(city => city.worker_count > 0)
    .sort((a, b) => b.worker_count - a.worker_count);
    
  console.log('Final distribution:', finalDistribution);
  
  // Verify the sum
  const finalSum = finalDistribution.reduce((sum, city) => sum + city.worker_count, 0);
  console.log('Final sum verification:', finalSum, '=== province total:', provinceTotal, '?', finalSum === provinceTotal);
  
  return finalDistribution;
}

// Test the specific case mentioned: Cleaning Services in Ontario (24 workers)
console.log('=== TESTING: Cleaning Services in Ontario (24 workers) ===');
const result = calculateCityDistribution('ON', 'Cleaning Services');
console.log('\n=== RESULT ===');
result.forEach(city => {
  console.log(`${city.city}: ${city.worker_count} workers`);
});

const total = result.reduce((sum, city) => sum + city.worker_count, 0);
console.log(`\nTotal: ${total} workers (should be 24)`);
console.log('Mathematical accuracy:', total === 24 ? '✅ CORRECT' : '❌ INCORRECT');