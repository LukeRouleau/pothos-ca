<script lang="ts">
	import { onMount } from 'svelte';

	let mounted = false;
	let formData = {
		name: '',
		email: '',
		company: '',
		budget: '',
		message: ''
	};

	onMount(() => {
		mounted = true;
	});

	const contactMethods = [
		{
			icon: `<svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
				<path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"/>
				<polyline points="22,6 12,13 2,6"/>
			</svg>`,
			title: 'Email',
			value: 'hello@pothosca.com',
			description: "Send us an email and we'll respond within 24 hours",
			link: 'mailto:hello@pothosca.com'
		},
		{
			icon: `<svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
				<path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z"/>
				<rect width="4" height="12" x="2" y="9"/>
				<circle cx="4" cy="4" r="2"/>
			</svg>`,
			title: 'LinkedIn',
			value: '@pothosca',
			description: 'Connect with us on LinkedIn for updates and insights',
			link: 'https://www.linkedin.com/company/pothosca'
		},
		{
			icon: `<svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
				<path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"/>
			</svg>`,
			title: 'Schedule Call',
			value: 'Book a Discovery Call',
			description: 'Schedule a free 30-minute consultation to discuss your project',
			link: 'mailto:hello@pothosca.com?subject=Discovery%20Call%20Request'
		}
	];

	const faqs = [
		{
			question: "What's the typical project timeline?",
			answer:
				'Project timelines vary based on scope and complexity. Most projects range from 2-12 weeks, with strategic consulting engagements typically taking 1-4 weeks.'
		},
		{
			question: 'Do you work with startups?',
			answer:
				'Absolutely! We work with organizations of all sizes, from early-stage startups to Fortune 500 companies. We tailor our approach to fit your stage and budget.'
		},
		{
			question: 'What technologies do you specialize in?',
			answer:
				"We're technology-agnostic and choose the best tools for your specific needs. Our expertise spans TypeScript, Go, Rust, Python, React, Svelte, cloud platforms, and more."
		},
		{
			question: 'Can you help with existing projects?',
			answer:
				'Yes! We frequently work on legacy system modernization, performance optimization, and rescue missions for stalled projects.'
		}
	];
</script>

<svelte:head>
	<title>Contact | Pothos Consulting & Advising</title>
	<meta
		name="description"
		content="Get in touch with the PothosCA team to discuss your next project. Schedule a free consultation or send us a message."
	/>
</svelte:head>

<!-- Hero Section -->
<section class="hero">
	<div class="container">
		<div class="hero-content" class:mounted>
			<div class="hero-badge">
				<span class="badge-icon">💬</span>
				<span class="badge-text">Get in Touch</span>
			</div>

			<h1 class="hero-title">
				Let's <span class="gradient-text">Grow</span> Something Incredible Together
			</h1>

			<p class="hero-subtitle">
				Have a project in mind or simply exploring options? We'd love to hear from you. Send us a
				message, and we'll respond within one business day.
			</p>
		</div>
	</div>
</section>

<!-- Contact Methods Section -->
<section class="contact-methods-section">
	<div class="container">
		<div class="contact-methods-grid">
			{#each contactMethods as method, i}
				<a
					href={method.link}
					class="contact-method"
					class:mounted
					style="animation-delay: {i * 150}ms"
					target={method.link.startsWith('http') ? '_blank' : '_self'}
					rel={method.link.startsWith('http') ? 'noopener noreferrer' : ''}
				>
					<div class="method-icon">
						<!-- eslint-disable-next-line svelte/no-at-html-tags -->
						{@html method.icon}
					</div>
					<div class="method-content">
						<h3 class="method-title">{method.title}</h3>
						<div class="method-value">{method.value}</div>
						<p class="method-description">{method.description}</p>
					</div>
					<div class="method-arrow">
						<svg
							width="20"
							height="20"
							viewBox="0 0 24 24"
							fill="none"
							stroke="currentColor"
							stroke-width="2"
						>
							<path d="m9 18 6-6-6-6" />
						</svg>
					</div>
				</a>
			{/each}
		</div>
	</div>
</section>

<!-- Contact Form Section -->
<section class="contact-form-section">
	<div class="container">
		<div class="form-layout">
			<div class="form-header" class:mounted>
				<h2>Tell Us About Your Project</h2>
				<p>
					Fill out the form below and we'll get back to you within 24 hours. All fields marked with
					* are required.
				</p>
			</div>

			<form
				class="contact-form"
				class:mounted
				action="https://formspree.io/f/placeholder"
				method="POST"
			>
				<div class="form-grid">
					<div class="form-group">
						<label for="name">Full Name *</label>
						<input
							type="text"
							id="name"
							name="name"
							bind:value={formData.name}
							required
							placeholder="John Smith"
						/>
					</div>

					<div class="form-group">
						<label for="email">Email Address *</label>
						<input
							type="email"
							id="email"
							name="email"
							bind:value={formData.email}
							required
							placeholder="john@company.com"
						/>
					</div>

					<div class="form-group">
						<label for="company">Company</label>
						<input
							type="text"
							id="company"
							name="company"
							bind:value={formData.company}
							placeholder="Your Company"
						/>
					</div>

					<div class="form-group">
						<label for="budget">Project Budget</label>
						<select id="budget" name="budget" bind:value={formData.budget}>
							<option value="">Select budget range</option>
							<option value="under-25k">Under $25k</option>
							<option value="25k-50k">$25k - $50k</option>
							<option value="50k-100k">$50k - $100k</option>
							<option value="100k-250k">$100k - $250k</option>
							<option value="250k-plus">$250k+</option>
						</select>
					</div>
				</div>

				<div class="form-group">
					<label for="message">Project Details *</label>
					<textarea
						id="message"
						name="message"
						bind:value={formData.message}
						rows="6"
						required
						placeholder="Tell us about your project goals, timeline, and any specific challenges you're facing..."
					></textarea>
				</div>

				<div class="form-footer">
					<button type="submit" class="btn btn-primary btn-lg">
						<span>Send Message</span>
						<svg
							width="20"
							height="20"
							viewBox="0 0 24 24"
							fill="none"
							stroke="currentColor"
							stroke-width="2"
						>
							<path d="m22 2-7 20-4-9-9-4z" />
							<path d="M22 2 11 13" />
						</svg>
					</button>

					<p class="form-note">
						By submitting this form, you agree to our
						<a href="/privacy" class="text-link">privacy policy</a>. We'll never share your
						information with third parties.
					</p>
				</div>
			</form>
		</div>
	</div>
</section>

<!-- FAQ Section -->
<section class="faq-section">
	<div class="container">
		<div class="section-header">
			<div class="section-badge">
				<span class="badge-icon">❓</span>
				<span class="badge-text">Frequently Asked</span>
			</div>
			<h2 class="section-title">Common Questions</h2>
			<p class="section-subtitle">
				Here are answers to some of the most common questions we receive. Don't see yours? Feel free
				to reach out directly.
			</p>
		</div>

		<div class="faq-grid">
			{#each faqs as faq, i}
				<div class="faq-item" class:mounted style="animation-delay: {i * 100}ms">
					<h3 class="faq-question">{faq.question}</h3>
					<p class="faq-answer">{faq.answer}</p>
				</div>
			{/each}
		</div>
	</div>
</section>

<!-- Alternative Contact Section -->
<section class="alt-contact-section">
	<div class="container">
		<div class="alt-contact-content">
			<h2>Prefer to Talk Directly?</h2>
			<p>
				Sometimes a conversation is worth a thousand emails. Book a free 30-minute discovery call to
				discuss your project in detail.
			</p>
			<a
				href="mailto:hello@pothosca.com?subject=Discovery%20Call%20Request"
				class="btn btn-secondary btn-lg"
			>
				<span>Schedule Discovery Call</span>
				<svg
					width="20"
					height="20"
					viewBox="0 0 24 24"
					fill="none"
					stroke="currentColor"
					stroke-width="2"
				>
					<path
						d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"
					/>
				</svg>
			</a>
		</div>
	</div>
</section>

<style>
	/* Hero Section */
	.hero {
		padding: var(--space-32) 0 var(--space-20) 0;
		background: linear-gradient(135deg, var(--color-bg-secondary) 0%, var(--color-bg-primary) 100%);
		border-bottom: 1px solid var(--color-neutral-200);
	}

	.hero-content {
		text-align: center;
		max-width: 800px;
		margin: 0 auto;
		opacity: 0;
		transform: translateY(30px);
		transition: all var(--duration-500) var(--ease-out);
	}

	.hero-content.mounted {
		opacity: 1;
		transform: translateY(0);
	}

	.hero-badge {
		display: inline-flex;
		align-items: center;
		gap: var(--space-2);
		background: rgba(22, 163, 74, 0.1);
		border: 1px solid rgba(22, 163, 74, 0.2);
		border-radius: var(--radius-full);
		padding: var(--space-2) var(--space-4);
		font-size: var(--text-sm);
		font-weight: 500;
		color: var(--color-accent);
		margin-bottom: var(--space-8);
	}

	.badge-icon {
		font-size: var(--text-base);
	}

	.hero-title {
		font-size: clamp(2.5rem, 4vw, 3.5rem);
		font-weight: 700;
		line-height: 1.2;
		margin-bottom: var(--space-6);
		color: var(--color-text-primary);
	}

	.gradient-text {
		background: linear-gradient(135deg, var(--color-accent) 0%, var(--color-primary-500) 100%);
		-webkit-background-clip: text;
		-webkit-text-fill-color: transparent;
		background-clip: text;
	}

	.hero-subtitle {
		font-size: var(--text-xl);
		color: var(--color-text-secondary);
		margin: 0;
		max-width: 600px;
		margin-left: auto;
		margin-right: auto;
		line-height: 1.6;
	}

	/* Contact Methods Section */
	.contact-methods-section {
		padding: var(--space-20) 0;
		background: var(--color-bg-secondary);
	}

	.contact-methods-grid {
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
		gap: var(--space-6);
	}

	.contact-method {
		display: flex;
		align-items: center;
		gap: var(--space-4);
		background: var(--color-bg-secondary);
		border: 1px solid var(--color-neutral-200);
		border-radius: var(--radius-2xl);
		padding: var(--space-6);
		text-decoration: none;
		color: inherit;
		transition: all var(--duration-300) var(--ease-out);
		opacity: 0;
		transform: translateY(20px);
		box-shadow: var(--shadow-sm);
	}

	.contact-method.mounted {
		opacity: 1;
		transform: translateY(0);
	}

	.contact-method:hover {
		transform: translateY(-4px);
		box-shadow: var(--shadow-lg);
		border-color: var(--color-primary-200);
		text-decoration: none;
		color: inherit;
	}

	.method-icon {
		flex-shrink: 0;
		padding: var(--space-3);
		background: linear-gradient(135deg, var(--color-accent) 0%, var(--color-primary-500) 100%);
		border-radius: var(--radius-xl);
		color: white;
		display: flex;
		align-items: center;
		justify-content: center;
	}

	.method-content {
		flex: 1;
	}

	.method-title {
		font-size: var(--text-lg);
		font-weight: 600;
		color: var(--color-text-primary);
		margin-bottom: var(--space-1);
	}

	.method-value {
		font-size: var(--text-base);
		font-weight: 500;
		color: var(--color-accent);
		margin-bottom: var(--space-2);
	}

	.method-description {
		font-size: var(--text-sm);
		color: var(--color-text-secondary);
		margin: 0;
		line-height: 1.5;
	}

	.method-arrow {
		flex-shrink: 0;
		color: var(--color-text-tertiary);
		transition: transform var(--duration-200) var(--ease-out);
	}

	.contact-method:hover .method-arrow {
		transform: translateX(4px);
		color: var(--color-accent);
	}

	/* Contact Form Section */
	.contact-form-section {
		padding: var(--space-32) 0;
		background: var(--color-bg-primary);
	}

	.form-layout {
		max-width: 800px;
		margin: 0 auto;
	}

	.form-header {
		text-align: center;
		margin-bottom: var(--space-12);
		opacity: 0;
		transform: translateY(30px);
		transition: all var(--duration-500) var(--ease-out);
	}

	.form-header.mounted {
		opacity: 1;
		transform: translateY(0);
	}

	.form-header h2 {
		font-size: var(--text-3xl);
		font-weight: 600;
		color: var(--color-text-primary);
		margin-bottom: var(--space-4);
	}

	.form-header p {
		font-size: var(--text-lg);
		color: var(--color-text-secondary);
		margin: 0;
		line-height: 1.6;
	}

	.contact-form {
		background: var(--color-bg-secondary);
		border: 1px solid var(--color-neutral-200);
		border-radius: var(--radius-2xl);
		padding: var(--space-10);
		box-shadow: var(--shadow-lg);
		opacity: 0;
		transform: translateY(30px);
		transition: all var(--duration-500) var(--ease-out);
	}

	.contact-form.mounted {
		opacity: 1;
		transform: translateY(0);
	}

	.form-grid {
		display: grid;
		grid-template-columns: repeat(2, 1fr);
		gap: var(--space-6);
		margin-bottom: var(--space-6);
	}

	.form-group {
		display: flex;
		flex-direction: column;
		gap: var(--space-2);
	}

	.form-group label {
		font-size: var(--text-sm);
		font-weight: 600;
		color: var(--color-text-primary);
		margin-bottom: var(--space-1);
	}

	.form-group input,
	.form-group select,
	.form-group textarea {
		padding: var(--space-4);
		border: 2px solid var(--color-neutral-200);
		border-radius: var(--radius-lg);
		font-size: var(--text-base);
		font-family: inherit;
		background: var(--color-bg-secondary);
		color: var(--color-text-primary);
		transition: all var(--duration-200) var(--ease-out);
		resize: vertical;
	}

	.form-group input:focus,
	.form-group select:focus,
	.form-group textarea:focus {
		outline: none;
		border-color: var(--color-accent);
		box-shadow: 0 0 0 3px rgba(22, 163, 74, 0.1);
	}

	.form-group input::placeholder,
	.form-group textarea::placeholder {
		color: var(--color-text-tertiary);
	}

	.form-footer {
		text-align: center;
		margin-top: var(--space-8);
	}

	.form-footer .btn {
		margin-bottom: var(--space-4);
	}

	.form-note {
		font-size: var(--text-sm);
		color: var(--color-text-secondary);
		margin: 0;
		line-height: 1.5;
	}

	.text-link {
		color: var(--color-accent);
		text-decoration: none;
		font-weight: 500;
	}

	.text-link:hover {
		text-decoration: underline;
	}

	.btn-lg {
		padding: var(--space-4) var(--space-8);
		font-size: var(--text-lg);
		font-weight: 600;
		display: inline-flex;
		align-items: center;
		gap: var(--space-2);
	}

	/* FAQ Section */
	.faq-section {
		padding: var(--space-32) 0;
		background: var(--color-bg-secondary);
	}

	.section-header {
		text-align: center;
		margin-bottom: var(--space-20);
		max-width: 700px;
		margin-left: auto;
		margin-right: auto;
	}

	.section-badge {
		display: inline-flex;
		align-items: center;
		gap: var(--space-2);
		background: rgba(22, 163, 74, 0.1);
		border: 1px solid rgba(22, 163, 74, 0.2);
		border-radius: var(--radius-full);
		padding: var(--space-2) var(--space-4);
		font-size: var(--text-sm);
		font-weight: 500;
		color: var(--color-accent);
		margin-bottom: var(--space-6);
	}

	.section-title {
		margin-bottom: var(--space-6);
		color: var(--color-text-primary);
	}

	.section-subtitle {
		font-size: var(--text-lg);
		color: var(--color-text-secondary);
		margin: 0;
		line-height: 1.6;
	}

	.faq-grid {
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
		gap: var(--space-8);
	}

	.faq-item {
		background: var(--color-bg-secondary);
		border: 1px solid var(--color-neutral-200);
		border-radius: var(--radius-2xl);
		padding: var(--space-8);
		box-shadow: var(--shadow-sm);
		opacity: 0;
		transform: translateY(20px);
		transition: all var(--duration-500) var(--ease-out);
	}

	.faq-item.mounted {
		opacity: 1;
		transform: translateY(0);
	}

	.faq-question {
		font-size: var(--text-lg);
		font-weight: 600;
		color: var(--color-text-primary);
		margin-bottom: var(--space-4);
	}

	.faq-answer {
		color: var(--color-text-secondary);
		line-height: 1.6;
		margin: 0;
	}

	/* Alternative Contact Section */
	.alt-contact-section {
		padding: var(--space-32) 0;
		background: linear-gradient(135deg, var(--color-neutral-900) 0%, var(--color-neutral-800) 100%);
		color: var(--color-neutral-100);
	}

	.alt-contact-content {
		text-align: center;
		max-width: 600px;
		margin: 0 auto;
	}

	.alt-contact-content h2 {
		font-size: var(--text-4xl);
		font-weight: 700;
		color: var(--color-neutral-50);
		margin-bottom: var(--space-6);
	}

	.alt-contact-content p {
		font-size: var(--text-lg);
		color: var(--color-neutral-300);
		margin-bottom: var(--space-10);
		line-height: 1.6;
	}

	/* Mobile Responsive */
	@media (max-width: 768px) {
		.contact-methods-grid {
			grid-template-columns: 1fr;
		}

		.contact-method {
			flex-direction: column;
			text-align: center;
			gap: var(--space-6);
		}

		.method-arrow {
			display: none;
		}

		.form-grid {
			grid-template-columns: 1fr;
		}

		.faq-grid {
			grid-template-columns: 1fr;
		}
	}

	@media (max-width: 640px) {
		.hero {
			padding: var(--space-20) 0 var(--space-16) 0;
		}

		.contact-methods-section,
		.contact-form-section,
		.faq-section {
			padding: var(--space-20) 0;
		}

		.alt-contact-section {
			padding: var(--space-20) 0;
		}

		.contact-form {
			padding: var(--space-6);
		}
	}
</style>
