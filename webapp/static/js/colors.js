// Get the temperature colour.
function getTempColor(countryName) {
  if (COUNTRIES.includes(countryName)) {
    let temp = TEMPS_2010.temperature[countryName];
    let perc = (temp + 10) / 30;
    let returnColor = d3.scaleLinear()
        .domain([0, 0.25, 0.5, 0.75, 1.0])
        .range(['#FAD6D6',
                '#E67366',
                '#de5842',
                '#B33528',
                '#8E2019'])
    return returnColor(perc)
  };
  return 'white';
}
