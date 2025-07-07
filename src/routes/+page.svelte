<script lang="ts">
	import { onMount } from 'svelte';

	let currentTestimonial = 0;

	const testimonials = [
		{
			name: 'Sarah Martinez',
			title: 'CEO, GreenTech Solutions',
			avatar: 'https://via.placeholder.com/60x60/5a7968/ffffff?text=SM',
			quote:
				'Pothos transformed our strategic approach and operational efficiency. Their methodology helped us achieve sustainable growth while building a resilient organization that attracts top talent.',
			results: [
				{ number: '300%', label: 'Revenue Growth' },
				{ number: '85%', label: 'Team Retention' }
			]
		},
		{
			name: 'Michael Chen',
			title: 'Founder, TechFlow Dynamics',
			avatar: 'https://via.placeholder.com/60x60/4a6854/ffffff?text=MC',
			quote:
				'The strategic clarity and operational excellence we gained through Pothos has been transformational. They helped us scale from startup to market leader with sustainable practices.',
			results: [
				{ number: '450%', label: 'Market Share' },
				{ number: '92%', label: 'Client Satisfaction' }
			]
		},
		{
			name: 'Elena Rodriguez',
			title: 'VP Operations, Sustainable Ventures',
			avatar: 'https://via.placeholder.com/60x60/5d8268/ffffff?text=ER',
			quote:
				"Pothos doesn't just consult—they partner with you for long-term success. Their holistic approach to business transformation delivered results beyond our expectations.",
			results: [
				{ number: '200%', label: 'Efficiency Gain' },
				{ number: '78%', label: 'Cost Reduction' }
			]
		},
		{
			name: 'David Thompson',
			title: 'Chief Strategy Officer, Innovation Labs',
			avatar: 'https://via.placeholder.com/60x60/759584/ffffff?text=DT',
			quote:
				'Working with Pothos was a game-changer. Their strategic insights and hands-on approach helped us navigate complex market challenges and emerge stronger than ever.',
			results: [
				{ number: '180%', label: 'Productivity' },
				{ number: '95%', label: 'Goal Achievement' }
			]
		}
	];

	let testimonialInterval: ReturnType<typeof setInterval>;
	let isPaused = false;

	onMount(() => {
		startTestimonialCycle();
		return () => {
			if (testimonialInterval) {
				clearInterval(testimonialInterval);
			}
		};
	});

	function startTestimonialCycle() {
		if (testimonialInterval) {
			clearInterval(testimonialInterval);
		}
		testimonialInterval = setInterval(() => {
			if (!isPaused) {
				currentTestimonial = (currentTestimonial + 1) % testimonials.length;
			}
		}, 5000);
	}

	function pauseTestimonials() {
		isPaused = true;
	}

	function resumeTestimonials() {
		isPaused = false;
	}

	// Refined service data with professional terminology
	const services = [
		{
			title: 'Strategic Growth Consulting',
			description:
				'Comprehensive analysis and strategic planning to unlock sustainable growth opportunities through market insights and competitive positioning.',
			icon: `<svg width="48" height="48" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="color: var(--color-forest-600);">
				<path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"/>
			</svg>`,
			features: [
				'Market analysis and competitive intelligence',
				'Strategic roadmap development',
				'Growth opportunity identification',
				'Performance measurement frameworks'
			],
			timeline: '3-6 months',
			engagement: 'Strategic Partnership'
		},
		{
			title: 'Operational Excellence',
			description:
				'Systematic optimization of business processes and organizational capabilities to drive efficiency, quality, and sustainable performance improvements.',
			icon: `<svg width="48" height="48" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="color: var(--color-forest-600);">
				<circle cx="12" cy="12" r="3"/><path d="M12 1v6m0 6v6m11-7h-6m-6 0H1"/>
			</svg>`,
			features: [
				'Process optimization and automation',
				'Quality management systems',
				'Performance analytics and KPIs',
				'Change management support'
			],
			timeline: '4-8 months',
			engagement: 'Implementation Project'
		},
		{
			title: 'Leadership Development',
			description:
				'Executive coaching and leadership capability building to develop high-performing teams and sustainable organizational culture.',
			icon: `<svg width="48" height="48" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="color: var(--color-forest-600);">
				<path d="M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/><path d="M22 21v-2a4 4 0 0 0-3-3.87M16 3.13a4 4 0 0 1 0 7.75"/>
			</svg>`,
			features: [
				'Executive coaching and mentoring',
				'Leadership assessment and development',
				'Team effectiveness programs',
				'Succession planning strategies'
			],
			timeline: '6-12 months',
			engagement: 'Ongoing Partnership'
		}
	];
</script>

<svelte:head>
	<title>Pothos Consulting & Advising | Premier Software Consulting</title>
	<meta
		name="description"
		content="Cultivating exceptional software solutions through expert guidance, engineering, and strategy."
	/>
</svelte:head>

<!-- Refined Hero Section -->
<section class="hero bg-gradient hero-texture">
	<div class="hero-background">
		<div class="hero-pattern"></div>
		<div class="hero-orbs">
			<div class="orb orb-1"></div>
			<div class="orb orb-2"></div>
			<div class="orb orb-3"></div>
			<div class="orb orb-4"></div>
			<div class="orb orb-5"></div>
			<div class="orb orb-6"></div>
			<div class="orb orb-7"></div>
			<div class="orb orb-8"></div>
		</div>
	</div>

	<div class="hero-content">
		<!-- <div class="hero-badges animate-fade-in-up">
			<span class="badge">Strategic Growth Solutions</span>
			<span class="badge">Sustainable Business Practices</span>
		</div> -->

		<h1 class="hero-title animate-fade-in-up stagger-1">
			Transform Your Business with <span class="gradient-text">Strategic Excellence</span>
		</h1>

		<p class="hero-description animate-fade-in-up stagger-2">
			We partner with ambitious organizations to unlock sustainable growth through proven
			methodologies, strategic insight, and operational excellence. Your success is our expertise.
		</p>

		<div class="hero-actions animate-fade-in-up stagger-3">
			<a href="/contact" class="btn btn-primary btn-large">Start Your Transformation</a>
			<a href="/services" class="btn btn-outline btn-large">Explore Our Expertise</a>
		</div>

		<div class="hero-stats animate-fade-in-up stagger-4">
			<div class="stat animate-scale-in">
				<div class="stat-number gradient-text">150+</div>
				<div class="stat-label">Companies Transformed</div>
			</div>
			<div class="stat animate-scale-in stagger-1">
				<div class="stat-number gradient-text">25+</div>
				<div class="stat-label">Years of Excellence</div>
			</div>
			<div class="stat animate-scale-in stagger-2">
				<div class="stat-number gradient-text">98%</div>
				<div class="stat-label">Success Rate</div>
			</div>
		</div>
	</div>
</section>

<!-- Refined Services Section -->
<section class="services">
	<div class="container">
		<div class="section-header">
			<h2 class="text-gradient">Our Strategic Approach</h2>
			<p>
				Every organization is unique. Our tailored methodologies ensure sustainable growth that
				aligns with your vision and market realities.
			</p>
		</div>

		<div class="services-grid">
			{#each services as service, index}
				<div class="service-card card animate-fade-in-up stagger-{index + 1}">
					<div class="service-icon">
						<!-- eslint-disable-next-line svelte/no-at-html-tags -->
						{@html service.icon}
					</div>
					<h3>{service.title}</h3>
					<p class="service-description">{service.description}</p>

					<div class="service-features">
						<h4>Key Deliverables:</h4>
						<ul>
							{#each service.features as feature}
								<li>
									<span class="feature-icon">→</span>
									{feature}
								</li>
							{/each}
						</ul>
					</div>

					<div class="service-meta">
						<div class="service-timeline">
							<span class="meta-icon">⏱</span>
							<span>{service.timeline}</span>
						</div>
						<div class="service-type">
							<span class="meta-icon">📋</span>
							<span>{service.engagement}</span>
						</div>
					</div>

					<a href="/services" class="btn btn-outline">Learn More</a>
				</div>
			{/each}
		</div>

		<!-- Process Preview -->
		<div class="process-preview bg-texture-subtle">
			<h3 class="text-gradient">Our Proven Methodology</h3>
			<div class="process-steps">
				<div class="process-step animate-fade-in-left stagger-1">
					<div class="step-number">1</div>
					<div class="step-content">
						<h4>Strategic Assessment</h4>
						<p>
							Comprehensive analysis of your current position, market dynamics, and growth
							opportunities.
						</p>
					</div>
				</div>
				<div class="process-step animate-fade-in-left stagger-2">
					<div class="step-number">2</div>
					<div class="step-content">
						<h4>Implementation Excellence</h4>
						<p>Systematic execution with continuous monitoring, adaptation, and optimization.</p>
					</div>
				</div>
				<div class="process-step animate-fade-in-left stagger-3">
					<div class="step-number">3</div>
					<div class="step-content">
						<h4>Sustainable Results</h4>
						<p>Long-term success through embedded capabilities and ongoing strategic refinement.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Refined About Preview -->
<section class="about-preview bg-texture-subtle">
	<div class="container">
		<div class="about-content-centered">
			<div class="about-text">
				<h2 class="text-gradient">Excellence Through Experience</h2>
				<p class="lead">
					We believe that exceptional results come from the intersection of deep expertise, proven
					methodologies, and genuine partnership with our clients.
				</p>
				<p>
					Our approach combines strategic thinking with practical execution, ensuring that every
					engagement delivers measurable value and lasting impact. We don't just provide
					recommendations—we partner with you to achieve transformational results.
				</p>

				<div class="values-preview">
					<div class="value-item">
						<span class="value-icon">⚡</span>
						<span
							><strong>Strategic Excellence:</strong> Data-driven insights and proven frameworks</span
						>
					</div>
					<div class="value-item">
						<span class="value-icon">🎯</span>
						<span><strong>Results Focus:</strong> Measurable outcomes and sustainable impact</span>
					</div>
					<div class="value-item">
						<span class="value-icon">🤝</span>
						<span><strong>True Partnership:</strong> Collaborative approach to lasting success</span
						>
					</div>
				</div>

				<a href="/about" class="btn btn-primary">Discover Our Story</a>
			</div>
		</div>
	</div>
</section>

<!-- Modern Testimonials Carousel Section -->
<section class="testimonials-section bg-texture-subtle">
	<div class="container">
		<div class="section-header">
			<h2 class="text-gradient">What Our Clients Say</h2>
			<p>
				Real results from real partnerships. Discover how we've helped organizations transform their
				business outcomes.
			</p>
		</div>

		<div
			class="testimonial-ribbon"
			role="region"
			aria-label="Client testimonials"
			on:mouseenter={pauseTestimonials}
			on:mouseleave={resumeTestimonials}
		>
			<div class="ribbon-track">
				<!-- Create multiple sets for truly seamless loop -->
				{#each [...testimonials, ...testimonials, ...testimonials] as testimonial}
					<div class="ribbon-card">
						<div class="ribbon-content">
							<div class="quote-mark">
								<svg
									width="32"
									height="32"
									viewBox="0 0 24 24"
									fill="none"
									stroke="currentColor"
									stroke-width="2"
								>
									<path
										d="M3 21c3 0 7-1 7-8V5c0-1.25-.756-2.017-2-2H4c-1.25 0-2 .75-2 1.972V11c0 1.25.75 2 2 2 1 0 1 0 1 1v1c0 1-1 2-2 2s-1 .008-1 1.031V20c0 1 0 1 1 1z"
									/>
									<path
										d="M15 21c3 0 7-1 7-8V5c0-1.25-.757-2.017-2-2h-4c-1.25 0-2 .75-2 1.972V11c0 1.25.75 2 2 2h.75c0 2.25.25 4-2.75 4v3c0 1 0 1 1 1z"
									/>
								</svg>
							</div>
							<blockquote class="ribbon-quote">
								"{testimonial.quote}"
							</blockquote>
							<div class="ribbon-author">
								<div class="ribbon-avatar">
									<img src={testimonial.avatar} alt={testimonial.name} />
								</div>
								<div class="ribbon-author-info">
									<h4>{testimonial.name}</h4>
									<p>{testimonial.title}</p>
									<div class="ribbon-rating">
										{'⭐'.repeat(5)}
									</div>
								</div>
							</div>
						</div>
					</div>
				{/each}
			</div>
		</div>
	</div>
</section>

<!-- Refined CTA Section -->
<section class="cta bg-gradient-dark">
	<div class="container">
		<div class="cta-content">
			<div class="cta-text">
				<h2>Ready to Transform Your Business?</h2>
				<p>
					Every successful transformation begins with a strategic conversation. Let's explore how
					our proven methodologies can unlock your organization's potential.
				</p>
			</div>
			<div class="cta-actions">
				<a href="/contact" class="btn btn-primary btn-large">Start the Conversation</a>
				<a href="/services" class="btn btn-secondary btn-large">Explore Our Services</a>
			</div>
		</div>
	</div>
</section>

<style>
	/* Refined Hero Section */
	.hero {
		min-height: 100vh;
		display: flex;
		align-items: center;
		justify-content: center;
		position: relative;
		overflow: hidden;
		padding: var(--space-20) var(--space-4);
	}

	/* Sophisticated Hero Background */
	.hero-background {
		position: absolute;
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
		z-index: 1;
		opacity: 0.6;
	}

	.hero-pattern {
		position: absolute;
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
		background-image:
			radial-gradient(circle at 20% 20%, rgba(117, 149, 132, 0.1) 2px, transparent 2px),
			radial-gradient(circle at 80% 80%, rgba(74, 104, 84, 0.08) 1px, transparent 1px),
			radial-gradient(circle at 40% 60%, rgba(93, 130, 105, 0.06) 1px, transparent 1px);
		background-size:
			80px 80px,
			60px 60px,
			100px 100px;
		background-position:
			0 0,
			40px 40px,
			20px 60px;
		animation: pattern-drift 20s ease-in-out infinite;
	}

	@keyframes pattern-drift {
		0%,
		100% {
			transform: translate(0, 0) rotate(0deg);
			opacity: 0.6;
		}
		33% {
			transform: translate(10px, -5px) rotate(1deg);
			opacity: 0.4;
		}
		66% {
			transform: translate(-5px, 10px) rotate(-0.5deg);
			opacity: 0.7;
		}
	}

	.hero-orbs {
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		width: 100%;
		height: 100%;
		pointer-events: none;
	}

	/* Multiple Orbital Rings */
	.hero-orbs::before,
	.hero-orbs::after {
		content: '';
		position: absolute;
		top: 50%;
		left: 50%;
		border: 1px solid rgba(117, 149, 132, 0.12);
		border-radius: 50%;
		transform: translate(-50%, -50%);
		pointer-events: none;
	}

	/* Inner ring */
	.hero-orbs::before {
		width: 500px;
		height: 500px;
		animation: ring-pulse 8s ease-in-out infinite;
	}

	/* Middle ring */
	.hero-orbs::after {
		width: 700px;
		height: 700px;
		animation: ring-pulse 12s ease-in-out infinite reverse;
	}

	/* Outer rings using background */
	.hero-orbs {
		background:
			radial-gradient(
				circle at center,
				transparent 399px,
				rgba(117, 149, 132, 0.12) 400px,
				rgba(117, 149, 132, 0.12) 401px,
				transparent 402px
			),
			radial-gradient(
				circle at center,
				transparent 549px,
				rgba(93, 130, 105, 0.1) 550px,
				rgba(93, 130, 105, 0.1) 551px,
				transparent 552px
			),
			radial-gradient(
				circle at center,
				transparent 699px,
				rgba(117, 149, 132, 0.08) 700px,
				rgba(117, 149, 132, 0.08) 701px,
				transparent 702px
			),
			radial-gradient(
				circle at center,
				transparent 849px,
				rgba(93, 130, 105, 0.06) 850px,
				rgba(93, 130, 105, 0.06) 851px,
				transparent 852px
			),
			radial-gradient(
				circle at center,
				transparent 999px,
				rgba(74, 104, 84, 0.05) 1000px,
				rgba(74, 104, 84, 0.05) 1001px,
				transparent 1002px
			);
		animation: ring-pulse 10s ease-in-out infinite;
	}

	@keyframes ring-pulse {
		0%,
		100% {
			opacity: 0.4;
		}
		50% {
			opacity: 0.7;
		}
	}

	/* Orbital containers for proper movement */
	.orb {
		position: absolute;
		top: 50%;
		left: 50%;
		pointer-events: none;
	}

	.orb-1 {
		width: 500px;
		height: 500px;
		animation: orbit-1 25s linear infinite;
		transform: translate(-50%, -50%);
	}

	.orb-1::after {
		content: '';
		position: absolute;
		top: -6px;
		left: 50%;
		width: 12px;
		height: 12px;
		background: radial-gradient(
			circle at 30% 30%,
			rgba(117, 149, 132, 0.9),
			rgba(93, 130, 105, 0.5)
		);
		border-radius: 50%;
		transform: translateX(-50%);
		box-shadow: 0 0 15px rgba(117, 149, 132, 0.3);
		filter: blur(0.3px);
	}

	.orb-2 {
		width: 700px;
		height: 700px;
		animation: orbit-2 35s linear infinite reverse;
		transform: translate(-50%, -50%);
	}

	.orb-2::after {
		content: '';
		position: absolute;
		top: 50%;
		right: -5px;
		width: 10px;
		height: 10px;
		background: radial-gradient(
			circle at 30% 30%,
			rgba(74, 104, 84, 0.9),
			rgba(117, 149, 132, 0.5)
		);
		border-radius: 50%;
		transform: translateY(-50%);
		box-shadow: 0 0 12px rgba(74, 104, 84, 0.3);
		filter: blur(0.3px);
	}

	.orb-3 {
		width: 800px;
		height: 800px;
		animation: orbit-3 40s linear infinite;
		transform: translate(-50%, -50%);
	}

	.orb-3::after {
		content: '';
		position: absolute;
		bottom: -4px;
		left: 50%;
		width: 8px;
		height: 8px;
		background: radial-gradient(circle at 30% 30%, rgba(93, 130, 105, 0.9), rgba(74, 104, 84, 0.5));
		border-radius: 50%;
		transform: translateX(-50%);
		box-shadow: 0 0 10px rgba(93, 130, 105, 0.3);
		filter: blur(0.3px);
	}

	.orb-4 {
		width: 1100px;
		height: 1100px;
		animation: orbit-4 50s linear infinite reverse;
		transform: translate(-50%, -50%);
	}

	.orb-4::after {
		content: '';
		position: absolute;
		top: 50%;
		right: -7px;
		width: 14px;
		height: 14px;
		background: radial-gradient(
			circle at 30% 30%,
			rgba(117, 149, 132, 0.8),
			rgba(93, 130, 105, 0.4)
		);
		border-radius: 50%;
		transform: translateY(-50%);
		box-shadow: 0 0 18px rgba(117, 149, 132, 0.25);
		filter: blur(0.3px);
	}

	.orb-5 {
		width: 1100px;
		height: 1100px;
		animation: orbit-5 45s linear infinite;
		transform: translate(-50%, -50%);
	}

	.orb-5::after {
		content: '';
		position: absolute;
		top: 50%;
		left: -4px;
		width: 9px;
		height: 9px;
		background: radial-gradient(circle at 30% 30%, rgba(74, 104, 84, 0.8), rgba(93, 130, 105, 0.4));
		border-radius: 50%;
		transform: translateY(-50%);
		box-shadow: 0 0 12px rgba(74, 104, 84, 0.25);
		filter: blur(0.3px);
	}

	.orb-6 {
		width: 1400px;
		height: 1400px;
		animation: orbit-6 60s linear infinite;
		transform: translate(-50%, -50%);
	}

	.orb-6::after {
		content: '';
		position: absolute;
		top: -5px;
		left: 50%;
		width: 11px;
		height: 11px;
		background: radial-gradient(
			circle at 30% 30%,
			rgba(117, 149, 132, 0.7),
			rgba(74, 104, 84, 0.3)
		);
		border-radius: 50%;
		transform: translateX(-50%);
		box-shadow: 0 0 14px rgba(117, 149, 132, 0.2);
		filter: blur(0.3px);
	}

	.orb-7 {
		width: 1700px;
		height: 1700px;
		animation: orbit-7 70s linear infinite reverse;
		transform: translate(-50%, -50%);
	}

	.orb-7::after {
		content: '';
		position: absolute;
		bottom: -6px;
		right: 50%;
		width: 13px;
		height: 13px;
		background: radial-gradient(
			circle at 30% 30%,
			rgba(93, 130, 105, 0.7),
			rgba(117, 149, 132, 0.3)
		);
		border-radius: 50%;
		transform: translateX(50%);
		box-shadow: 0 0 16px rgba(93, 130, 105, 0.2);
		filter: blur(0.3px);
	}

	.orb-8 {
		width: 2000px;
		height: 2000px;
		animation: orbit-8 80s linear infinite;
		transform: translate(-50%, -50%);
	}

	.orb-8::after {
		content: '';
		position: absolute;
		top: 50%;
		left: -7px;
		width: 15px;
		height: 15px;
		background: radial-gradient(circle at 30% 30%, rgba(74, 104, 84, 0.6), rgba(93, 130, 105, 0.3));
		border-radius: 50%;
		transform: translateY(-50%);
		box-shadow: 0 0 20px rgba(74, 104, 84, 0.15);
		filter: blur(0.3px);
	}

	@keyframes orbit-1 {
		from {
			transform: translate(-50%, -50%) rotate(0deg);
		}
		to {
			transform: translate(-50%, -50%) rotate(360deg);
		}
	}

	@keyframes orbit-2 {
		from {
			transform: translate(-50%, -50%) rotate(0deg);
		}
		to {
			transform: translate(-50%, -50%) rotate(360deg);
		}
	}

	@keyframes orbit-3 {
		from {
			transform: translate(-50%, -50%) rotate(0deg);
		}
		to {
			transform: translate(-50%, -50%) rotate(360deg);
		}
	}

	@keyframes orbit-4 {
		from {
			transform: translate(-50%, -50%) rotate(0deg);
		}
		to {
			transform: translate(-50%, -50%) rotate(360deg);
		}
	}

	@keyframes orbit-5 {
		from {
			transform: translate(-50%, -50%) rotate(0deg);
		}
		to {
			transform: translate(-50%, -50%) rotate(360deg);
		}
	}

	@keyframes orbit-6 {
		from {
			transform: translate(-50%, -50%) rotate(0deg);
		}
		to {
			transform: translate(-50%, -50%) rotate(360deg);
		}
	}

	@keyframes orbit-7 {
		from {
			transform: translate(-50%, -50%) rotate(0deg);
		}
		to {
			transform: translate(-50%, -50%) rotate(360deg);
		}
	}

	@keyframes orbit-8 {
		from {
			transform: translate(-50%, -50%) rotate(0deg);
		}
		to {
			transform: translate(-50%, -50%) rotate(360deg);
		}
	}

	.hero-content {
		text-align: center;
		max-width: 900px;
		position: relative;
		z-index: 2;
	}

	.hero-badges {
		display: flex;
		gap: var(--space-4);
		justify-content: center;
		margin-bottom: var(--space-8);
		flex-wrap: wrap;
	}

	.badge {
		background: var(--color-surface-elevated);
		color: var(--color-forest-700);
		padding: var(--space-2) var(--space-4);
		border-radius: var(--radius-2xl);
		font-size: 0.9rem;
		font-weight: 500;
		border: 1px solid var(--color-sage-200);
		box-shadow: var(--shadow-sm);
		backdrop-filter: blur(10px);
	}

	.hero-title {
		font-size: clamp(3rem, 8vw, 5rem);
		margin-bottom: var(--space-6);
		line-height: 1.1;
	}

	.hero-description {
		font-size: 1.3rem;
		line-height: 1.6;
		margin-bottom: var(--space-8);
		color: var(--color-stone-600);
		max-width: 700px;
		margin-left: auto;
		margin-right: auto;
	}

	.hero-actions {
		display: flex;
		gap: var(--space-4);
		justify-content: center;
		margin-bottom: var(--space-16);
		flex-wrap: wrap;
	}

	.hero-stats {
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
		gap: var(--space-8);
		max-width: 600px;
		margin: 0 auto;
	}

	.stat {
		text-align: center;
	}

	.stat-number {
		font-size: 2.5rem;
		font-weight: 700;
		font-family: var(--font-display);
		margin-bottom: var(--space-2);
	}

	.stat-label {
		font-size: 0.9rem;
		color: var(--color-stone-600);
		font-weight: 500;
	}

	/* Refined Services Section */
	.services {
		padding: var(--space-20) 0;
		position: relative;
		background: var(--color-background);
	}

	.section-header {
		text-align: center;
		margin-bottom: var(--space-16);
		max-width: 800px;
		margin-left: auto;
		margin-right: auto;
	}

	.section-header h2 {
		margin-bottom: var(--space-4);
	}

	.section-header p {
		font-size: 1.2rem;
		color: var(--color-stone-600);
	}

	.services-grid {
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
		gap: var(--space-8);
		margin-bottom: var(--space-20);
	}

	.service-card {
		position: relative;
		background: var(--color-surface-elevated);
		border: 1px solid var(--color-sage-100);
	}

	.service-icon {
		font-size: 3rem;
		margin-bottom: var(--space-4);
		display: flex;
		align-items: center;
		justify-content: center;
		width: 80px;
		height: 80px;
		background: linear-gradient(135deg, var(--color-sage-100), var(--color-forest-100));
		border-radius: var(--radius-xl);
		margin-left: auto;
		margin-right: auto;
	}

	.service-description {
		margin-bottom: var(--space-6);
		color: var(--color-stone-600);
	}

	.service-features {
		margin-bottom: var(--space-6);
	}

	.service-features h4 {
		font-size: 1rem;
		margin-bottom: var(--space-3);
		color: var(--color-forest-700);
	}

	.service-features ul {
		list-style: none;
		padding: 0;
		margin: 0;
	}

	.service-features li {
		display: flex;
		align-items: flex-start;
		gap: var(--space-2);
		margin-bottom: var(--space-2);
		font-size: 0.95rem;
		color: var(--color-stone-600);
	}

	.feature-icon {
		margin-top: 2px;
		flex-shrink: 0;
		color: var(--color-sage-500);
		font-weight: 600;
	}

	.service-meta {
		display: flex;
		justify-content: space-between;
		margin-bottom: var(--space-6);
		padding: var(--space-4);
		background: var(--color-sage-50);
		border-radius: var(--radius-md);
		border: 1px solid var(--color-sage-100);
	}

	.service-timeline,
	.service-type {
		display: flex;
		align-items: center;
		gap: var(--space-2);
		font-size: 0.9rem;
		color: var(--color-stone-600);
	}

	.meta-icon {
		font-size: 1rem;
	}

	/* Process Preview */
	.process-preview {
		background: var(--color-surface-elevated);
		border-radius: var(--radius-2xl);
		padding: var(--space-12);
		border: 1px solid var(--color-sage-100);
		position: relative;
	}

	.process-preview h3 {
		text-align: center;
		margin-bottom: var(--space-8);
	}

	.process-steps {
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
		gap: var(--space-8);
	}

	.process-step {
		display: flex;
		gap: var(--space-4);
		align-items: flex-start;
	}

	.step-number {
		width: 50px;
		height: 50px;
		background: linear-gradient(135deg, var(--color-forest-600), var(--color-sage-600));
		color: white;
		border-radius: 50%;
		display: flex;
		align-items: center;
		justify-content: center;
		font-weight: 700;
		font-size: 1.2rem;
		flex-shrink: 0;
	}

	.step-content h4 {
		margin-bottom: var(--space-2);
		color: var(--color-forest-700);
	}

	.step-content p {
		color: var(--color-stone-600);
		font-size: 0.95rem;
		margin: 0;
	}

	/* Refined About Preview */
	.about-preview {
		padding: var(--space-20) 0;
	}

	.about-content {
		display: grid;
		grid-template-columns: 1fr 400px;
		gap: var(--space-12);
		align-items: start;
	}

	.about-content-centered {
		max-width: 800px;
		margin: 0 auto;
		text-align: center;
	}

	.about-text .lead {
		font-size: 1.3rem;
		line-height: 1.6;
		color: var(--color-stone-700);
		margin-bottom: var(--space-6);
	}

	.values-preview {
		margin: var(--space-8) 0;
		display: flex;
		flex-direction: column;
		gap: var(--space-4);
	}

	.value-item {
		display: flex;
		align-items: center;
		gap: var(--space-3);
		padding: var(--space-3);
		background: var(--color-sage-50);
		border-radius: var(--radius-md);
		border: 1px solid var(--color-sage-100);
	}

	.value-icon {
		font-size: 1.5rem;
	}

	/* Modern Testimonials Ribbon */
	.testimonials-section {
		padding: var(--space-20) 0;
		position: relative;
		overflow: hidden;
		background: linear-gradient(135deg, var(--color-sage-50), var(--color-cream-50));
	}

	.testimonials-section::before {
		content: '';
		position: absolute;
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
		background:
			radial-gradient(circle at 20% 30%, rgba(117, 149, 132, 0.05) 0%, transparent 50%),
			radial-gradient(circle at 80% 70%, rgba(93, 130, 105, 0.04) 0%, transparent 50%);
		pointer-events: none;
	}

	.testimonial-ribbon {
		position: relative;
		width: 100%;
		height: 420px;
		mask: linear-gradient(90deg, transparent, white 5%, white 95%, transparent);
		-webkit-mask: linear-gradient(90deg, transparent, white 5%, white 95%, transparent);
	}

	.ribbon-track {
		display: flex;
		gap: var(--space-6);
		animation: ribbon-flow 45s linear infinite;
		width: fit-content;
		height: 100%;
		align-items: center;
		will-change: transform;
	}

	.testimonial-ribbon:hover .ribbon-track {
		animation-play-state: paused;
	}

	@keyframes ribbon-flow {
		0% {
			transform: translateX(0);
		}
		100% {
			transform: translateX(-33.333%);
		}
	}

	.ribbon-card {
		flex: 0 0 380px;
		height: 360px;
		background: var(--color-surface-elevated);
		border-radius: 20px;
		padding: var(--space-6);
		box-shadow:
			0 10px 40px -10px rgba(0, 0, 0, 0.15),
			0 0 0 1px rgba(255, 255, 255, 0.05);
		transition: all 0.6s cubic-bezier(0.16, 1, 0.3, 1);
		position: relative;
		overflow: hidden;
		border: 1px solid var(--color-sage-100);
		backdrop-filter: blur(10px);
	}

	.ribbon-card::before {
		content: '';
		position: absolute;
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
		background: linear-gradient(135deg, rgba(255, 255, 255, 0.1), rgba(255, 255, 255, 0.02));
		pointer-events: none;
	}

	.ribbon-card:hover {
		transform: translateY(-8px) scale(1.02);
		box-shadow:
			0 20px 60px -10px rgba(0, 0, 0, 0.25),
			0 0 0 1px rgba(255, 255, 255, 0.1);
	}

	.ribbon-content {
		height: 100%;
		display: flex;
		flex-direction: column;
		position: relative;
		z-index: 2;
	}

	.quote-mark {
		position: absolute;
		top: -12px;
		right: -8px;
		color: var(--color-sage-300);
		opacity: 0.4;
		z-index: 1;
	}

	.ribbon-quote {
		font-size: 1rem;
		line-height: 1.6;
		color: var(--color-stone-700);
		font-style: italic;
		margin: 0 0 auto;
		font-weight: 400;
		border: none;
		padding: 0;
		flex-grow: 1;
		display: -webkit-box;
		-webkit-line-clamp: 4;
		-webkit-box-orient: vertical;
		overflow: hidden;
		position: relative;
		z-index: 2;
		margin-bottom: var(--space-4);
	}

	.ribbon-author {
		display: flex;
		align-items: center;
		gap: var(--space-3);
		margin-top: auto;
		padding: var(--space-3);
		background: rgba(var(--color-sage-50-rgb), 0.8);
		border-radius: 12px;
		border: 1px solid rgba(255, 255, 255, 0.3);
		backdrop-filter: blur(5px);
	}

	.ribbon-avatar {
		position: relative;
		flex-shrink: 0;
	}

	.ribbon-avatar img {
		width: 50px;
		height: 50px;
		border-radius: 50%;
		border: 2px solid var(--color-sage-200);
		box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
	}

	.ribbon-avatar::after {
		content: '';
		position: absolute;
		top: -2px;
		left: -2px;
		right: -2px;
		bottom: -2px;
		border-radius: 50%;
		background: linear-gradient(135deg, var(--color-forest-400), var(--color-sage-400));
		z-index: -1;
		opacity: 0.6;
	}

	.ribbon-author-info {
		flex-grow: 1;
		min-width: 0;
	}

	.ribbon-author-info h4 {
		margin: 0 0 var(--space-1);
		color: var(--color-forest-700);
		font-weight: 600;
		font-size: 0.95rem;
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
	}

	.ribbon-author-info p {
		margin: 0 0 var(--space-1);
		font-size: 0.8rem;
		color: var(--color-stone-500);
		font-weight: 500;
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
	}

	.ribbon-rating {
		font-size: 0.75rem;
		opacity: 0.8;
	}

	/* Responsive Design */
	@media (max-width: 768px) {
		.testimonial-ribbon {
			height: 400px;
		}

		.ribbon-card {
			flex: 0 0 320px;
			height: 360px;
			padding: var(--space-5);
		}

		.ribbon-quote {
			font-size: 0.9rem;
			-webkit-line-clamp: 5;
			margin-bottom: var(--space-4);
		}

		.ribbon-author {
			margin-bottom: var(--space-3);
			margin-top: auto;
		}

		.ribbon-avatar img {
			width: 45px;
			height: 45px;
		}
	}

	@media (max-width: 480px) {
		.testimonial-ribbon {
			height: 380px;
		}

		.ribbon-card {
			flex: 0 0 300px;
			height: 340px;
			padding: var(--space-4);
		}

		.ribbon-track {
			gap: var(--space-4);
		}

		.ribbon-quote {
			font-size: 0.85rem;
			-webkit-line-clamp: 6;
			margin-bottom: var(--space-3);
		}

		.ribbon-author {
			padding: var(--space-2);
			margin-bottom: 0;
		}

		.ribbon-author-info h4 {
			font-size: 0.9rem;
		}

		.ribbon-author-info p {
			font-size: 0.75rem;
		}
	}

	/* Refined CTA Section */
	.cta {
		padding: var(--space-20) 0;
		position: relative;
		overflow: hidden;
	}

	.cta-content {
		text-align: center;
		position: relative;
		z-index: 2;
	}

	.cta-text {
		margin-bottom: var(--space-8);
		max-width: 700px;
		margin-left: auto;
		margin-right: auto;
	}

	.cta h2 {
		color: var(--color-cream-50);
		margin-bottom: var(--space-4);
	}

	.cta p {
		color: var(--color-cream-200);
		font-size: 1.2rem;
		line-height: 1.6;
	}

	.cta-actions {
		display: flex;
		gap: var(--space-4);
		justify-content: center;
		flex-wrap: wrap;
	}

	.cta .btn-secondary {
		background: rgba(255, 255, 255, 0.1);
		color: var(--color-cream-100);
		border-color: rgba(255, 255, 255, 0.3);
		backdrop-filter: blur(10px);
	}

	.cta .btn-secondary:hover {
		background: rgba(255, 255, 255, 0.2);
		border-color: rgba(255, 255, 255, 0.5);
	}

	/* Enhanced Mobile Responsiveness */
	@media (max-width: 1024px) {
		.hero-orbs::before {
			width: 400px;
			height: 400px;
		}

		.hero-orbs::after {
			width: 550px;
			height: 550px;
		}

		.hero-orbs {
			background:
				radial-gradient(
					circle at center,
					transparent 299px,
					rgba(117, 149, 132, 0.12) 300px,
					rgba(117, 149, 132, 0.12) 301px,
					transparent 302px
				),
				radial-gradient(
					circle at center,
					transparent 399px,
					rgba(93, 130, 105, 0.1) 400px,
					rgba(93, 130, 105, 0.1) 401px,
					transparent 402px
				),
				radial-gradient(
					circle at center,
					transparent 499px,
					rgba(117, 149, 132, 0.08) 500px,
					rgba(117, 149, 132, 0.08) 501px,
					transparent 502px
				);
		}

		.orb-1 {
			width: 400px;
			height: 400px;
		}

		.orb-2 {
			width: 550px;
			height: 550px;
		}

		.orb-3 {
			width: 600px;
			height: 600px;
		}

		.orb-4 {
			width: 800px;
			height: 800px;
		}

		.orb-5 {
			width: 800px;
			height: 800px;
		}

		.orb-6 {
			width: 1000px;
			height: 1000px;
		}

		.orb-7 {
			width: 1200px;
			height: 1200px;
		}

		.orb-8 {
			width: 1400px;
			height: 1400px;
		}
	}

	@media (max-width: 768px) {
		.hero {
			padding: var(--space-16) var(--space-4);
			min-height: 90vh;
		}

		.hero-title {
			font-size: clamp(2.5rem, 8vw, 3.5rem);
		}

		.hero-description {
			font-size: 1.1rem;
		}

		.hero-actions,
		.cta-actions {
			flex-direction: column;
			align-items: center;
		}

		/* Mobile orbital scaling */
		.hero-orbs::before {
			width: 250px;
			height: 250px;
		}

		.hero-orbs::after {
			width: 350px;
			height: 350px;
		}

		.hero-orbs {
			background:
				radial-gradient(
					circle at center,
					transparent 199px,
					rgba(117, 149, 132, 0.12) 200px,
					rgba(117, 149, 132, 0.12) 201px,
					transparent 202px
				),
				radial-gradient(
					circle at center,
					transparent 274px,
					rgba(93, 130, 105, 0.1) 275px,
					rgba(93, 130, 105, 0.1) 276px,
					transparent 277px
				),
				radial-gradient(
					circle at center,
					transparent 324px,
					rgba(117, 149, 132, 0.08) 325px,
					rgba(117, 149, 132, 0.08) 326px,
					transparent 327px
				);
		}

		.orb-1 {
			width: 250px;
			height: 250px;
		}

		.orb-2 {
			width: 350px;
			height: 350px;
		}

		.orb-3 {
			width: 400px;
			height: 400px;
		}

		.orb-4 {
			width: 550px;
			height: 550px;
		}

		.orb-5 {
			width: 550px;
			height: 550px;
		}

		.orb-6 {
			width: 650px;
			height: 650px;
		}

		.orb-7 {
			width: 750px;
			height: 750px;
		}

		.orb-8 {
			width: 850px;
			height: 850px;
		}

		.services {
			padding: var(--space-16) 0;
		}

		.about-preview {
			padding: var(--space-16) 0;
		}

		.about-content {
			grid-template-columns: 1fr;
			gap: var(--space-8);
		}

		.cta {
			padding: var(--space-16) 0;
		}

		.services-grid {
			grid-template-columns: 1fr;
			gap: var(--space-6);
		}

		.process-steps {
			grid-template-columns: 1fr;
		}

		.hero-stats {
			grid-template-columns: repeat(3, 1fr);
			gap: var(--space-4);
		}

		.stat-number {
			font-size: 2rem;
		}

		.ribbon-card {
			flex: 0 0 320px;
			height: 360px;
			padding: var(--space-5);
		}

		.service-meta {
			flex-direction: column;
			gap: var(--space-2);
			align-items: flex-start;
		}

		.process-preview {
			padding: var(--space-8);
		}

		/* Ensure all containers respect mobile width */
		.container {
			padding-left: var(--space-4);
			padding-right: var(--space-4);
			max-width: 100%;
			overflow-x: hidden;
		}

		.card {
			width: 100%;
			max-width: 100%;
			box-sizing: border-box;
		}
	}

	@media (max-width: 480px) {
		.hero {
			padding: var(--space-12) var(--space-3);
		}

		.hero-badges {
			flex-direction: column;
			align-items: center;
		}

		.hero-stats {
			grid-template-columns: 1fr;
			gap: var(--space-6);
		}

		/* Extra small mobile orbital scaling */
		.hero-orbs::before {
			width: 180px;
			height: 180px;
		}

		.hero-orbs::after {
			width: 250px;
			height: 250px;
		}

		.hero-orbs {
			background:
				radial-gradient(
					circle at center,
					transparent 139px,
					rgba(117, 149, 132, 0.12) 140px,
					rgba(117, 149, 132, 0.12) 141px,
					transparent 142px
				),
				radial-gradient(
					circle at center,
					transparent 189px,
					rgba(93, 130, 105, 0.1) 190px,
					rgba(93, 130, 105, 0.1) 191px,
					transparent 192px
				);
		}

		.orb-1 {
			width: 180px;
			height: 180px;
		}

		.orb-2 {
			width: 250px;
			height: 250px;
		}

		.orb-3 {
			width: 280px;
			height: 280px;
		}

		.orb-4 {
			width: 380px;
			height: 380px;
		}

		.orb-5 {
			width: 380px;
			height: 380px;
		}

		.orb-6 {
			width: 450px;
			height: 450px;
		}

		.orb-7 {
			width: 520px;
			height: 520px;
		}

		.orb-8 {
			width: 600px;
			height: 600px;
		}

		.hero-pattern {
			background-size:
				40px 40px,
				30px 30px,
				50px 50px;
		}

		.services {
			padding: var(--space-12) 0;
		}

		.about-preview {
			padding: var(--space-12) 0;
		}

		.cta {
			padding: var(--space-12) 0;
		}

		.card {
			padding: var(--space-4);
			width: 100%;
			max-width: 100%;
			box-sizing: border-box;
		}

		.process-preview {
			padding: var(--space-6);
		}

		.step-number {
			width: 40px;
			height: 40px;
			font-size: 1rem;
		}

		.container {
			padding-left: var(--space-3);
			padding-right: var(--space-3);
			max-width: 100%;
			overflow-x: hidden;
		}

		.ribbon-author {
			margin-bottom: var(--space-3);
		}

		.ribbon-quote {
			font-size: 0.85rem;
			-webkit-line-clamp: 6;
			margin-bottom: var(--space-3);
		}
	}
</style>
