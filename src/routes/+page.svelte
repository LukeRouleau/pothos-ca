<script lang="ts">
	import { onMount } from 'svelte';

	let mounted = false;

	onMount(() => {
		mounted = true;
	});
</script>

<svelte:head>
	<title>Pothos Consulting & Advising | Premier Software Consulting</title>
	<meta name="description" content="Cultivating exceptional software solutions through expert guidance, engineering, and strategy." />
</svelte:head>

<!-- Hero Section -->
<section class="hero">
	<div class="hero-bg">
		<div class="hero-pattern"></div>
		<div class="hero-gradient"></div>
	</div>
	
	<div class="container">
		<div class="hero-content" class:mounted>
			<div class="hero-badge">
				<span class="badge-icon">🌱</span>
				<span class="badge-text">Growing Excellence Since 2024</span>
			</div>
			
			<h1 class="hero-title">
				Cultivating <span class="gradient-text">Exceptional</span><br>
				Software Solutions
			</h1>
			
			<p class="hero-subtitle">
				Transform your ideas into powerful, scalable applications with our expert engineering, strategic guidance, and proven methodologies.
			</p>
			
			<div class="hero-cta">
				<a href="mailto:hello@pothosca.com?subject=Discovery%20Call" class="btn btn-primary btn-lg">
					<span>Schedule Discovery Call</span>
					<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
						<path d="m9 18 6-6-6-6"/>
					</svg>
				</a>
				<a href="/about" class="btn btn-secondary btn-lg">
					Learn More
				</a>
			</div>
			
			<div class="hero-stats">
				<div class="stat">
					<div class="stat-number">10+</div>
					<div class="stat-label">Years Experience</div>
				</div>
				<div class="stat">
					<div class="stat-number">50+</div>
					<div class="stat-label">Projects Delivered</div>
				</div>
				<div class="stat">
					<div class="stat-number">4</div>
					<div class="stat-label">Continents</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Services Section -->
<section class="services" id="services">
	<div class="container">
		<div class="section-header">
			<div class="section-badge">
				<span class="badge-icon">⚡</span>
				<span class="badge-text">Our Expertise</span>
			</div>
			<h2 class="section-title">How We Accelerate Your Growth</h2>
			<p class="section-subtitle">
				From conception to deployment, we provide comprehensive solutions that drive measurable results and long-term success.
			</p>
		</div>
		
		<div class="services-grid">
			<article class="service-card" class:mounted>
				<div class="card-icon">
					<div class="icon-wrapper">
						<svg width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5">
							<rect width="18" height="18" x="3" y="3" rx="2"/>
							<path d="m9 9 5 12 1.774-5.226L21 14 9 9z"/>
						</svg>
					</div>
				</div>
				<h3>Custom Software Engineering</h3>
				<p>From MVP to enterprise-scale applications, our senior engineers craft resilient, performant solutions using cutting-edge technologies and best practices.</p>
				<ul class="feature-list">
					<li>Full-stack development</li>
					<li>API design & integration</li>
					<li>Performance optimization</li>
					<li>Security implementation</li>
				</ul>
			</article>
			
			<article class="service-card" class:mounted>
				<div class="card-icon">
					<div class="icon-wrapper">
						<svg width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5">
							<path d="M8 2v4"/>
							<path d="M16 2v4"/>
							<rect width="18" height="18" x="3" y="4" rx="2"/>
							<path d="M3 10h18"/>
							<path d="m9 16 2 2 4-4"/>
						</svg>
					</div>
				</div>
				<h3>Architecture & Strategy</h3>
				<p>We design future-proof architectures that scale with your business, providing technical roadmaps aligned with your strategic objectives.</p>
				<ul class="feature-list">
					<li>System architecture design</li>
					<li>Technology stack selection</li>
					<li>Scalability planning</li>
					<li>Technical debt management</li>
				</ul>
			</article>
			
			<article class="service-card" class:mounted>
				<div class="card-icon">
					<div class="icon-wrapper">
						<svg width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5">
							<path d="M4.5 16.5c-1.5 1.26-2 5-2 5s3.74-.5 5-2c.71-.84.7-2.13-.09-2.91a2.18 2.18 0 0 0-2.91-.09z"/>
							<path d="m12 15-3-3a22 22 0 0 1 2-3.95A12.88 12.88 0 0 1 22 2c0 2.72-.78 7.5-6 11a22.35 22.35 0 0 1-4 2z"/>
							<path d="M9 12H4s.55-3.03 2-4c1.62-1.08 5 0 5 0"/>
							<path d="M12 15v5s3.03-.55 4-2c1.08-1.62 0-5 0-5"/>
						</svg>
					</div>
				</div>
				<h3>DevOps & Cloud Enablement</h3>
				<p>Automated pipelines, cloud infrastructure, and observability practices that ensure reliable, efficient, and scalable operations.</p>
				<ul class="feature-list">
					<li>CI/CD implementation</li>
					<li>Cloud migration & setup</li>
					<li>Infrastructure as code</li>
					<li>Monitoring & alerting</li>
				</ul>
			</article>
		</div>
		
		<div class="services-cta">
			<a href="/services" class="btn btn-secondary">
				Explore All Services
				<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
					<path d="m9 18 6-6-6-6"/>
				</svg>
			</a>
		</div>
	</div>
</section>

<!-- About Preview Section -->
<section class="about-preview">
	<div class="container">
		<div class="about-content">
			<div class="about-text" class:mounted>
				<div class="section-badge">
					<span class="badge-icon">🌿</span>
					<span class="badge-text">Our Philosophy</span>
				</div>
				<h2>What Sets Us Apart</h2>
				<p class="lead">
					Like the resilient pothos vine that thrives in any environment, we adapt to your unique challenges while maintaining our commitment to excellence.
				</p>
				<p>
					Our consultants bring decade-spanning expertise across industries and technology stacks. We don't just deliver code—we become true partners in your success, building solutions that grow with your business.
				</p>
				<div class="about-features">
					<div class="feature">
						<div class="feature-icon">✨</div>
						<div class="feature-content">
							<h4>Senior Expertise</h4>
							<p>Every engagement is led by senior professionals with proven track records.</p>
						</div>
					</div>
					<div class="feature">
						<div class="feature-icon">🤝</div>
						<div class="feature-content">
							<h4>Partnership Approach</h4>
							<p>We work alongside your team, sharing knowledge and building capabilities.</p>
						</div>
					</div>
					<div class="feature">
						<div class="feature-icon">🎯</div>
						<div class="feature-content">
							<h4>Results-Driven</h4>
							<p>Every solution is designed to deliver measurable business value.</p>
						</div>
					</div>
				</div>
				<a href="/about" class="learn-more-link">
					Learn More About Our Approach
					<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
						<path d="m9 18 6-6-6-6"/>
					</svg>
				</a>
			</div>
			<div class="about-visual" class:mounted>
				<div class="visual-card">
					<div class="visual-content">
						<div class="visual-stat">
							<div class="stat-value">100%</div>
							<div class="stat-desc">Client Satisfaction</div>
						</div>
						<div class="visual-divider"></div>
						<div class="visual-text">
							"Pothos CA transformed our entire development process. Their expertise and guidance were invaluable."
						</div>
						<div class="visual-author">
							<strong>Jordan Green</strong>, Founder
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<style>
	/* Hero Section */
	.hero {
		position: relative;
		min-height: 100vh;
		display: flex;
		align-items: center;
		justify-content: center;
		overflow: hidden;
		background: linear-gradient(135deg, var(--color-bg-secondary) 0%, var(--color-bg-primary) 100%);
	}

	.hero-bg {
		position: absolute;
		inset: 0;
		z-index: 1;
	}

	.hero-pattern {
		position: absolute;
		inset: 0;
		background-image: radial-gradient(circle at 1px 1px, rgba(22, 163, 74, 0.15) 1px, transparent 0);
		background-size: 40px 40px;
		animation: float 20s ease-in-out infinite;
	}

	.hero-gradient {
		position: absolute;
		inset: 0;
		background: radial-gradient(ellipse at center, transparent 0%, rgba(250, 250, 250, 0.8) 100%);
	}

	.hero-content {
		position: relative;
		z-index: 2;
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
		font-size: clamp(2.5rem, 5vw, 4rem);
		font-weight: 800;
		line-height: 1.1;
		margin-bottom: var(--space-6);
		color: var(--color-text-primary);
	}

	.gradient-text {
		background: linear-gradient(135deg, var(--color-accent) 0%, var(--color-primary-500) 50%, var(--color-primary-400) 100%);
		-webkit-background-clip: text;
		-webkit-text-fill-color: transparent;
		background-clip: text;
	}

	.hero-subtitle {
		font-size: var(--text-xl);
		color: var(--color-text-secondary);
		margin-bottom: var(--space-10);
		max-width: 600px;
		margin-left: auto;
		margin-right: auto;
		line-height: 1.6;
	}

	.hero-cta {
		display: flex;
		gap: var(--space-4);
		justify-content: center;
		margin-bottom: var(--space-16);
		flex-wrap: wrap;
	}

	.btn-lg {
		padding: var(--space-4) var(--space-8);
		font-size: var(--text-lg);
		font-weight: 600;
		display: inline-flex;
		align-items: center;
		gap: var(--space-2);
	}

	.hero-stats {
		display: flex;
		justify-content: center;
		gap: var(--space-12);
		flex-wrap: wrap;
	}

	.stat {
		text-align: center;
	}

	.stat-number {
		font-size: var(--text-4xl);
		font-weight: 800;
		color: var(--color-accent);
		line-height: 1;
		margin-bottom: var(--space-1);
	}

	.stat-label {
		font-size: var(--text-sm);
		color: var(--color-text-tertiary);
		font-weight: 500;
		text-transform: uppercase;
		letter-spacing: 0.05em;
	}

	/* Services Section */
	.services {
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
		margin-bottom: 0;
	}

	.services-grid {
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
		gap: var(--space-8);
		margin-bottom: var(--space-16);
	}

	.service-card {
		background: var(--color-bg-secondary);
		border: 1px solid var(--color-neutral-200);
		border-radius: var(--radius-2xl);
		padding: var(--space-8);
		box-shadow: var(--shadow-sm);
		transition: all var(--duration-300) var(--ease-out);
		opacity: 0;
		transform: translateY(20px);
	}

	.service-card.mounted {
		opacity: 1;
		transform: translateY(0);
	}

	.service-card:hover {
		transform: translateY(-8px);
		box-shadow: var(--shadow-xl);
		border-color: var(--color-primary-200);
	}

	.card-icon {
		margin-bottom: var(--space-6);
	}

	.icon-wrapper {
		display: inline-flex;
		padding: var(--space-3);
		background: linear-gradient(135deg, var(--color-accent) 0%, var(--color-primary-500) 100%);
		border-radius: var(--radius-xl);
		color: white;
	}

	.service-card h3 {
		margin-bottom: var(--space-4);
		color: var(--color-text-primary);
	}

	.service-card p {
		margin-bottom: var(--space-6);
		color: var(--color-text-secondary);
	}

	.feature-list {
		list-style: none;
		padding: 0;
		margin: 0;
	}

	.feature-list li {
		display: flex;
		align-items: center;
		gap: var(--space-2);
		margin-bottom: var(--space-2);
		font-size: var(--text-sm);
		color: var(--color-text-secondary);
	}

	.feature-list li::before {
		content: '✓';
		color: var(--color-accent);
		font-weight: bold;
		font-size: var(--text-base);
	}

	.services-cta {
		text-align: center;
	}

	/* About Preview Section */
	.about-preview {
		padding: var(--space-32) 0;
		background: var(--color-bg-primary);
	}

	.about-content {
		display: grid;
		grid-template-columns: 1fr 1fr;
		gap: var(--space-20);
		align-items: center;
	}

	.about-text {
		opacity: 0;
		transform: translateX(-30px);
		transition: all var(--duration-500) var(--ease-out);
	}

	.about-text.mounted {
		opacity: 1;
		transform: translateX(0);
	}

	.about-text h2 {
		margin-bottom: var(--space-6);
		color: var(--color-text-primary);
	}

	.lead {
		font-size: var(--text-xl);
		font-weight: 500;
		color: var(--color-text-primary);
		margin-bottom: var(--space-6);
		line-height: 1.6;
	}

	.about-features {
		margin: var(--space-10) 0;
	}

	.feature {
		display: flex;
		gap: var(--space-4);
		margin-bottom: var(--space-6);
	}

	.feature-icon {
		font-size: var(--text-2xl);
		flex-shrink: 0;
	}

	.feature-content h4 {
		margin-bottom: var(--space-1);
		color: var(--color-text-primary);
		font-size: var(--text-lg);
	}

	.feature-content p {
		margin: 0;
		color: var(--color-text-secondary);
	}

	.learn-more-link {
		display: inline-flex;
		align-items: center;
		gap: var(--space-2);
		color: var(--color-accent);
		font-weight: 600;
		text-decoration: none;
		transition: all var(--duration-200) var(--ease-out);
	}

	.learn-more-link:hover {
		color: var(--color-accent-hover);
		transform: translateX(4px);
		text-decoration: none;
	}

	.about-visual {
		opacity: 0;
		transform: translateX(30px);
		transition: all var(--duration-500) var(--ease-out);
	}

	.about-visual.mounted {
		opacity: 1;
		transform: translateX(0);
	}

	.visual-card {
		background: var(--color-bg-secondary);
		border-radius: var(--radius-2xl);
		padding: var(--space-10);
		box-shadow: var(--shadow-xl);
		border: 1px solid var(--color-neutral-200);
	}

	.visual-stat {
		text-align: center;
		margin-bottom: var(--space-6);
	}

	.stat-value {
		font-size: var(--text-5xl);
		font-weight: 800;
		color: var(--color-accent);
		line-height: 1;
	}

	.stat-desc {
		font-size: var(--text-lg);
		color: var(--color-text-secondary);
		font-weight: 500;
	}

	.visual-divider {
		height: 1px;
		background: var(--color-neutral-200);
		margin: var(--space-6) 0;
	}

	.visual-text {
		font-size: var(--text-lg);
		color: var(--color-text-secondary);
		font-style: italic;
		margin-bottom: var(--space-4);
		line-height: 1.6;
	}

	.visual-author {
		color: var(--color-text-primary);
		font-size: var(--text-base);
	}

	/* Animations */
	@keyframes float {
		0%, 100% { transform: translateY(0px) rotate(0deg); }
		50% { transform: translateY(-10px) rotate(1deg); }
	}

	/* Mobile Responsive */
	@media (max-width: 768px) {
		.hero-cta {
			flex-direction: column;
			align-items: center;
		}

		.hero-stats {
			gap: var(--space-8);
		}

		.services-grid {
			grid-template-columns: 1fr;
		}

		.about-content {
			grid-template-columns: 1fr;
			gap: var(--space-16);
		}

		.about-visual {
			order: -1;
		}
	}

	@media (max-width: 640px) {
		.hero {
			min-height: 90vh;
		}

		.hero-stats {
			gap: var(--space-6);
		}

		.stat {
			min-width: 80px;
		}

		.feature {
			flex-direction: column;
			text-align: center;
		}
	}
</style>
