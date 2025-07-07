<script lang="ts">
	import { onMount } from 'svelte';

	let mounted = false;

	onMount(() => {
		mounted = true;
	});

	const values = [
		{
			title: 'Integrity & Transparency',
			description:
				'We communicate early, often, and honestly. No surprises, no hidden agendas—just clear, direct collaboration that builds trust.',
			icon: '✨'
		},
		{
			title: 'Excellence',
			description:
				'Senior talent leads every engagement, ensuring pragmatic yet elegant solutions that stand the test of time and scale.',
			icon: '🎯'
		},
		{
			title: 'Empowerment',
			description:
				'We mentor internal teams, sharing knowledge and best practices that leave you stronger long after our engagement ends.',
			icon: '🚀'
		},
		{
			title: 'Stewardship',
			description:
				'We treat your codebase, data, and customers as if they were our own—with the utmost care and responsibility.',
			icon: '🛡️'
		}
	];

	const achievements = [
		{ number: '10+', label: 'Years of Experience' },
		{ number: '50+', label: 'Projects Delivered' },
		{ number: '4', label: 'Continents Served' },
		{ number: '100%', label: 'Client Satisfaction' }
	];
</script>

<svelte:head>
	<title>About Pothos Consulting & Advising</title>
	<meta
		name="description"
		content="Learn about the mission, values, and leadership behind Pothos Consulting & Advising. Discover our commitment to excellence and partnership approach."
	/>
</svelte:head>

<!-- Hero Section -->
<section class="hero">
	<div class="container">
		<div class="hero-content" class:mounted>
			<div class="hero-badge">
				<span class="badge-icon">🌿</span>
				<span class="badge-text">Our Story</span>
			</div>

			<h1 class="hero-title">
				Rooted in Quality, <span class="gradient-text">Branching</span> into Innovation
			</h1>

			<p class="hero-subtitle">
				Founded by seasoned engineers and product leaders, Pothos Consulting & Advising exists to
				close the gap between idea and impact. We partner with organizations of every size to craft
				robust software and forward-thinking strategies that fuel sustainable growth.
			</p>
		</div>
	</div>
</section>

<!-- Mission Section -->
<section class="mission-section">
	<div class="container">
		<div class="mission-content">
			<div class="mission-text" class:mounted>
				<h2>Our Mission</h2>
				<p class="lead">
					Like the resilient pothos vine that thrives in any environment, we adapt to your unique
					challenges while maintaining our unwavering commitment to excellence.
				</p>
				<p>
					We believe that exceptional software isn't just about clean code or cutting-edge
					technology—it's about understanding your business, your users, and your goals. Every line
					of code we write, every architecture we design, and every strategy we develop is guided by
					one simple principle: delivering measurable value that drives your success.
				</p>
			</div>

			<div class="mission-visual" class:mounted>
				<div class="visual-card">
					<div class="card-content">
						<div class="quote-mark">"</div>
						<blockquote>
							Excellence is never an accident. It is always the result of high intention, sincere
							effort, and intelligent execution.
						</blockquote>
						<cite>— Our Founding Principle</cite>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Values Section -->
<section class="values-section">
	<div class="container">
		<div class="section-header">
			<div class="section-badge">
				<span class="badge-icon">💎</span>
				<span class="badge-text">Our Values</span>
			</div>
			<h2 class="section-title">What Drives Us</h2>
			<p class="section-subtitle">
				These core principles guide every decision we make and every relationship we build.
			</p>
		</div>

		<div class="values-grid">
			{#each values as value, i}
				<div class="value-card" class:mounted style="animation-delay: {i * 150}ms">
					<div class="value-icon">{value.icon}</div>
					<h3 class="value-title">{value.title}</h3>
					<p class="value-description">{value.description}</p>
				</div>
			{/each}
		</div>
	</div>
</section>

<!-- Leadership Section -->
<section class="leadership-section">
	<div class="container">
		<div class="leadership-content">
			<div class="leader-info" class:mounted>
				<div class="section-badge">
					<span class="badge-icon">👨‍💼</span>
					<span class="badge-text">Leadership</span>
				</div>
				<h2>Meet Our Founder</h2>
				<div class="leader-card">
					<div class="leader-avatar">
						<div class="avatar-placeholder">JG</div>
					</div>
					<div class="leader-details">
						<h3>Jordan Green</h3>
						<p class="leader-title">Founder & Principal Consultant</p>
						<p class="leader-bio">
							A former Fortune-100 principal engineer turned startup CTO, Jordan brings over a
							decade of experience building and scaling engineering teams across four continents.
							He's helped launch dozens of digital products, from early-stage MVPs to
							enterprise-scale platforms serving millions of users.
						</p>
						<div class="leader-expertise">
							<h4>Expertise:</h4>
							<ul>
								<li>Technical Leadership & Strategy</li>
								<li>Full-Stack Architecture</li>
								<li>Team Building & Mentorship</li>
								<li>Product Development</li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="achievements-panel" class:mounted>
				<h3>By the Numbers</h3>
				<div class="achievements-grid">
					{#each achievements as achievement}
						<div class="achievement-item">
							<div class="achievement-number">{achievement.number}</div>
							<div class="achievement-label">{achievement.label}</div>
						</div>
					{/each}
				</div>

				<div class="credentials">
					<h4>Credentials & Experience</h4>
					<ul>
						<li>Computer Science, MIT</li>
						<li>AWS Solutions Architect</li>
						<li>Former Principal Engineer, Meta</li>
						<li>Former CTO, TechFlow Dynamics</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Culture Section -->
<section class="culture-section">
	<div class="container">
		<div class="culture-content">
			<div class="culture-text" class:mounted>
				<h2>Our Approach</h2>
				<p class="lead">
					We don't just build software—we build partnerships. Our collaborative approach ensures
					that knowledge transfer happens naturally, leaving your team stronger and more capable.
				</p>

				<div class="approach-features">
					<div class="feature-item">
						<div class="feature-icon">🤝</div>
						<div class="feature-content">
							<h4>Partnership Mindset</h4>
							<p>We work alongside your team, not in isolation. Your success is our success.</p>
						</div>
					</div>

					<div class="feature-item">
						<div class="feature-icon">📚</div>
						<div class="feature-content">
							<h4>Knowledge Transfer</h4>
							<p>
								Every engagement includes comprehensive documentation and training to ensure
								continuity.
							</p>
						</div>
					</div>

					<div class="feature-item">
						<div class="feature-icon">⚡</div>
						<div class="feature-content">
							<h4>Rapid Iteration</h4>
							<p>
								We believe in fast feedback loops and continuous improvement throughout the
								development process.
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- CTA Section -->
<section class="cta-section">
	<div class="container">
		<div class="cta-content">
			<h2>Ready to Cultivate Success Together?</h2>
			<p>
				Let's explore how our expertise can accelerate your next project. We'd love to hear about
				your challenges and discuss how we can help.
			</p>
			<div class="cta-buttons">
				<a href="mailto:hello@pothosca.com?subject=Let%27s%20Talk" class="btn btn-primary btn-lg">
					<span>Start the Conversation</span>
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
				<a href="/services" class="btn btn-secondary btn-lg"> Explore Our Services </a>
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
		line-height: 1.7;
	}

	/* Mission Section */
	.mission-section {
		padding: var(--space-32) 0;
		background: var(--color-bg-secondary);
	}

	.mission-content {
		display: grid;
		grid-template-columns: 1fr 1fr;
		gap: var(--space-20);
		align-items: center;
	}

	.mission-text {
		opacity: 0;
		transform: translateX(-30px);
		transition: all var(--duration-500) var(--ease-out);
	}

	.mission-text.mounted {
		opacity: 1;
		transform: translateX(0);
	}

	.mission-text h2 {
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

	.mission-visual {
		opacity: 0;
		transform: translateX(30px);
		transition: all var(--duration-500) var(--ease-out);
	}

	.mission-visual.mounted {
		opacity: 1;
		transform: translateX(0);
	}

	.visual-card {
		background: var(--color-bg-secondary);
		border: 1px solid var(--color-neutral-200);
		border-radius: var(--radius-2xl);
		padding: var(--space-10);
		box-shadow: var(--shadow-xl);
		position: relative;
		overflow: hidden;
	}

	.visual-card::before {
		content: '';
		position: absolute;
		top: 0;
		left: 0;
		right: 0;
		height: 4px;
		background: linear-gradient(135deg, var(--color-accent) 0%, var(--color-primary-500) 100%);
	}

	.card-content {
		text-align: center;
	}

	.quote-mark {
		font-size: var(--text-6xl);
		color: var(--color-primary-200);
		line-height: 1;
		margin-bottom: var(--space-4);
		font-family: var(--font-display);
	}

	blockquote {
		font-size: var(--text-lg);
		color: var(--color-text-primary);
		font-style: italic;
		margin-bottom: var(--space-6);
		line-height: 1.6;
	}

	cite {
		font-size: var(--text-sm);
		color: var(--color-text-secondary);
		font-weight: 500;
		font-style: normal;
		text-transform: uppercase;
		letter-spacing: 0.05em;
	}

	/* Values Section */
	.values-section {
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

	.values-grid {
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
		gap: var(--space-8);
	}

	.value-card {
		background: var(--color-bg-secondary);
		border: 1px solid var(--color-neutral-200);
		border-radius: var(--radius-2xl);
		padding: var(--space-8);
		text-align: center;
		box-shadow: var(--shadow-sm);
		transition: all var(--duration-300) var(--ease-out);
		opacity: 0;
		transform: translateY(30px);
	}

	.value-card.mounted {
		opacity: 1;
		transform: translateY(0);
	}

	.value-card:hover {
		transform: translateY(-8px);
		box-shadow: var(--shadow-xl);
		border-color: var(--color-primary-200);
	}

	.value-icon {
		font-size: var(--text-5xl);
		margin-bottom: var(--space-4);
		display: block;
	}

	.value-title {
		font-size: var(--text-xl);
		font-weight: 600;
		color: var(--color-text-primary);
		margin-bottom: var(--space-4);
	}

	.value-description {
		color: var(--color-text-secondary);
		line-height: 1.6;
		margin: 0;
	}

	/* Leadership Section */
	.leadership-section {
		padding: var(--space-32) 0;
		background: var(--color-bg-secondary);
	}

	.leadership-content {
		display: grid;
		grid-template-columns: 2fr 1fr;
		gap: var(--space-20);
		align-items: start;
	}

	.leader-info {
		opacity: 0;
		transform: translateY(30px);
		transition: all var(--duration-500) var(--ease-out);
	}

	.leader-info.mounted {
		opacity: 1;
		transform: translateY(0);
	}

	.leader-info h2 {
		margin-bottom: var(--space-8);
		color: var(--color-text-primary);
	}

	.leader-card {
		background: var(--color-bg-secondary);
		border: 1px solid var(--color-neutral-200);
		border-radius: var(--radius-2xl);
		padding: var(--space-8);
		box-shadow: var(--shadow-sm);
	}

	.leader-avatar {
		margin-bottom: var(--space-6);
	}

	.avatar-placeholder {
		width: 80px;
		height: 80px;
		border-radius: var(--radius-full);
		background: linear-gradient(135deg, var(--color-accent) 0%, var(--color-primary-500) 100%);
		display: flex;
		align-items: center;
		justify-content: center;
		color: white;
		font-size: var(--text-2xl);
		font-weight: 700;
		box-shadow: var(--shadow-md);
	}

	.leader-details h3 {
		font-size: var(--text-2xl);
		font-weight: 700;
		color: var(--color-text-primary);
		margin-bottom: var(--space-2);
	}

	.leader-title {
		font-size: var(--text-lg);
		color: var(--color-accent);
		font-weight: 600;
		margin-bottom: var(--space-6);
	}

	.leader-bio {
		color: var(--color-text-secondary);
		line-height: 1.7;
		margin-bottom: var(--space-8);
	}

	.leader-expertise h4 {
		font-size: var(--text-lg);
		font-weight: 600;
		color: var(--color-text-primary);
		margin-bottom: var(--space-4);
	}

	.leader-expertise ul {
		list-style: none;
		padding: 0;
		margin: 0;
	}

	.leader-expertise li {
		display: flex;
		align-items: center;
		gap: var(--space-2);
		margin-bottom: var(--space-2);
		color: var(--color-text-secondary);
		font-size: var(--text-sm);
	}

	.leader-expertise li::before {
		content: '✓';
		color: var(--color-accent);
		font-weight: bold;
		font-size: var(--text-base);
	}

	.achievements-panel {
		background: var(--color-bg-secondary);
		border: 1px solid var(--color-neutral-200);
		border-radius: var(--radius-2xl);
		padding: var(--space-8);
		box-shadow: var(--shadow-sm);
		opacity: 0;
		transform: translateY(30px);
		transition: all var(--duration-500) var(--ease-out);
		position: sticky;
		top: var(--space-20);
	}

	.achievements-panel.mounted {
		opacity: 1;
		transform: translateY(0);
	}

	.achievements-panel h3 {
		font-size: var(--text-xl);
		font-weight: 600;
		color: var(--color-text-primary);
		margin-bottom: var(--space-6);
		text-align: center;
	}

	.achievements-grid {
		display: grid;
		grid-template-columns: repeat(2, 1fr);
		gap: var(--space-4);
		margin-bottom: var(--space-8);
	}

	.achievement-item {
		text-align: center;
		padding: var(--space-4);
		background: var(--color-bg-primary);
		border-radius: var(--radius-lg);
	}

	.achievement-number {
		font-size: var(--text-2xl);
		font-weight: 800;
		color: var(--color-accent);
		line-height: 1;
		margin-bottom: var(--space-1);
	}

	.achievement-label {
		font-size: var(--text-xs);
		color: var(--color-text-tertiary);
		font-weight: 500;
		text-transform: uppercase;
		letter-spacing: 0.05em;
	}

	.credentials {
		border-top: 1px solid var(--color-neutral-200);
		padding-top: var(--space-6);
	}

	.credentials h4 {
		font-size: var(--text-lg);
		font-weight: 600;
		color: var(--color-text-primary);
		margin-bottom: var(--space-4);
	}

	.credentials ul {
		list-style: none;
		padding: 0;
		margin: 0;
	}

	.credentials li {
		color: var(--color-text-secondary);
		font-size: var(--text-sm);
		margin-bottom: var(--space-2);
		padding-left: var(--space-5);
		position: relative;
	}

	.credentials li::before {
		content: '🎓';
		position: absolute;
		left: 0;
		top: 0;
	}

	/* Culture Section */
	.culture-section {
		padding: var(--space-32) 0;
		background: var(--color-bg-primary);
	}

	.culture-content {
		max-width: 800px;
		margin: 0 auto;
	}

	.culture-text {
		text-align: center;
		opacity: 0;
		transform: translateY(30px);
		transition: all var(--duration-500) var(--ease-out);
	}

	.culture-text.mounted {
		opacity: 1;
		transform: translateY(0);
	}

	.culture-text h2 {
		margin-bottom: var(--space-6);
		color: var(--color-text-primary);
	}

	.approach-features {
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
		gap: var(--space-8);
		margin-top: var(--space-12);
	}

	.feature-item {
		display: flex;
		gap: var(--space-4);
		text-align: left;
	}

	.feature-icon {
		font-size: var(--text-3xl);
		flex-shrink: 0;
	}

	.feature-content h4 {
		font-size: var(--text-lg);
		font-weight: 600;
		color: var(--color-text-primary);
		margin-bottom: var(--space-2);
	}

	.feature-content p {
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
		.mission-content {
			grid-template-columns: 1fr;
			gap: var(--space-16);
		}

		.mission-visual {
			order: -1;
		}

		.values-grid {
			grid-template-columns: 1fr;
		}

		.leadership-content {
			grid-template-columns: 1fr;
			gap: var(--space-16);
		}

		.achievements-panel {
			position: static;
		}

		.achievements-grid {
			grid-template-columns: repeat(2, 1fr);
		}

		.approach-features {
			grid-template-columns: 1fr;
		}

		.feature-item {
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

		.mission-section,
		.values-section,
		.leadership-section,
		.culture-section {
			padding: var(--space-20) 0;
		}

		.cta-section {
			padding: var(--space-20) 0;
		}

		.achievements-grid {
			grid-template-columns: 1fr;
		}
	}
</style>
