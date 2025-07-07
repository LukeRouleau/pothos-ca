<script lang="ts">
	import { page } from '$app/stores';
	import { onMount } from 'svelte';

	let scrolled = false;
	let mounted = false;
	let mobileMenuOpen = false;

	onMount(() => {
		mounted = true;
		
		const handleScroll = () => {
			scrolled = window.scrollY > 20;
		};

		window.addEventListener('scroll', handleScroll);
		return () => window.removeEventListener('scroll', handleScroll);
	});

	function toggleMobileMenu() {
		mobileMenuOpen = !mobileMenuOpen;
		console.log('Mobile menu toggled:', mobileMenuOpen); // Debug log
		
		// Prevent body scroll when mobile menu is open
		if (mobileMenuOpen) {
			document.body.style.overflow = 'hidden';
		} else {
			document.body.style.overflow = '';
		}
	}

	// Close mobile menu when clicking outside or on navigation links
	function closeMobileMenu() {
		mobileMenuOpen = false;
		document.body.style.overflow = '';
	}

	// Close mobile menu on route change
	$: if ($page.url.pathname && mobileMenuOpen) {
		closeMobileMenu();
	}
</script>

<!-- Refined Header -->
<header class="header" class:scrolled>
	<div class="container">
		<div class="header-content">
			<!-- Refined Logo -->
			<a href="/" class="logo">
				<div class="logo-icon">
					<img src="/pothos-ca.png" alt="Pothos CA Logo" width="40" height="40" />
				</div>
				<div class="logo-text">
					<span class="logo-name">Pothos</span>
					<span class="logo-tagline">Consulting & Advising</span>
				</div>
			</a>
			
			<!-- Refined Navigation -->
			<nav class="nav" class:open={mobileMenuOpen}>
				<ul class="nav-list">
					<li class="nav-item">
						<a href="/" class="nav-link" class:active={$page.url.pathname === '/'} on:click={closeMobileMenu}>
							<span class="nav-icon">
								<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
									<path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"/>
									<polyline points="9,22 9,12 15,12 15,22"/>
								</svg>
							</span>
							<span class="nav-text">Home</span>
						</a>
					</li>
					<li class="nav-item">
						<a href="/services" class="nav-link" class:active={$page.url.pathname === '/services'} on:click={closeMobileMenu}>
							<span class="nav-icon">
								<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
									<path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"/>
								</svg>
							</span>
							<span class="nav-text">Services</span>
						</a>
					</li>
					<li class="nav-item">
						<a href="/about" class="nav-link" class:active={$page.url.pathname === '/about'} on:click={closeMobileMenu}>
							<span class="nav-icon">
								<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
									<path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"/>
									<circle cx="12" cy="7" r="4"/>
								</svg>
							</span>
							<span class="nav-text">About</span>
						</a>
					</li>
					<li class="nav-item">
						<a href="/contact" class="nav-link" class:active={$page.url.pathname === '/contact'} on:click={closeMobileMenu}>
							<span class="nav-icon">
								<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
									<path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"/>
									<polyline points="22,6 12,13 2,6"/>
								</svg>
							</span>
							<span class="nav-text">Contact</span>
						</a>
					</li>
				</ul>
			</nav>
			
			<!-- Refined CTA Button -->
			<div class="header-actions">
				<a href="/contact" class="btn btn-primary header-cta">
					Get Started
				</a>
				
				<!-- Mobile Menu Toggle -->
				<button 
					class="mobile-menu-toggle"
					class:active={mobileMenuOpen}
					on:click={toggleMobileMenu}
					aria-label="Toggle navigation menu"
					type="button"
				>
					<span class="hamburger-line"></span>
					<span class="hamburger-line"></span>
					<span class="hamburger-line"></span>
				</button>
			</div>
		</div>
	</div>
	
	<!-- Mobile Menu Overlay -->
	{#if mobileMenuOpen}
		<div 
			class="mobile-overlay" 
			on:click={closeMobileMenu} 
			on:keydown={(e) => e.key === 'Escape' && closeMobileMenu()}
			role="button" 
			tabindex="0"
		></div>
	{/if}
</header>

<style>
	/* Refined Header Styles */
	.header {
		position: fixed;
		top: 0;
		left: 0;
		right: 0;
		z-index: 1000;
		background: rgba(248, 250, 249, 0.85);
		backdrop-filter: blur(20px);
		border-bottom: 1px solid rgba(117, 149, 132, 0.1);
		transition: var(--transition-base);
	}

	.header.scrolled {
		background: rgba(248, 250, 249, 0.95);
		border-bottom-color: rgba(117, 149, 132, 0.2);
		box-shadow: var(--shadow-sm);
	}

	.header-content {
		display: flex;
		align-items: center;
		justify-content: space-between;
		padding: var(--space-4) 0;
		position: relative;
	}

	/* Refined Logo */
	.logo {
		display: flex;
		align-items: center;
		gap: var(--space-2);
		text-decoration: none;
		transition: var(--transition-base);
		position: relative;
		z-index: 1001;
	}

	.logo:hover {
		transform: translateY(-1px);
	}

	.logo-icon {
		display: flex;
		align-items: center;
		justify-content: center;
		transition: var(--transition-base);
	}

	.logo-icon img {
		transition: var(--transition-base);
	}

	.logo:hover .logo-icon img {
		transform: scale(1.05);
	}

	.logo-text {
		display: flex;
		flex-direction: column;
		gap: 2px;
	}

	.logo-name {
		font-family: var(--font-display);
		font-size: 1.5rem;
		font-weight: 700;
		color: var(--color-forest-700);
		line-height: 1;
		letter-spacing: -0.02em;
	}

	.logo-tagline {
		font-size: 0.7rem;
		color: var(--color-stone-500);
		font-weight: 500;
		text-transform: uppercase;
		letter-spacing: 0.5px;
		line-height: 1;
	}

	/* Refined Navigation */
	.nav {
		display: flex;
		align-items: center;
	}

	.nav-list {
		display: flex;
		align-items: center;
		gap: var(--space-2);
		list-style: none;
		margin: 0;
		padding: 0;
	}

	.nav-item {
		position: relative;
	}

	.nav-link {
		display: flex;
		align-items: center;
		gap: var(--space-2);
		padding: var(--space-3) var(--space-4);
		text-decoration: none;
		color: var(--color-stone-600);
		font-weight: 500;
		font-size: 0.95rem;
		border-radius: var(--radius-lg);
		transition: var(--transition-base);
		position: relative;
		overflow: hidden;
	}

	.nav-link::before {
		content: '';
		position: absolute;
		top: 0;
		left: -100%;
		width: 100%;
		height: 100%;
		background: linear-gradient(90deg, transparent, rgba(117, 149, 132, 0.1), transparent);
		transition: left 0.5s cubic-bezier(0.4, 0, 0.2, 1);
	}

	.nav-link:hover::before {
		left: 100%;
	}

	.nav-link:hover,
	.nav-link.active {
		color: var(--color-forest-700);
		background: var(--color-sage-50);
		border: 1px solid var(--color-sage-200);
		transform: translateY(-1px);
	}

	.nav-icon {
		display: flex;
		align-items: center;
		opacity: 0.7;
		transition: var(--transition-base);
	}

	.nav-link:hover .nav-icon,
	.nav-link.active .nav-icon {
		opacity: 1;
		transform: scale(1.1);
	}

	.nav-text {
		font-weight: 500;
	}

	/* Refined Header Actions */
	.header-actions {
		display: flex;
		align-items: center;
		gap: var(--space-4);
		position: relative;
		z-index: 1001;
	}

	.header-cta {
		font-size: 0.9rem;
		padding: var(--space-2) var(--space-5);
		position: relative;
		overflow: hidden;
	}

	.header-cta::before {
		content: '';
		position: absolute;
		top: 0;
		left: -100%;
		width: 100%;
		height: 100%;
		background: linear-gradient(90deg, transparent, rgba(255,255,255,0.3), transparent);
		transition: left 0.6s cubic-bezier(0.4, 0, 0.2, 1);
	}

	.header-cta:hover::before {
		left: 100%;
	}

	/* Refined Mobile Menu Toggle */
	.mobile-menu-toggle {
		display: none;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		width: 44px;
		height: 44px;
		background: none;
		border: none;
		cursor: pointer;
		padding: 0;
		gap: 4px;
		border-radius: var(--radius-lg);
		transition: var(--transition-base);
	}

	.mobile-menu-toggle:hover {
		background: var(--color-sage-50);
	}

	.hamburger-line {
		width: 20px;
		height: 2px;
		background: var(--color-forest-600);
		border-radius: 2px;
		transition: var(--transition-base);
		transform-origin: center;
	}

	.mobile-menu-toggle.active .hamburger-line:nth-child(1) {
		transform: rotate(45deg) translate(3px, 3px);
	}

	.mobile-menu-toggle.active .hamburger-line:nth-child(2) {
		opacity: 0;
		transform: scale(0);
	}

	.mobile-menu-toggle.active .hamburger-line:nth-child(3) {
		transform: rotate(-45deg) translate(3px, -3px);
	}

	/* Mobile Overlay */
	.mobile-overlay {
		position: fixed;
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
		background: rgba(0, 0, 0, 0.5);
		z-index: 1001;
		backdrop-filter: blur(4px);
		opacity: 0;
		animation: fadeIn 0.3s ease forwards;
	}

	@keyframes fadeIn {
		to {
			opacity: 1;
		}
	}

	/* Hide mobile menu toggle on desktop */
	@media (min-width: 769px) {
		.mobile-menu-toggle {
			display: none !important;
		}
		
		.nav {
			display: flex !important;
			position: static !important;
			transform: none !important;
			opacity: 1 !important;
			visibility: visible !important;
			background: transparent !important;
			box-shadow: none !important;
			padding-top: 0 !important;
		}
	}

	/* Responsive Design */
	@media (max-width: 768px) {
		.mobile-menu-toggle {
			display: flex;
		}
		
		/* Hide desktop nav on mobile */
		.nav {
			display: none;
		}
		
		.nav.open {
			display: block;
			position: fixed;
			top: 0;
			left: 0;
			right: 0;
			bottom: 0;
			background: var(--color-surface-elevated);
			padding-top: 80px;
			box-shadow: var(--shadow-lg);
			z-index: 1002;
			overflow-y: auto;
			/* Debug styles */
			border: 3px solid red !important;
		}

		.nav-list {
			flex-direction: column;
			gap: var(--space-2);
			padding: var(--space-6) var(--space-4);
			width: 100%;
			height: auto;
			margin: 0;
			list-style: none;
			/* Debug styles */
			background: yellow !important;
		}

		.nav-item {
			width: 100%;
			margin: 0;
		}

		.nav-link {
			width: 100%;
			justify-content: flex-start;
			padding: var(--space-4) var(--space-6);
			font-size: 1rem;
			border-radius: var(--radius-md);
			display: flex;
			align-items: center;
			text-decoration: none;
			color: var(--color-stone-700);
			background: transparent;
			border: 1px solid transparent;
			transition: all 0.3s ease;
			position: relative;
			overflow: visible;
		}
		
		.nav-link::before {
			display: none;
		}

		.nav-link:hover,
		.nav-link.active {
			background: var(--color-sage-100);
			transform: translateX(4px);
			color: var(--color-forest-700);
			border-color: var(--color-sage-200);
		}

		.header-cta {
			display: none;
		}

		.logo-text {
			display: none;
		}

		.logo-icon img {
			width: 36px;
			height: 36px;
		}
	}

	@media (max-width: 480px) {
		.header-content {
			padding: var(--space-3) 0;
		}

		.nav-list {
			padding: var(--space-4);
		}

		.nav-link {
			padding: var(--space-3) var(--space-4);
		}
	}
</style>
