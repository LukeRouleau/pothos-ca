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

	<footer class="footer">
		<div class="container">
			<div class="footer-content">
				<div class="footer-branding">
					<div class="footer-logo">
						<span class="footer-icon">🪴</span>
						<div class="footer-text">
							<h3 class="footer-brand">Pothos<span class="accent">CA</span></h3>
							<p class="footer-tagline">Consulting & Advising</p>
						</div>
					</div>
					<p class="footer-description">
						Cultivating exceptional software solutions through expert guidance, engineering, and strategy.
					</p>
				</div>
				
				<div class="footer-links">
					<div class="footer-section">
						<h4>Services</h4>
						<ul>
							<li><a href="/services">Full-Stack Engineering</a></li>
							<li><a href="/services">Architecture & Strategy</a></li>
							<li><a href="/services">DevOps & Cloud</a></li>
							<li><a href="/services">Team Augmentation</a></li>
						</ul>
					</div>
					
					<div class="footer-section">
						<h4>Company</h4>
						<ul>
							<li><a href="/about">About Us</a></li>
							<li><a href="/contact">Contact</a></li>
							<li><a href="https://www.linkedin.com/company/pothosca" target="_blank" rel="noopener noreferrer">LinkedIn</a></li>
						</ul>
					</div>
					
					<div class="footer-section">
						<h4>Get Started</h4>
						<ul>
							<li><a href="mailto:hello@pothosca.com?subject=Discovery%20Call">Schedule a Call</a></li>
							<li><a href="mailto:hello@pothosca.com?subject=Service%20Inquiry">Request Proposal</a></li>
						</ul>
					</div>
				</div>
			</div>
			
			<div class="footer-bottom">
				<p class="copyright">
					&copy; {new Date().getFullYear()} Pothos Consulting & Advising. All rights reserved.
				</p>
				<div class="footer-social">
					<a href="https://www.linkedin.com/company/pothosca" target="_blank" rel="noopener noreferrer" class="social-link">
						LinkedIn
					</a>
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
		background: var(--color-bg-primary);
	}

	.main {
		flex: 1;
		padding-top: 80px; /* Account for fixed header */
		min-height: calc(100vh - 80px);
	}

	.footer {
		background: linear-gradient(135deg, var(--color-neutral-900) 0%, var(--color-neutral-800) 100%);
		color: var(--color-neutral-100);
		margin-top: var(--space-32);
	}

	.footer-content {
		display: grid;
		grid-template-columns: 1fr 2fr;
		gap: var(--space-16);
		padding: var(--space-20) 0 var(--space-16) 0;
	}

	.footer-branding {
		max-width: 400px;
	}

	.footer-logo {
		display: flex;
		align-items: center;
		gap: var(--space-3);
		margin-bottom: var(--space-6);
	}

	.footer-icon {
		font-size: var(--text-2xl);
		filter: drop-shadow(0 2px 4px rgba(0, 0, 0, 0.3));
	}

	.footer-text {
		display: flex;
		flex-direction: column;
		gap: 0;
	}

	.footer-brand {
		font-family: var(--font-display);
		font-size: var(--text-2xl);
		font-weight: 700;
		color: var(--color-neutral-50);
		margin: 0;
		line-height: 1;
	}

	.accent {
		background: linear-gradient(135deg, var(--color-accent) 0%, var(--color-primary-400) 100%);
		-webkit-background-clip: text;
		-webkit-text-fill-color: transparent;
		background-clip: text;
	}

	.footer-tagline {
		font-size: var(--text-xs);
		font-weight: 500;
		color: var(--color-neutral-400);
		margin: 0;
		letter-spacing: 0.05em;
		text-transform: uppercase;
		line-height: 1;
	}

	.footer-description {
		color: var(--color-neutral-300);
		line-height: 1.6;
		margin-bottom: 0;
	}

	.footer-links {
		display: grid;
		grid-template-columns: repeat(3, 1fr);
		gap: var(--space-8);
	}

	.footer-section h4 {
		font-family: var(--font-body);
		font-size: var(--text-lg);
		font-weight: 600;
		color: var(--color-neutral-50);
		margin: 0 0 var(--space-4) 0;
	}

	.footer-section ul {
		list-style: none;
		padding: 0;
		margin: 0;
	}

	.footer-section li {
		margin-bottom: var(--space-2);
	}

	.footer-section a {
		color: var(--color-neutral-300);
		text-decoration: none;
		font-size: var(--text-sm);
		transition: color var(--duration-200) var(--ease-out);
	}

	.footer-section a:hover {
		color: var(--color-primary-400);
		text-decoration: none;
	}

	.footer-bottom {
		display: flex;
		justify-content: space-between;
		align-items: center;
		padding: var(--space-6) 0;
		border-top: 1px solid var(--color-neutral-700);
	}

	.copyright {
		font-size: var(--text-sm);
		color: var(--color-neutral-400);
		margin: 0;
	}

	.footer-social {
		display: flex;
		gap: var(--space-4);
	}

	.social-link {
		color: var(--color-neutral-300);
		text-decoration: none;
		font-size: var(--text-sm);
		font-weight: 500;
		transition: color var(--duration-200) var(--ease-out);
	}

	.social-link:hover {
		color: var(--color-primary-400);
		text-decoration: none;
	}

	/* Mobile responsive */
	@media (max-width: 768px) {
		.footer-content {
			grid-template-columns: 1fr;
			gap: var(--space-12);
			padding: var(--space-16) 0 var(--space-12) 0;
		}

		.footer-links {
			grid-template-columns: 1fr;
			gap: var(--space-6);
		}

		.footer-bottom {
			flex-direction: column;
			gap: var(--space-4);
			text-align: center;
		}
	}

	@media (max-width: 640px) {
		.footer-links {
			grid-template-columns: repeat(2, 1fr);
		}
	}
</style>
