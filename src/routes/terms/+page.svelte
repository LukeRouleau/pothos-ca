<svelte:head>
	<title>Terms of Service | Pothos Consulting & Advising</title>
	<meta name="description" content="Terms of Service for Pothos Consulting & Advising" />
</svelte:head>

<div class="page-container">
	<div class="container">
		<div class="page-header">
			<h1>Terms of Service</h1>
			<p class="page-description">
				These terms govern the use of our services and website. Last updated: {new Date().getFullYear()}
			</p>
		</div>

		<div class="content">
			<section class="content-section">
				<h2>1. Acceptance of Terms</h2>
				<p>
					By accessing and using Pothos Consulting & Advising's services, you accept and agree to be
					bound by the terms and provision of this agreement.
				</p>
			</section>

			<section class="content-section">
				<h2>2. Services</h2>
				<p>
					Pothos Consulting & Advising provides strategic consulting, operational excellence, and
					leadership development services to businesses and organizations.
				</p>
			</section>

			<section class="content-section">
				<h2>3. Client Responsibilities</h2>
				<p>
					Clients are responsible for providing accurate information, timely feedback, and necessary
					resources to ensure successful engagement outcomes.
				</p>
			</section>

			<section class="content-section">
				<h2>4. Confidentiality</h2>
				<p>
					We maintain strict confidentiality regarding all client information and proprietary data
					shared during our engagements.
				</p>
			</section>

			<section class="content-section">
				<h2>5. Intellectual Property</h2>
				<p>
					All methodologies, frameworks, and deliverables created specifically for clients remain
					the property of the respective parties as outlined in individual engagement agreements.
				</p>
			</section>

			<section class="content-section">
				<h2>6. Limitation of Liability</h2>
				<p>
					Our liability is limited to the fees paid for the specific services provided. We are not
					liable for indirect or consequential damages.
				</p>
			</section>

			<section class="content-section">
				<h2>7. Contact Information</h2>
				<p>
					For questions about these terms, please contact us at <a href="/contact"
						>our contact page</a
					>.
				</p>
			</section>
		</div>
	</div>
</div>

<style>
	.page-container {
		min-height: 60vh;
		padding: var(--space-16) 0;
	}

	.page-header {
		text-align: center;
		margin-bottom: var(--space-16);
	}

	.page-header h1 {
		font-size: 2.5rem;
		color: var(--color-forest-700);
		margin-bottom: var(--space-4);
	}

	.page-description {
		font-size: 1.125rem;
		color: var(--color-stone-600);
		max-width: 600px;
		margin: 0 auto;
		line-height: 1.6;
	}

	.content {
		max-width: 800px;
		margin: 0 auto;
	}

	.content-section {
		margin-bottom: var(--space-8);
	}

	.content-section h2 {
		color: var(--color-forest-700);
		font-size: 1.5rem;
		margin-bottom: var(--space-4);
		padding-bottom: var(--space-2);
		border-bottom: 2px solid var(--color-forest-100);
	}

	.content-section p {
		color: var(--color-stone-700);
		line-height: 1.7;
		font-size: 1rem;
	}

	.content-section a {
		color: var(--color-forest-600);
		text-decoration: underline;
	}

	.content-section a:hover {
		color: var(--color-forest-700);
	}
</style>
