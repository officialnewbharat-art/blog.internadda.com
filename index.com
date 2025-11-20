<!DOCTYPE html>
<html lang="en" class="scroll-smooth">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- SEO Meta Tags -->
    <title>InternAdda Blog - Career Insights, Internship Guides & Courses</title>
    <meta name="description" content="India's Adda for Internships. Read the latest career advice, internship guides, and success stories to launch your professional journey with InternAdda.">
    <meta name="keywords" content="internships, career advice, online courses, india internships, student blog, job placement, resume tips">
    <meta name="author" content="InternAdda">
    <meta name="robots" content="index, follow">

    <!-- Open Graph / Facebook -->
    <meta property="og:type" content="website">
    <meta property="og:url" content="https://www.internadda.com/blog">
    <meta property="og:title" content="InternAdda Blog - Launch Your Career">
    <meta property="og:description" content="The perfect launchpad for your career. Gain in-demand skills and secure paid internships with top companies.">
    <meta property="og:image" content="https://images.unsplash.com/photo-1516321318423-f06f85e504b3?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80">

    <!-- Twitter -->
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:url" content="https://www.internadda.com/blog">
    <meta property="twitter:title" content="InternAdda Blog - Launch Your Career">
    <meta property="twitter:description" content="The perfect launchpad for your career. Gain in-demand skills and secure paid internships.">
    <meta property="twitter:image" content="https://images.unsplash.com/photo-1516321318423-f06f85e504b3?ixlib=rb-4.0.3&auto=format&fit=crop&w=1200&q=80">

    <!-- Fonts: Inter (Similar to the screenshot) -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">

    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    
    <!-- Tailwind Configuration to match Brand Colors -->
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    fontFamily: {
                        sans: ['Inter', 'sans-serif'],
                    },
                    colors: {
                        brand: {
                            50: '#eff6ff',
                            100: '#dbeafe',
                            500: '#4f46e5', /* Primary Indigo/Purple */
                            600: '#4338ca', /* Darker Indigo for buttons */
                            700: '#3730a3',
                            900: '#1e1b4b',
                        },
                        accent: {
                            light: '#f3f4f6',
                            dark: '#1f2937',
                        }
                    }
                }
            }
        }
    </script>

    <!-- Lucide Icons -->
    <script src="https://unpkg.com/lucide@latest"></script>

    <style>
        /* Custom styles for smooth text rendering */
        body {
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }
        .gradient-text {
            background: linear-gradient(to right, #4338ca, #8b5cf6);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        .card-hover:hover {
            transform: translateY(-4px);
            box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04);
        }
    </style>
</head>
<body class="bg-slate-50 text-slate-800 flex flex-col min-h-screen">

    <!-- Navigation -->
    <header class="bg-white shadow-sm sticky top-0 z-50">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between h-20 items-center">
                <!-- Logo Area -->
                <div class="flex-shrink-0 flex items-center cursor-pointer" onclick="window.location.href='/'">
                    <!-- Simulating the Logo Icon -->
                    <div class="w-10 h-10 rounded-full bg-gradient-to-br from-blue-600 to-purple-600 flex items-center justify-center text-white font-bold text-xl mr-2">
                        ia
                    </div>
                    <span class="font-bold text-2xl text-brand-700 tracking-tight">Intern<span class="text-brand-500">adda</span></span>
                </div>

                <!-- Desktop Menu -->
                <nav class="hidden md:flex space-x-8">
                    <a href="#" class="text-gray-600 hover:text-brand-600 px-3 py-2 text-sm font-medium transition-colors">Home</a>
                    <a href="#" class="text-gray-600 hover:text-brand-600 px-3 py-2 text-sm font-medium transition-colors">Courses</a>
                    <a href="#" class="text-gray-600 hover:text-brand-600 px-3 py-2 text-sm font-medium transition-colors">Internships</a>
                    <a href="#" class="text-brand-600 px-3 py-2 text-sm font-semibold border-b-2 border-brand-600">Blog</a>
                    <a href="#" class="text-gray-600 hover:text-brand-600 px-3 py-2 text-sm font-medium transition-colors">About Us</a>
                </nav>

                <!-- CTA Button (Desktop) -->
                <div class="hidden md:flex items-center space-x-4">
                    <a href="#" class="text-brand-600 font-medium text-sm hover:underline">Login</a>
                    <a href="#" class="bg-brand-600 hover:bg-brand-700 text-white px-5 py-2.5 rounded-lg text-sm font-medium transition-all shadow-md hover:shadow-lg">
                        Register Now
                    </a>
                </div>

                <!-- Mobile menu button -->
                <div class="flex items-center md:hidden">
                    <button id="mobile-menu-btn" type="button" class="text-gray-500 hover:text-gray-700 focus:outline-none p-2">
                        <i data-lucide="menu" class="w-6 h-6"></i>
                    </button>
                </div>
            </div>
        </div>

        <!-- Mobile Menu Panel -->
        <div id="mobile-menu" class="hidden md:hidden bg-white border-t border-gray-100 absolute w-full shadow-lg">
            <div class="px-4 pt-2 pb-4 space-y-1">
                <a href="#" class="block px-3 py-3 text-base font-medium text-gray-700 hover:text-brand-600 hover:bg-gray-50 rounded-md">Home</a>
                <a href="#" class="block px-3 py-3 text-base font-medium text-gray-700 hover:text-brand-600 hover:bg-gray-50 rounded-md">Courses</a>
                <a href="#" class="block px-3 py-3 text-base font-medium text-gray-700 hover:text-brand-600 hover:bg-gray-50 rounded-md">Internships</a>
                <a href="#" class="block px-3 py-3 text-base font-medium text-brand-600 bg-brand-50 rounded-md">Blog</a>
                <div class="mt-4 pt-4 border-t border-gray-100">
                    <a href="#" class="block w-full text-center bg-brand-600 text-white px-4 py-3 rounded-lg font-medium shadow-sm">Register Now</a>
                </div>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <main class="flex-grow">
        
        <!-- Hero Section for Blog -->
        <section class="relative bg-white overflow-hidden">
            <div class="absolute inset-0 bg-[url('https://www.transparenttextures.com/patterns/cubes.png')] opacity-5"></div>
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-16 md:py-24 text-center relative z-10">
                <div class="inline-flex items-center gap-2 px-4 py-2 rounded-full bg-blue-50 text-blue-700 text-sm font-semibold mb-6 animate-fade-in-up">
                    <i data-lucide="rocket" class="w-4 h-4"></i>
                    <span>Launch Your Career</span>
                </div>
                <h1 class="text-4xl md:text-6xl font-extrabold text-slate-900 tracking-tight mb-6">
                    Insights to <span class="gradient-text">Future-Proof</span> Your Career
                </h1>
                <p class="mt-4 max-w-2xl mx-auto text-xl text-slate-600">
                    Expert advice on internships, resume building, and mastering the skills that top companies are looking for today.
                </p>
                
                <!-- Search Bar -->
                <div class="mt-10 max-w-xl mx-auto relative">
                    <input type="text" placeholder="Search for articles (e.g. 'Resume Tips')" 
                           class="w-full pl-12 pr-4 py-4 rounded-full border-2 border-gray-200 focus:border-brand-500 focus:ring-4 focus:ring-brand-100 outline-none transition-all shadow-sm text-gray-700">
                    <div class="absolute left-4 top-1/2 transform -translate-y-1/2 text-gray-400">
                        <i data-lucide="search" class="w-5 h-5"></i>
                    </div>
                    <button class="absolute right-2 top-1/2 transform -translate-y-1/2 bg-brand-600 hover:bg-brand-700 text-white px-6 py-2 rounded-full text-sm font-medium transition-colors">
                        Search
                    </button>
                </div>
            </div>
        </section>

        <!-- Categories Filter -->
        <div class="border-b border-gray-200 bg-white sticky top-20 z-40 shadow-sm hidden md:block">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="flex space-x-8 overflow-x-auto py-4 no-scrollbar">
                    <button class="whitespace-nowrap text-brand-600 font-semibold border-b-2 border-brand-600 pb-1">All Posts</button>
                    <button class="whitespace-nowrap text-slate-600 hover:text-brand-600 font-medium transition-colors">Internship Guides</button>
                    <button class="whitespace-nowrap text-slate-600 hover:text-brand-600 font-medium transition-colors">Interview Prep</button>
                    <button class="whitespace-nowrap text-slate-600 hover:text-brand-600 font-medium transition-colors">Skill Development</button>
                    <button class="whitespace-nowrap text-slate-600 hover:text-brand-600 font-medium transition-colors">Success Stories</button>
                </div>
            </div>
        </div>

        <!-- Featured Article Section -->
        <section class="py-12 bg-slate-50">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="bg-white rounded-3xl shadow-xl overflow-hidden border border-gray-100 lg:flex transition-all hover:shadow-2xl duration-300 group cursor-pointer">
                    <div class="lg:w-1/2 relative overflow-hidden">
                        <img src="https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-4.0.3&auto=format&fit=crop&w=1471&q=80" 
                             alt="Students working together" 
                             class="w-full h-full object-cover object-center group-hover:scale-105 transition-transform duration-500">
                        <div class="absolute top-4 left-4 bg-white/90 backdrop-blur-sm px-3 py-1 rounded-full text-brand-700 text-xs font-bold uppercase tracking-wider">
                            Featured
                        </div>
                    </div>
                    <div class="lg:w-1/2 p-8 md:p-12 flex flex-col justify-center">
                        <div class="flex items-center text-sm text-slate-500 mb-4 gap-4">
                            <span class="flex items-center gap-1"><i data-lucide="calendar" class="w-4 h-4"></i> Nov 20, 2024</span>
                            <span class="flex items-center gap-1"><i data-lucide="clock" class="w-4 h-4"></i> 5 min read</span>
                        </div>
                        <h2 class="text-3xl font-bold text-slate-900 mb-4 group-hover:text-brand-600 transition-colors">
                            How to Land Your Dream Internship in 2025: A Step-by-Step Guide
                        </h2>
                        <p class="text-slate-600 mb-8 text-lg leading-relaxed">
                            Securing an internship is more competitive than ever. Learn how to optimize your LinkedIn profile, craft a resume that passes ATS, and ace the behavioral interview.
                        </p>
                        <div class="flex items-center justify-between mt-auto">
                            <div class="flex items-center">
                                <img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&auto=format&fit=crop&w=100&q=80" alt="Author" class="w-10 h-10 rounded-full border-2 border-white shadow-sm">
                                <div class="ml-3">
                                    <p class="text-sm font-medium text-slate-900">Priya Sharma</p>
                                    <p class="text-xs text-slate-500">Career Coach</p>
                                </div>
                            </div>
                            <span class="text-brand-600 font-semibold flex items-center gap-1 group-hover:translate-x-1 transition-transform">
                                Read Article <i data-lucide="arrow-right" class="w-4 h-4"></i>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Blog Grid -->
        <section class="py-12 md:py-16 bg-slate-50">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="flex justify-between items-end mb-10">
                    <h2 class="text-3xl font-bold text-slate-900">Latest Articles</h2>
                    <a href="#" class="text-brand-600 font-medium hover:text-brand-700 hidden sm:block">View all posts &rarr;</a>
                </div>

                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                    
                    <!-- Article Card 1 -->
                    <article class="bg-white rounded-2xl overflow-hidden shadow-md hover:shadow-xl transition-all duration-300 card-hover border border-gray-100 flex flex-col h-full">
                        <div class="relative h-48 overflow-hidden">
                            <img src="https://images.unsplash.com/photo-1516321318423-f06f85e504b3?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" 
                                 alt="Resume writing" class="w-full h-full object-cover hover:scale-110 transition-transform duration-500">
                            <span class="absolute top-4 left-4 bg-blue-100 text-blue-800 text-xs font-bold px-3 py-1 rounded-full">Resume Tips</span>
                        </div>
                        <div class="p-6 flex-grow flex flex-col">
                            <div class="text-sm text-slate-500 mb-2">Oct 15, 2024 • 4 min read</div>
                            <h3 class="text-xl font-bold text-slate-900 mb-3 hover:text-brand-600 transition-colors line-clamp-2">
                                5 Common Resume Mistakes That Are Costing You Interviews
                            </h3>
                            <p class="text-slate-600 text-sm mb-4 line-clamp-3 flex-grow">
                                Stop getting rejected by robots. Here is what you need to remove from your resume immediately to increase your chances.
                            </p>
                            <a href="#" class="inline-flex items-center text-brand-600 font-semibold text-sm hover:text-brand-800 mt-auto">
                                Read More <i data-lucide="arrow-right" class="w-3 h-3 ml-1"></i>
                            </a>
                        </div>
                    </article>

                    <!-- Article Card 2 -->
                    <article class="bg-white rounded-2xl overflow-hidden shadow-md hover:shadow-xl transition-all duration-300 card-hover border border-gray-100 flex flex-col h-full">
                        <div class="relative h-48 overflow-hidden">
                            <img src="https://images.unsplash.com/photo-1552664730-d307ca884978?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" 
                                 alt="Team meeting" class="w-full h-full object-cover hover:scale-110 transition-transform duration-500">
                            <span class="absolute top-4 left-4 bg-purple-100 text-purple-800 text-xs font-bold px-3 py-1 rounded-full">Interview Prep</span>
                        </div>
                        <div class="p-6 flex-grow flex flex-col">
                            <div class="text-sm text-slate-500 mb-2">Oct 12, 2024 • 6 min read</div>
                            <h3 class="text-xl font-bold text-slate-900 mb-3 hover:text-brand-600 transition-colors line-clamp-2">
                                Top 20 Behavioral Interview Questions and How to Answer Them
                            </h3>
                            <p class="text-slate-600 text-sm mb-4 line-clamp-3 flex-grow">
                                Use the STAR method to master your next HR round. We've compiled the most asked questions from top tech companies.
                            </p>
                            <a href="#" class="inline-flex items-center text-brand-600 font-semibold text-sm hover:text-brand-800 mt-auto">
                                Read More <i data-lucide="arrow-right" class="w-3 h-3 ml-1"></i>
                            </a>
                        </div>
                    </article>

                    <!-- Article Card 3 -->
                    <article class="bg-white rounded-2xl overflow-hidden shadow-md hover:shadow-xl transition-all duration-300 card-hover border border-gray-100 flex flex-col h-full">
                        <div class="relative h-48 overflow-hidden">
                            <img src="https://images.unsplash.com/photo-1531482615713-2afd69097998?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" 
                                 alt="Online learning" class="w-full h-full object-cover hover:scale-110 transition-transform duration-500">
                            <span class="absolute top-4 left-4 bg-green-100 text-green-800 text-xs font-bold px-3 py-1 rounded-full">Upskilling</span>
                        </div>
                        <div class="p-6 flex-grow flex flex-col">
                            <div class="text-sm text-slate-500 mb-2">Oct 08, 2024 • 3 min read</div>
                            <h3 class="text-xl font-bold text-slate-900 mb-3 hover:text-brand-600 transition-colors line-clamp-2">
                                Why Python is Essential for Data Science Internships in 2025
                            </h3>
                            <p class="text-slate-600 text-sm mb-4 line-clamp-3 flex-grow">
                                Python remains the king of data. Discover the specific libraries you need to learn to land a data science role.
                            </p>
                            <a href="#" class="inline-flex items-center text-brand-600 font-semibold text-sm hover:text-brand-800 mt-auto">
                                Read More <i data-lucide="arrow-right" class="w-3 h-3 ml-1"></i>
                            </a>
                        </div>
                    </article>

                    <!-- Article Card 4 -->
                    <article class="bg-white rounded-2xl overflow-hidden shadow-md hover:shadow-xl transition-all duration-300 card-hover border border-gray-100 flex flex-col h-full">
                        <div class="relative h-48 overflow-hidden">
                            <img src="https://images.unsplash.com/photo-1521737711867-e3b97375f902?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" 
                                 alt="Office work" class="w-full h-full object-cover hover:scale-110 transition-transform duration-500">
                            <span class="absolute top-4 left-4 bg-yellow-100 text-yellow-800 text-xs font-bold px-3 py-1 rounded-full">Career Growth</span>
                        </div>
                        <div class="p-6 flex-grow flex flex-col">
                            <div class="text-sm text-slate-500 mb-2">Sep 29, 2024 • 5 min read</div>
                            <h3 class="text-xl font-bold text-slate-900 mb-3 hover:text-brand-600 transition-colors line-clamp-2">
                                From Intern to Full-Time: Strategies to Secure the PPO
                            </h3>
                            <p class="text-slate-600 text-sm mb-4 line-clamp-3 flex-grow">
                                Don't just do the work—make an impact. Here is how to make yourself indispensable during your internship period.
                            </p>
                            <a href="#" class="inline-flex items-center text-brand-600 font-semibold text-sm hover:text-brand-800 mt-auto">
                                Read More <i data-lucide="arrow-right" class="w-3 h-3 ml-1"></i>
                            </a>
                        </div>
                    </article>
                     <!-- Article Card 5 -->
                     <article class="bg-white rounded-2xl overflow-hidden shadow-md hover:shadow-xl transition-all duration-300 card-hover border border-gray-100 flex flex-col h-full">
                        <div class="relative h-48 overflow-hidden">
                            <img src="https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" 
                                 alt="Woman coding" class="w-full h-full object-cover hover:scale-110 transition-transform duration-500">
                            <span class="absolute top-4 left-4 bg-indigo-100 text-indigo-800 text-xs font-bold px-3 py-1 rounded-full">Tech</span>
                        </div>
                        <div class="p-6 flex-grow flex flex-col">
                            <div class="text-sm text-slate-500 mb-2">Sep 25, 2024 • 7 min read</div>
                            <h3 class="text-xl font-bold text-slate-900 mb-3 hover:text-brand-600 transition-colors line-clamp-2">
                                The Complete Roadmap to Full Stack Development
                            </h3>
                            <p class="text-slate-600 text-sm mb-4 line-clamp-3 flex-grow">
                                Confused about MERN vs MEAN? We break down the path to becoming a paid full-stack developer this year.
                            </p>
                            <a href="#" class="inline-flex items-center text-brand-600 font-semibold text-sm hover:text-brand-800 mt-auto">
                                Read More <i data-lucide="arrow-right" class="w-3 h-3 ml-1"></i>
                            </a>
                        </div>
                    </article>
                     <!-- Article Card 6 -->
                     <article class="bg-white rounded-2xl overflow-hidden shadow-md hover:shadow-xl transition-all duration-300 card-hover border border-gray-100 flex flex-col h-full">
                        <div class="relative h-48 overflow-hidden">
                            <img src="https://images.unsplash.com/photo-1517245386807-bb43f82c33c4?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" 
                                 alt="Student stress" class="w-full h-full object-cover hover:scale-110 transition-transform duration-500">
                            <span class="absolute top-4 left-4 bg-red-100 text-red-800 text-xs font-bold px-3 py-1 rounded-full">Wellness</span>
                        </div>
                        <div class="p-6 flex-grow flex flex-col">
                            <div class="text-sm text-slate-500 mb-2">Sep 20, 2024 • 4 min read</div>
                            <h3 class="text-xl font-bold text-slate-900 mb-3 hover:text-brand-600 transition-colors line-clamp-2">
                                Managing Exam Stress While Hunting for Jobs
                            </h3>
                            <p class="text-slate-600 text-sm mb-4 line-clamp-3 flex-grow">
                                Balancing final year exams and placement season is tough. Here are practical tips to maintain your mental health.
                            </p>
                            <a href="#" class="inline-flex items-center text-brand-600 font-semibold text-sm hover:text-brand-800 mt-auto">
                                Read More <i data-lucide="arrow-right" class="w-3 h-3 ml-1"></i>
                            </a>
                        </div>
                    </article>

                </div>

                <!-- Pagination -->
                <div class="mt-16 flex justify-center">
                    <nav class="inline-flex rounded-md shadow-sm">
                        <a href="#" class="px-4 py-2 rounded-l-md border border-gray-300 bg-white text-sm font-medium text-gray-500 hover:bg-gray-50">
                            Previous
                        </a>
                        <a href="#" class="px-4 py-2 border-t border-b border-gray-300 bg-brand-50 text-sm font-medium text-brand-600">
                            1
                        </a>
                        <a href="#" class="px-4 py-2 border-t border-b border-gray-300 bg-white text-sm font-medium text-gray-700 hover:bg-gray-50">
                            2
                        </a>
                        <a href="#" class="px-4 py-2 border-t border-b border-gray-300 bg-white text-sm font-medium text-gray-700 hover:bg-gray-50">
                            3
                        </a>
                        <a href="#" class="px-4 py-2 rounded-r-md border border-gray-300 bg-white text-sm font-medium text-gray-500 hover:bg-gray-50">
                            Next
                        </a>
                    </nav>
                </div>
            </div>
        </section>

        <!-- Newsletter Section -->
        <section class="bg-brand-600 py-16">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
                <div class="max-w-3xl mx-auto">
                    <div class="inline-flex items-center justify-center w-16 h-16 rounded-full bg-white/10 mb-6 backdrop-blur-sm">
                        <i data-lucide="mail" class="w-8 h-8 text-white"></i>
                    </div>
                    <h2 class="text-3xl font-bold text-white mb-4">Don't Miss Out on Opportunities</h2>
                    <p class="text-brand-100 text-lg mb-8">
                        Get the latest internship openings, career tips, and exclusive webinar invites delivered straight to your inbox.
                    </p>
                    <form class="flex flex-col sm:flex-row gap-3 max-w-md mx-auto" onsubmit="event.preventDefault(); alert('Thanks for subscribing!');">
                        <input type="email" required placeholder="Enter your email address" 
                               class="flex-1 px-5 py-3 rounded-lg border-none focus:ring-2 focus:ring-white/50 outline-none text-gray-900">
                        <button type="submit" class="bg-white text-brand-600 font-bold px-8 py-3 rounded-lg hover:bg-gray-100 transition-colors shadow-lg">
                            Subscribe
                        </button>
                    </form>
                    <p class="text-brand-200 text-xs mt-4">No spam, ever. Unsubscribe anytime.</p>
                </div>
            </div>
        </section>

    </main>

    <!-- Footer -->
    <footer class="bg-slate-900 text-slate-300 py-12 border-t border-slate-800">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
                <!-- Brand -->
                <div>
                    <div class="flex items-center mb-4">
                        <div class="w-8 h-8 rounded-full bg-gradient-to-br from-blue-500 to-purple-500 flex items-center justify-center text-white font-bold mr-2">
                            ia
                        </div>
                        <span class="font-bold text-xl text-white">Intern<span class="text-brand-500">adda</span></span>
                    </div>
                    <p class="text-sm text-slate-400 leading-relaxed">
                        India's leading platform for internships and training. We bridge the gap between students and their dream careers.
                    </p>
                    <div class="flex space-x-4 mt-6">
                        <a href="#" class="text-slate-400 hover:text-white transition-colors"><i data-lucide="facebook" class="w-5 h-5"></i></a>
                        <a href="#" class="text-slate-400 hover:text-white transition-colors"><i data-lucide="twitter" class="w-5 h-5"></i></a>
                        <a href="#" class="text-slate-400 hover:text-white transition-colors"><i data-lucide="linkedin" class="w-5 h-5"></i></a>
                        <a href="#" class="text-slate-400 hover:text-white transition-colors"><i data-lucide="instagram" class="w-5 h-5"></i></a>
                    </div>
                </div>

                <!-- Links -->
                <div>
                    <h3 class="text-white font-semibold mb-4">Platform</h3>
                    <ul class="space-y-2 text-sm">
                        <li><a href="#" class="hover:text-brand-400 transition-colors">Browse Internships</a></li>
                        <li><a href="#" class="hover:text-brand-400 transition-colors">Online Courses</a></li>
                        <li><a href="#" class="hover:text-brand-400 transition-colors">Success Stories</a></li>
                        <li><a href="#" class="hover:text-brand-400 transition-colors">Partner with Us</a></li>
                    </ul>
                </div>

                <!-- Links -->
                <div>
                    <h3 class="text-white font-semibold mb-4">Resources</h3>
                    <ul class="space-y-2 text-sm">
                        <li><a href="#" class="text-brand-400 font-medium">Blog</a></li>
                        <li><a href="#" class="hover:text-brand-400 transition-colors">Resume Builder</a></li>
                        <li><a href="#" class="hover:text-brand-400 transition-colors">Interview Guide</a></li>
                        <li><a href="#" class="hover:text-brand-400 transition-colors">Help Center</a></li>
                    </ul>
                </div>

                <!-- Contact -->
                <div>
                    <h3 class="text-white font-semibold mb-4">Contact</h3>
                    <ul class="space-y-2 text-sm">
                        <li class="flex items-center gap-2"><i data-lucide="map-pin" class="w-4 h-4 text-brand-500"></i> New Delhi, India</li>
                        <li class="flex items-center gap-2"><i data-lucide="mail" class="w-4 h-4 text-brand-500"></i> support@internadda.com</li>
                        <li class="flex items-center gap-2"><i data-lucide="phone" class="w-4 h-4 text-brand-500"></i> +91 98765 43210</li>
                    </ul>
                </div>
            </div>
            <div class="border-t border-slate-800 mt-12 pt-8 flex flex-col md:flex-row justify-between items-center text-xs text-slate-500">
                <p>&copy; 2025 InternAdda. All rights reserved.</p>
                <div class="flex space-x-6 mt-4 md:mt-0">
                    <a href="#" class="hover:text-white">Privacy Policy</a>
                    <a href="#" class="hover:text-white">Terms of Service</a>
                    <a href="#" class="hover:text-white">Cookie Policy</a>
                </div>
            </div>
        </div>
    </footer>

    <!-- JavaScript for interactivity -->
    <script>
        // Initialize Lucide Icons
        lucide.createIcons();

        // Mobile Menu Toggle
        const btn = document.getElementById('mobile-menu-btn');
        const menu = document.getElementById('mobile-menu');

        btn.addEventListener('click', () => {
            menu.classList.toggle('hidden');
        });

        // Search functionality (Demo)
        document.querySelector('input[type="text"]').addEventListener('keypress', function (e) {
            if (e.key === 'Enter') {
                alert('Searching for: ' + this.value);
            }
        });
    </script>
</body>
</html>
