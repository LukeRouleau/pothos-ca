<script lang="ts">
	import { page } from '$app/stores';
	import { onMount } from 'svelte';

	let scrolled = false;

	onMount(() => {
		const handleScroll = () => {
			scrolled = window.scrollY > 20;
		};

		window.addEventListener('scroll', handleScroll);
		return () => window.removeEventListener('scroll', handleScroll);
	});
</script>

<header class="header" class:scrolled>
	<div class="container">
		<div class="header-content">
			<div class="branding">
				<a href="/" class="brand-link">
					<div class="logo">
						<span class="logo-icon">🪴</span>
						<div class="brand-text">
							<h1 class="brand-name">Pothos<span class="accent">CA</span></h1>
							<p class="tagline">Consulting & Advising</p>
						</div>
					</div>
				</a>
			</div>

			<nav class="nav">
				<ul class="nav-list">
					<li class="nav-item">
						<a 
							href="/" 
							class="nav-link"
							class:active={$page.url.pathname === '/'}
							aria-current={$page.url.pathname === '/' ? 'page' : undefined}
						>
							Home
						</a>
					</li>
					<li class="nav-item">
						<a 
							href="/services" 
							class="nav-link"
							class:active={$page.url.pathname.startsWith('/services')}
							aria-current={$page.url.pathname.startsWith('/services') ? 'page' : undefined}
						>
							Services
						</a>
					</li>
					<li class="nav-item">
						<a 
							href="/about" 
							class="nav-link"
							class:active={$page.url.pathname.startsWith('/about')}
							aria-current={$page.url.pathname.startsWith('/about') ? 'page' : undefined}
						>
							About
						</a>
					</li>
					<li class="nav-item">
						<a 
							href="/contact" 
							class="nav-link"
							class:active={$page.url.pathname.startsWith('/contact')}
							aria-current={$page.url.pathname.startsWith('/contact') ? 'page' : undefined}
						>
							Contact
						</a>
					</li>
				</ul>
				<div class="nav-cta">
					<a href="mailto:hello@pothosca.com?subject=Discovery%20Call" class="btn btn-primary btn-sm">
						Get Started
					</a>
				</div>
			</nav>
		</div>
	</div>
</header>

<style>
	.header {
		position: fixed;
		top: 0;
		left: 0;
		right: 0;
		z-index: 1000;
		background: rgba(255, 255, 255, 0.8);
		backdrop-filter: blur(20px);
		-webkit-backdrop-filter: blur(20px);
		border-bottom: 1px solid rgba(229, 229, 229, 0.3);
		transition: all var(--duration-300) var(--ease-out);
	}

	.header.scrolled {
		background: rgba(255, 255, 255, 0.95);
		box-shadow: var(--shadow-md);
		border-bottom-color: var(--color-neutral-200);
	}

	.header-content {
		display: flex;
		justify-content: space-between;
		align-items: center;
		padding: var(--space-4) 0;
		transition: padding var(--duration-300) var(--ease-out);
	}

	.header.scrolled .header-content {
		padding: var(--space-3) 0;
	}

	.branding {
		flex-shrink: 0;
	}

	.brand-link {
		text-decoration: none;
		color: inherit;
		transition: transform var(--duration-200) var(--ease-out);
	}

	.brand-link:hover {
		transform: translateY(-1px);
		text-decoration: none;
	}

	.logo {
		display: flex;
		align-items: center;
		gap: var(--space-3);
	}

	.logo-icon {
		font-size: var(--text-2xl);
		filter: drop-shadow(0 2px 4px rgba(0, 0, 0, 0.1));
	}

	.brand-text {
		display: flex;
		flex-direction: column;
		gap: 0;
	}

	.brand-name {
		font-family: var(--font-display);
		font-size: var(--text-2xl);
		font-weight: 700;
		letter-spacing: -0.02em;
		color: var(--color-text-primary);
		margin: 0;
		line-height: 1;
	}

	.accent {
		color: var(--color-accent);
		background: linear-gradient(135deg, var(--color-accent) 0%, var(--color-primary-500) 100%);
		-webkit-background-clip: text;
		-webkit-text-fill-color: transparent;
		background-clip: text;
	}

	.tagline {
		font-size: var(--text-xs);
		font-weight: 500;
		color: var(--color-text-tertiary);
		margin: 0;
		letter-spacing: 0.05em;
		text-transform: uppercase;
		line-height: 1;
	}

	.nav {
		display: flex;
		align-items: center;
		gap: var(--space-6);
	}

	.nav-list {
		display: flex;
		align-items: center;
		gap: var(--space-8);
		list-style: none;
		margin: 0;
		padding: 0;
	}

	.nav-item {
		position: relative;
	}

	.nav-link {
		font-size: var(--text-sm);
		font-weight: 500;
		color: var(--color-text-secondary);
		text-decoration: none;
		letter-spacing: 0.01em;
		padding: var(--space-2) 0;
		position: relative;
		transition: color var(--duration-200) var(--ease-out);
	}

	.nav-link::after {
		content: '';
		position: absolute;
		bottom: -2px;
		left: 0;
		right: 0;
		height: 2px;
		background: linear-gradient(135deg, var(--color-accent) 0%, var(--color-primary-500) 100%);
		border-radius: var(--radius-full);
		transform: scaleX(0);
		transform-origin: center;
		transition: transform var(--duration-300) var(--ease-out);
	}

	.nav-link:hover,
	.nav-link.active {
		color: var(--color-text-primary);
		text-decoration: none;
	}

	.nav-link:hover::after,
	.nav-link.active::after {
		transform: scaleX(1);
	}

	.nav-cta {
		margin-left: var(--space-4);
	}

	.btn-sm {
		padding: var(--space-2) var(--space-4);
		font-size: var(--text-sm);
		font-weight: 600;
	}

	/* Mobile responsive */
	@media (max-width: 768px) {
		.nav-list {
			display: none;
		}

		.nav-cta {
			margin-left: 0;
		}

		.brand-name {
			font-size: var(--text-xl);
		}

		.logo-icon {
			font-size: var(--text-xl);
		}

		.tagline {
			font-size: 0.65rem;
		}
	}

	@media (max-width: 480px) {
		.header-content {
			padding: var(--space-3) 0;
		}

		.header.scrolled .header-content {
			padding: var(--space-2) 0;
		}

		.logo {
			gap: var(--space-2);
		}
	}
</style>
