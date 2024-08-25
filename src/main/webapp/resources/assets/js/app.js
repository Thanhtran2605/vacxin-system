/**
 * 
 */


$(document).ready(function() {
	const urlParams = new URLSearchParams(window.location.search);
	let sort = urlParams.get('sort');
	const countryFilter = urlParams.get('country');
	const diseaseFilter = urlParams.get('disease');

	if (countryFilter) {
		countryFilter.split(',').forEach(value => {
			$(`#countryFilter input[value="${value}"]`).prop('checked', true);
		});
	}

	if (diseaseFilter) {
		diseaseFilter.split(',').forEach(value => {
			$(`#diseaseFilter input[value="${value}"]`).prop('checked', true);
		});
	}

	if (sort) {
		$(`input[name="sort-price"][value="${sort}"]`).prop('checked', true);
	} else {
		$('input[name="sort-price"][value="price,default"]').prop('checked', true);
	}
	$('#btnFilter').click(function(event) {
		event.preventDefault();
		let countryArray = [];
		let diseaseArray = [];
		let sort = $('input[name="sort-price"]:checked').val();

		$('#countryFilter .form-check-input:checked').each(function() {
			countryArray.push($(this).val());
		});
		$('#diseaseFilter .form-check-input:checked').each(function() {
			diseaseArray.push($(this).val());
		});

		const currentURL = new URL(window.location.href);
		const searchParams = currentURL.searchParams;
		searchParams.set('page', '1');
		if (sort != "price,default") {
			searchParams.set('sort', sort);
		} else {
			searchParams.delete('sort');
		}

		searchParams.delete('country');
		searchParams.delete('disease');

		if (countryArray.length > 0) {
			searchParams.set('country', countryArray.join(','));
		}
		if (diseaseArray.length > 0) {
			searchParams.set('disease', diseaseArray.join(','));
		}

		window.location.href = currentURL.toString();
	});
});
