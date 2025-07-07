<script lang="ts">
	import Header from './Header.svelte';
	import '../app.css';

	let { children } = $props();
</script>

<div class="app">
	<Header />

	<main class="main">
		{@render children()}
	</main>

	<footer class="footer bg-gradient-dark">
		<div class="container">
			<div class="footer-content">
				<div class="footer-brand">
					<div class="footer-logo">
						<div class="footer-logo-container">
							<div class="footer-logo-icon">
								<img src="/pothos-ca.png" alt="Pothos CA Logo" width="40" height="40" />
							</div>
							<div class="footer-logo-text">
								<h3 class="footer-brand-name">Pothos</h3>
								<p class="footer-tagline">Consulting & Advising</p>
							</div>
						</div>
					</div>
					<p class="footer-description">
						Transforming organizations through strategic excellence, operational efficiency, and
						leadership development. We partner with ambitious companies to achieve sustainable
						growth and lasting success.
					</p>
				</div>

				<div class="footer-nav">
					<div class="footer-section">
						<h4 class="footer-section-title">Services</h4>
						<ul class="footer-links">
							<li><a href="/services" class="link-hover">Strategic Growth Consulting</a></li>
							<li><a href="/services" class="link-hover">Operational Excellence</a></li>
							<li><a href="/services" class="link-hover">Leadership Development</a></li>
							<li><a href="/services" class="link-hover">Digital Transformation</a></li>
						</ul>
					</div>

					<div class="footer-section">
						<h4 class="footer-section-title">Company</h4>
						<ul class="footer-links">
							<li><a href="/about" class="link-hover">Our Story</a></li>
							<li><a href="/about" class="link-hover">Our Team</a></li>
							<li><a href="/about" class="link-hover">Our Values</a></li>
							<li><a href="/contact" class="link-hover">Careers</a></li>
						</ul>
					</div>

					<div class="footer-section">
						<h4 class="footer-section-title">Resources</h4>
						<ul class="footer-links">
							<li><a href="/contact" class="link-hover">Case Studies</a></li>
							<li><a href="/contact" class="link-hover">Insights</a></li>
							<li><a href="/contact" class="link-hover">Downloads</a></li>
							<li><a href="/contact" class="link-hover">Support</a></li>
						</ul>
					</div>
				</div>

				<div class="footer-contact">
					<h4 class="footer-section-title">Get Started</h4>
					<p class="footer-contact-description">
						Ready to transform your business? Let's start the conversation.
					</p>

					<div class="footer-contact-methods">
						<a href="mailto:pothosca@gmail.com" class="contact-method">
							<span class="contact-icon">
								<svg
									width="20"
									height="20"
									viewBox="0 0 24 24"
									fill="none"
									stroke="currentColor"
									stroke-width="2"
								>
									<path
										d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"
									/>
									<polyline points="22,6 12,13 2,6" />
								</svg>
							</span>
							<span class="contact-text">
								<strong>Email Us</strong>
								<small>pothosca@gmail.com</small>
							</span>
						</a>
						<a href="tel:+18636081393" class="contact-method">
							<span class="contact-icon">
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
							</span>
							<span class="contact-text">
								<strong>Call Us</strong>
								<small>+1 (863) 608-1393</small>
							</span>
						</a>
					</div>

					<div class="footer-cta">
						<a href="/contact" class="btn btn-primary">Start the Conversation</a>
					</div>
				</div>
			</div>
		</div>

		<div class="footer-bottom">
			<div class="container">
				<div class="footer-bottom-content">
					<div class="footer-legal">
						<p>
							&copy; {new Date().getFullYear()} Pothos Consulting & Advising. All rights reserved.
						</p>
						<div class="footer-legal-links">
							<a href="/privacy" class="link-hover">Privacy Policy</a>
							<a href="/terms" class="link-hover">Terms of Service</a>
							<a href="/contact" class="link-hover">Cookie Policy</a>
						</div>
					</div>

					<div class="footer-social">
						<p class="footer-social-text">Connect With Us</p>
						<div class="social-links">
							<a
								href="https://linkedin.com/company/pothos-ca"
								class="social-link"
								aria-label="LinkedIn"
							>
								<svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
									<path
										d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"
									/>
								</svg>
							</a>
							<a href="https://twitter.com/pothos_ca" class="social-link" aria-label="Twitter">
								<svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
									<path
										d="M23.953 4.57a10 10 0 01-2.825.775 4.958 4.958 0 002.163-2.723c-.951.555-2.005.959-3.127 1.184a4.92 4.92 0 00-8.384 4.482C7.69 8.095 4.067 6.13 1.64 3.162a4.822 4.822 0 00-.666 2.475c0 1.71.87 3.213 2.188 4.096a4.904 4.904 0 01-2.228-.616v.06a4.923 4.923 0 003.946 4.827 4.996 4.996 0 01-2.212.085 4.936 4.936 0 004.604 3.417 9.867 9.867 0 01-6.102 2.105c-.39 0-.779-.023-1.17-.067a13.995 13.995 0 007.557 2.209c9.053 0 13.998-7.496 13.998-13.985 0-.21 0-.42-.015-.63A9.935 9.935 0 0024 4.59z"
									/>
								</svg>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
</div>

<style>
	@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap');

	.app {
		display: flex;
		flex-direction: column;
		min-height: 100vh;
		background: var(--color-background);
	}

	.main {
		flex: 1;
		padding-top: 80px;
		position: relative;
	}

	.footer {
		position: relative;
		overflow: hidden;
		margin-top: var(--space-32);
	}

	.footer-content {
		display: grid;
		grid-template-columns: 1fr 2fr 1fr;
		gap: var(--space-12);
		padding: var(--space-20) 0 var(--space-16);
	}

	.footer-brand {
		grid-column: span 1;
	}

	.footer-logo {
		margin-bottom: var(--space-6);
	}

	.footer-logo-container {
		display: flex;
		align-items: center;
		gap: var(--space-2);
		background: var(--color-background);
		padding: var(--space-4);
		border-radius: var(--radius-xl);
		box-shadow: var(--shadow-lg);
		border: 1px solid rgba(255, 255, 255, 0.1);
		transition: var(--transition-base);
		width: fit-content;
	}

	.footer-logo-container:hover {
		transform: translateY(-2px);
		box-shadow: var(--shadow-xl);
	}

	.footer-logo-icon {
		display: flex;
		align-items: center;
		justify-content: center;
	}

	.footer-brand-name {
		font-family: var(--font-display);
		font-size: 1.5rem;
		font-weight: 700;
		margin: 0 0 2px;
		line-height: 1;
		color: var(--color-forest-700);
		letter-spacing: -0.02em;
	}

	.footer-tagline {
		font-size: 0.7rem;
		color: var(--color-stone-500);
		font-weight: 500;
		margin: 0;
		letter-spacing: 0.5px;
		text-transform: uppercase;
		line-height: 1;
	}

	.footer-description {
		color: var(--color-cream-200);
		font-size: 1rem;
		line-height: 1.6;
		margin-bottom: 0;
	}

	.footer-nav {
		display: grid;
		grid-template-columns: repeat(3, 1fr);
		gap: var(--space-8);
		grid-column: span 1;
	}

	.footer-section-title {
		color: var(--color-cream-50);
		font-size: 1rem;
		font-weight: 600;
		margin: 0 0 var(--space-4);
		font-family: var(--font-display);
	}

	.footer-links {
		list-style: none;
		margin: 0;
		padding: 0;
		display: flex;
		flex-direction: column;
		gap: var(--space-3);
	}

	.footer-links a {
		color: var(--color-cream-200);
		text-decoration: none;
		font-size: 0.9rem;
		display: block;
		padding: var(--space-1) 0;
	}

	.footer-links a:hover {
		color: var(--color-cream-50);
	}

	.footer-contact {
		grid-column: span 1;
	}

	.footer-contact-description {
		color: var(--color-cream-200);
		font-size: 0.95rem;
		line-height: 1.6;
		margin-bottom: var(--space-6);
	}

	.footer-contact-methods {
		display: flex;
		flex-direction: column;
		gap: var(--space-3);
		margin-bottom: var(--space-6);
	}

	.contact-method {
		display: flex;
		align-items: center;
		gap: var(--space-3);
		padding: var(--space-3);
		background: rgba(117, 149, 132, 0.1);
		border-radius: var(--radius-lg);
		color: var(--color-cream-100);
		text-decoration: none;
		transition: var(--transition-base);
		border: 1px solid rgba(117, 149, 132, 0.15);
	}

	.contact-method:hover {
		background: rgba(117, 149, 132, 0.2);
		border-color: rgba(117, 149, 132, 0.3);
		transform: translateX(4px);
	}

	.contact-icon {
		flex-shrink: 0;
		color: var(--color-cream-200);
	}

	.contact-text {
		display: flex;
		flex-direction: column;
		gap: 2px;
	}

	.contact-text strong {
		font-weight: 600;
		color: var(--color-cream-50);
		font-size: 0.9rem;
	}

	.contact-text small {
		font-size: 0.8rem;
		color: var(--color-cream-300);
	}

	.footer-cta {
		display: flex;
		flex-direction: column;
		gap: var(--space-3);
	}

	.footer-bottom {
		border-top: 1px solid rgba(117, 149, 132, 0.2);
		background: rgba(0, 0, 0, 0.2);
	}

	.footer-bottom-content {
		display: flex;
		justify-content: space-between;
		align-items: center;
		gap: var(--space-8);
		padding: var(--space-6) 0;
	}

	.footer-legal {
		display: flex;
		flex-direction: column;
		gap: var(--space-3);
	}

	.footer-legal p {
		margin: 0;
		color: var(--color-cream-300);
		font-size: 0.85rem;
	}

	.footer-legal-links {
		display: flex;
		gap: var(--space-6);
	}

	.footer-legal-links a {
		color: var(--color-cream-300);
		text-decoration: none;
		font-size: 0.8rem;
	}

	.footer-legal-links a:hover {
		color: var(--color-cream-100);
	}

	.footer-social {
		display: flex;
		flex-direction: column;
		align-items: flex-end;
		gap: var(--space-2);
	}

	.footer-social-text {
		margin: 0;
		color: var(--color-cream-300);
		font-size: 0.85rem;
		font-weight: 500;
	}

	.social-links {
		display: flex;
		gap: var(--space-3);
	}

	.social-link {
		display: flex;
		align-items: center;
		justify-content: center;
		width: 36px;
		height: 36px;
		background: rgba(117, 149, 132, 0.2);
		border-radius: var(--radius-lg);
		color: var(--color-cream-200);
		text-decoration: none;
		transition: var(--transition-base);
		border: 1px solid rgba(117, 149, 132, 0.3);
	}

	.social-link:hover {
		background: rgba(117, 149, 132, 0.4);
		color: var(--color-cream-50);
		transform: translateY(-2px);
		border-color: rgba(117, 149, 132, 0.5);
	}

	@media (max-width: 1024px) {
		.footer-content {
			grid-template-columns: 1fr 1fr;
			gap: var(--space-10);
		}

		.footer-brand {
			grid-column: span 2;
		}

		.footer-nav {
			grid-column: span 1;
		}

		.footer-contact {
			grid-column: span 1;
		}
	}

	@media (max-width: 768px) {
		.footer {
			margin-top: var(--space-20);
		}

		.footer-content {
			grid-template-columns: 1fr;
			gap: var(--space-8);
			padding: var(--space-16) 0 var(--space-12);
		}

		.footer-brand,
		.footer-nav,
		.footer-contact {
			grid-column: span 1;
		}

		.footer-nav {
			grid-template-columns: repeat(2, 1fr);
			gap: var(--space-6);
		}

		.footer-bottom-content {
			flex-direction: column;
			align-items: flex-start;
			gap: var(--space-4);
		}

		.footer-social {
			align-items: flex-start;
		}

		.footer-legal {
			order: 2;
		}

		.footer-social {
			order: 1;
		}
	}

	@media (max-width: 480px) {
		.footer-content {
			padding: var(--space-12) 0 var(--space-8);
		}

		.footer-nav {
			grid-template-columns: 1fr;
		}

		.footer-legal-links {
			flex-direction: column;
			gap: var(--space-2);
		}

		.footer-logo-container {
			flex-direction: column;
			text-align: center;
			gap: var(--space-3);
			align-self: center;
		}

		.footer-bottom-content {
			padding: var(--space-4) 0;
		}
	}
</style>
