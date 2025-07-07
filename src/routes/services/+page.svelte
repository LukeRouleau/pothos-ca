<script lang="ts">
	import { onMount } from 'svelte';

	let mounted = false;

	onMount(() => {
		mounted = true;
	});

	const services = [
		{
			title: 'Full-Stack Product Engineering',
			description:
				'Whether green-field or rescue mission, we deliver production-ready applications that delight users and drive revenue. Our toolbelt spans TypeScript, Go, Rust, Python, React, Svelte, and beyond.',
			features: [
				'MVP Development & Prototyping',
				'Enterprise Application Development',
				'Legacy System Modernization',
				'API Design & Development',
				'Database Architecture & Optimization',
				'Performance Optimization',
				'Security Implementation',
				'Code Review & Quality Assurance'
			],
			icon: `<svg width="48" height="48" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5">
				<rect width="18" height="18" x="3" y="3" rx="2"/>
				<path d="m9 9 5 12 1.774-5.226L21 14 9 9z"/>
			</svg>`,
			timeline: '2-12 weeks',
			engagement: 'Dedicated Team'
		},
		{
			title: 'Architecture & Technical Strategy',
			description:
				'We engage with stakeholders to translate business objectives into modular, scalable systems. Expect architectural diagrams, risk analysis, and a phased roadmap your team can rally around.',
			features: [
				'System Architecture Design',
				'Technology Stack Selection',
				'Scalability Planning',
				'Technical Debt Assessment',
				'Migration Strategy',
				'Performance Architecture',
				'Security Architecture',
				'Documentation & Standards'
			],
			icon: `<svg width="48" height="48" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5">
				<path d="M8 2v4"/>
				<path d="M16 2v4"/>
				<rect width="18" height="18" x="3" y="4" rx="2"/>
				<path d="M3 10h18"/>
				<path d="m9 16 2 2 4-4"/>
			</svg>`,
			timeline: '1-4 weeks',
			engagement: 'Strategic Consulting'
		},
		{
			title: 'Cloud & DevOps Enablement',
			description:
				'CI/CD, infrastructure-as-code, Kubernetes, serverless, observability—we embed best practices that accelerate delivery and maintain stability as you scale.',
			features: [
				'CI/CD Pipeline Setup',
				'Cloud Migration & Setup',
				'Infrastructure as Code',
				'Container Orchestration',
				'Monitoring & Alerting',
				'Security & Compliance',
				'Cost Optimization',
				'Disaster Recovery Planning'
			],
			icon: `<svg width="48" height="48" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5">
				<path d="M4.5 16.5c-1.5 1.26-2 5-2 5s3.74-.5 5-2c.71-.84.7-2.13-.09-2.91a2.18 2.18 0 0 0-2.91-.09z"/>
				<path d="m12 15-3-3a22 22 0 0 1 2-3.95A12.88 12.88 0 0 1 22 2c0 2.72-.78 7.5-6 11a22.35 22.35 0 0 1-4 2z"/>
				<path d="M9 12H4s.55-3.03 2-4c1.62-1.08 5 0 5 0"/>
				<path d="M12 15v5s3.03-.55 4-2c1.08-1.62 0-5 0-5"/>
			</svg>`,
			timeline: '2-8 weeks',
			engagement: 'Implementation'
		},
		{
			title: 'Team Augmentation & Mentorship',
			description:
				'Add senior horsepower precisely when you need it. We pair program, level-up engineers, and institute processes that endure.',
			features: [
				'Senior Developer Placement',
				'Code Review & Mentoring',
				'Process Implementation',
				'Knowledge Transfer',
				'Team Training & Workshops',
				'Best Practices Implementation',
				'Technical Leadership',
				'Culture & Standards Development'
			],
			icon: `<svg width="48" height="48" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5">
				<path d="M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2"/>
				<circle cx="9" cy="7" r="4"/>
				<path d="m22 21-3-3m0 0a5.5 5.5 0 1 1-7.54-.54l.04.04L14 19l4 2z"/>
			</svg>`,
			timeline: '1-6 months',
			engagement: 'Staff Augmentation'
		}
	];
</script>

<svelte:head>
	<title>Services | Pothos Consulting & Advising</title>
	<meta
		name="description"
		content="Discover the comprehensive consulting and engineering services offered by PothosCA. From full-stack development to DevOps enablement."
	/>
</svelte:head>

<!-- Hero Section -->
<section class="hero">
	<div class="container">
		<div class="hero-content" class:mounted>
			<div class="hero-badge">
				<span class="badge-icon">⚡</span>
				<span class="badge-text">Our Services</span>
			</div>

			<h1 class="hero-title">
				Comprehensive Solutions for <span class="gradient-text">Modern</span> Development
			</h1>

			<p class="hero-subtitle">
				From concept to deployment, we provide expert guidance and hands-on engineering to
				accelerate your digital transformation and drive measurable business results.
			</p>
		</div>
	</div>
</section>

<!-- Services Grid -->
<section class="services-section">
	<div class="container">
		<div class="services-grid">
			{#each services as service, i}
				<article class="service-card" class:mounted style="animation-delay: {i * 100}ms">
					<div class="service-header">
						<div class="service-icon">
							<!-- eslint-disable-next-line svelte/no-at-html-tags -->
							{@html service.icon}
						</div>
						<div class="service-meta">
							<div class="service-badge">{service.engagement}</div>
							<div class="service-timeline">{service.timeline}</div>
						</div>
					</div>

					<div class="service-content">
						<h2 class="service-title">{service.title}</h2>
						<p class="service-description">{service.description}</p>

						<div class="service-features">
							<h3>What's Included:</h3>
							<ul class="features-list">
								{#each service.features as feature}
									<li>{feature}</li>
								{/each}
							</ul>
						</div>
					</div>

					<div class="service-footer">
						<a
							href="mailto:pothosca@gmail.com?subject=Service%20Inquiry%20-%20{service.title}"
							class="service-cta"
						>
							Get Started
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
						</a>
					</div>
				</article>
			{/each}
		</div>
	</div>
</section>

<!-- Process Section -->
<section class="process-section">
	<div class="container">
		<div class="section-header">
			<div class="section-badge">
				<span class="badge-icon">🛠️</span>
				<span class="badge-text">Our Process</span>
			</div>
			<h2 class="section-title">How We Work Together</h2>
			<p class="section-subtitle">
				Our proven methodology ensures successful outcomes while maintaining transparency and
				alignment throughout your project.
			</p>
		</div>

		<div class="process-timeline">
			<div class="timeline-item" class:mounted>
				<div class="timeline-marker">
					<div class="marker-inner">1</div>
				</div>
				<div class="timeline-content">
					<h3>Discovery & Planning</h3>
					<p>
						We start by understanding your goals, constraints, and current state. Through
						stakeholder interviews and technical assessment, we develop a comprehensive project
						plan.
					</p>
				</div>
			</div>

			<div class="timeline-item" class:mounted style="animation-delay: 200ms">
				<div class="timeline-marker">
					<div class="marker-inner">2</div>
				</div>
				<div class="timeline-content">
					<h3>Design & Architecture</h3>
					<p>
						We create detailed technical specifications, system architecture, and project roadmap.
						All decisions are documented and reviewed with your team.
					</p>
				</div>
			</div>

			<div class="timeline-item" class:mounted style="animation-delay: 400ms">
				<div class="timeline-marker">
					<div class="marker-inner">3</div>
				</div>
				<div class="timeline-content">
					<h3>Implementation & Delivery</h3>
					<p>
						Our senior engineers execute the plan with regular check-ins, iterative delivery, and
						continuous integration of feedback from your stakeholders.
					</p>
				</div>
			</div>

			<div class="timeline-item" class:mounted style="animation-delay: 600ms">
				<div class="timeline-marker">
					<div class="marker-inner">4</div>
				</div>
				<div class="timeline-content">
					<h3>Knowledge Transfer & Support</h3>
					<p>
						We ensure your team can maintain and extend the solution through comprehensive
						documentation, training, and ongoing support options.
					</p>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- CTA Section -->
<section class="cta-section">
	<div class="container">
		<div class="cta-content">
			<h2>Ready to Get Started?</h2>
			<p>
				Let's discuss how we can help accelerate your next project. Schedule a free discovery call
				to explore your needs and our approach.
			</p>
			<div class="cta-buttons">
				<a
					href="mailto:pothosca@gmail.com?subject=Service%20Inquiry"
					class="btn btn-primary btn-lg"
				>
					<span>Request a Proposal</span>
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
				</a>
				<a href="/contact" class="btn btn-secondary btn-lg"> Contact Us </a>
			</div>
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
		max-width: 700px;
		margin-left: auto;
		margin-right: auto;
		line-height: 1.6;
	}

	/* Services Section */
	.services-section {
		padding: var(--space-32) 0;
		background: var(--color-bg-secondary);
	}

	.services-grid {
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(500px, 1fr));
		gap: var(--space-8);
	}

	.service-card {
		background: var(--color-bg-secondary);
		border: 1px solid var(--color-neutral-200);
		border-radius: var(--radius-2xl);
		padding: var(--space-8);
		box-shadow: var(--shadow-sm);
		transition: all var(--duration-300) var(--ease-out);
		opacity: 0;
		transform: translateY(30px);
		display: flex;
		flex-direction: column;
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

	.service-header {
		display: flex;
		justify-content: space-between;
		align-items: flex-start;
		margin-bottom: var(--space-6);
	}

	.service-icon {
		padding: var(--space-4);
		background: linear-gradient(135deg, var(--color-accent) 0%, var(--color-primary-500) 100%);
		border-radius: var(--radius-xl);
		color: white;
		display: flex;
		align-items: center;
		justify-content: center;
	}

	.service-meta {
		text-align: right;
		display: flex;
		flex-direction: column;
		gap: var(--space-2);
	}

	.service-badge {
		background: var(--color-primary-100);
		color: var(--color-accent);
		padding: var(--space-1) var(--space-3);
		border-radius: var(--radius-full);
		font-size: var(--text-xs);
		font-weight: 600;
		text-transform: uppercase;
		letter-spacing: 0.05em;
	}

	.service-timeline {
		font-size: var(--text-sm);
		color: var(--color-text-tertiary);
		font-weight: 500;
	}

	.service-content {
		flex: 1;
		margin-bottom: var(--space-8);
	}

	.service-title {
		margin-bottom: var(--space-4);
		color: var(--color-text-primary);
		font-size: var(--text-2xl);
	}

	.service-description {
		color: var(--color-text-secondary);
		margin-bottom: var(--space-8);
		line-height: 1.7;
	}

	.service-features h3 {
		font-size: var(--text-lg);
		font-weight: 600;
		color: var(--color-text-primary);
		margin-bottom: var(--space-4);
	}

	.features-list {
		list-style: none;
		padding: 0;
		margin: 0;
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
		gap: var(--space-2);
	}

	.features-list li {
		display: flex;
		align-items: center;
		gap: var(--space-2);
		font-size: var(--text-sm);
		color: var(--color-text-secondary);
		padding: var(--space-1) 0;
	}

	.features-list li::before {
		content: '✓';
		color: var(--color-accent);
		font-weight: bold;
		font-size: var(--text-base);
		flex-shrink: 0;
	}

	.service-footer {
		margin-top: auto;
	}

	.service-cta {
		display: inline-flex;
		align-items: center;
		gap: var(--space-2);
		background: linear-gradient(135deg, var(--color-accent) 0%, var(--color-primary-500) 100%);
		color: white;
		padding: var(--space-3) var(--space-6);
		border-radius: var(--radius-lg);
		text-decoration: none;
		font-weight: 600;
		font-size: var(--text-sm);
		transition: all var(--duration-200) var(--ease-out);
		box-shadow: var(--shadow-sm);
	}

	.service-cta:hover {
		transform: translateY(-2px);
		box-shadow: var(--shadow-md);
		text-decoration: none;
		color: white;
	}

	/* Process Section */
	.process-section {
		padding: var(--space-32) 0;
		background: var(--color-bg-primary);
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

	.process-timeline {
		max-width: 800px;
		margin: 0 auto;
	}

	.timeline-item {
		display: flex;
		gap: var(--space-6);
		margin-bottom: var(--space-12);
		opacity: 0;
		transform: translateX(-30px);
		transition: all var(--duration-500) var(--ease-out);
	}

	.timeline-item.mounted {
		opacity: 1;
		transform: translateX(0);
	}

	.timeline-item:last-child {
		margin-bottom: 0;
	}

	.timeline-marker {
		flex-shrink: 0;
		width: 60px;
		height: 60px;
		background: linear-gradient(135deg, var(--color-accent) 0%, var(--color-primary-500) 100%);
		border-radius: var(--radius-full);
		display: flex;
		align-items: center;
		justify-content: center;
		box-shadow: var(--shadow-md);
	}

	.marker-inner {
		color: white;
		font-weight: 700;
		font-size: var(--text-xl);
	}

	.timeline-content {
		flex: 1;
		padding-top: var(--space-2);
	}

	.timeline-content h3 {
		font-size: var(--text-xl);
		font-weight: 600;
		color: var(--color-text-primary);
		margin-bottom: var(--space-3);
	}

	.timeline-content p {
		color: var(--color-text-secondary);
		margin: 0;
		line-height: 1.6;
	}

	/* CTA Section */
	.cta-section {
		padding: var(--space-32) 0;
		background: linear-gradient(135deg, var(--color-neutral-900) 0%, var(--color-neutral-800) 100%);
		color: var(--color-neutral-100);
	}

	.cta-content {
		text-align: center;
		max-width: 600px;
		margin: 0 auto;
	}

	.cta-content h2 {
		font-size: var(--text-4xl);
		font-weight: 700;
		color: var(--color-neutral-50);
		margin-bottom: var(--space-6);
	}

	.cta-content p {
		font-size: var(--text-lg);
		color: var(--color-neutral-300);
		margin-bottom: var(--space-10);
		line-height: 1.6;
	}

	.cta-buttons {
		display: flex;
		gap: var(--space-4);
		justify-content: center;
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

	/* Mobile Responsive */
	@media (max-width: 768px) {
		.services-grid {
			grid-template-columns: 1fr;
		}

		.service-header {
			flex-direction: column;
			gap: var(--space-4);
		}

		.service-meta {
			text-align: left;
			flex-direction: row;
			gap: var(--space-4);
		}

		.features-list {
			grid-template-columns: 1fr;
		}

		.timeline-item {
			flex-direction: column;
			text-align: center;
		}

		.cta-buttons {
			flex-direction: column;
			align-items: center;
		}
	}

	@media (max-width: 640px) {
		.hero {
			padding: var(--space-20) 0 var(--space-16) 0;
		}

		.services-section {
			padding: var(--space-20) 0;
		}

		.process-section {
			padding: var(--space-20) 0;
		}

		.cta-section {
			padding: var(--space-20) 0;
		}
	}
</style>
