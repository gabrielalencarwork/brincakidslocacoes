
document.addEventListener('DOMContentLoaded', () => {
    
    // ==========================================================================
    // 1. SCROLL-BASED HEADER STYLING
    // ==========================================================================
    const header = document.getElementById('header');
    
    const handleScroll = () => {
        if (window.scrollY > 50) {
            header.classList.add('scrolled');
        } else {
            header.classList.remove('scrolled');
        }
    };
    
    window.addEventListener('scroll', handleScroll);
    // Run once at load to handle refreshed page scroll states
    handleScroll();

    // ==========================================================================
    // 2. MOBILE NAVIGATION MENU
    // ==========================================================================
    const menuToggle = document.getElementById('menu-toggle');
    const mainNav = document.getElementById('main-navigation');
    const navLinks = document.querySelectorAll('.nav-link');
    
    const toggleMenu = () => {
        const isActive = mainNav.classList.toggle('active');
        menuToggle.classList.toggle('active');
        
        // Prevent body scroll when menu is active
        if (isActive) {
            document.body.style.overflow = 'hidden';
            menuToggle.setAttribute('aria-label', 'Fechar menu');
        } else {
            document.body.style.overflow = '';
            menuToggle.setAttribute('aria-label', 'Abrir menu');
        }
    };
    
    menuToggle.addEventListener('click', toggleMenu);
    
    // Close menu when a link is clicked
    navLinks.forEach(link => {
        link.addEventListener('click', () => {
            if (mainNav.classList.contains('active')) {
                toggleMenu();
            }
        });
    });

    // ==========================================================================
    // 3. ACCORDION FAQ LOGIC
    // ==========================================================================
    const faqItems = document.querySelectorAll('.faq-item');
    
    faqItems.forEach(item => {
        const questionBtn = item.querySelector('.faq-question');
        const answerDiv = item.querySelector('.faq-answer');
        
        questionBtn.addEventListener('click', () => {
            const isExpanded = questionBtn.getAttribute('aria-expanded') === 'true';
            
            // Close all other FAQ items first
            faqItems.forEach(otherItem => {
                if (otherItem !== item) {
                    otherItem.classList.remove('active');
                    const otherBtn = otherItem.querySelector('.faq-question');
                    const otherAnswer = otherItem.querySelector('.faq-answer');
                    otherBtn.setAttribute('aria-expanded', 'false');
                    otherAnswer.setAttribute('hidden', '');
                }
            });
            
            // Toggle active state for clicked item
            item.classList.toggle('active');
            questionBtn.setAttribute('aria-expanded', !isExpanded);
            
            if (!isExpanded) {
                answerDiv.removeAttribute('hidden');
            } else {
                answerDiv.setAttribute('hidden', '');
            }
        });
    });

    // ==========================================================================
    // 4. FLOATING WHATSAPP TOOLTIP TIMING
    // ==========================================================================
    const waTooltip = document.getElementById('wa-tooltip-msg');
    
    // Show tooltip after 2.5 seconds
    setTimeout(() => {
        if (waTooltip) {
            waTooltip.classList.add('visible');
            
            // Automatically hide tooltip after 7 seconds to keep page clean
            setTimeout(() => {
                waTooltip.classList.remove('visible');
            }, 7000);
        }
    }, 2500);

    // ==========================================================================
    // 5. SMOOTH SCROLL FOR ALL ANCHORS
    // ==========================================================================
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();
            const targetId = this.getAttribute('href');
            if (targetId === '#') return;
            
            const targetElement = document.querySelector(targetId);
            if (targetElement) {
                // Deduct header height for perfect scrolling alignment
                const headerHeight = header.offsetHeight;
                const elementPosition = targetElement.getBoundingClientRect().top;
                const offsetPosition = elementPosition + window.pageYOffset - headerHeight;
                
                window.scrollTo({
                    top: offsetPosition,
                    behavior: 'smooth'
                });
            }
        });
    });

    // ==========================================================================
    // 6. INTERACTIVE TOY SLIDER / CAROUSEL
    // ==========================================================================
    const sliders = document.querySelectorAll('.slider-container');
    
    sliders.forEach(slider => {
        const slides = slider.querySelectorAll('.slide');
        const dots = slider.querySelectorAll('.slider-dots .dot');
        const prevBtn = slider.querySelector('.prev-btn');
        const nextBtn = slider.querySelector('.next-btn');
        let currentSlide = 0;
        
        // Find initial active slide
        slides.forEach((slide, idx) => {
            if (slide.classList.contains('active')) {
                currentSlide = idx;
            }
        });
        
        const showSlide = (index) => {
            // Handle bounds
            if (index < 0) {
                index = slides.length - 1;
            } else if (index >= slides.length) {
                index = 0;
            }
            
            // Deactivate current slide
            const prevActiveSlide = slides[currentSlide];
            if (prevActiveSlide) {
                prevActiveSlide.classList.remove('active');
                // If it's a video, pause it
                if (prevActiveSlide.tagName === 'VIDEO') {
                    prevActiveSlide.pause();
                }
            }
            
            // Deactivate current dot
            if (dots[currentSlide]) {
                dots[currentSlide].classList.remove('active');
            }
            
            // Activate new slide
            currentSlide = index;
            const newActiveSlide = slides[currentSlide];
            if (newActiveSlide) {
                newActiveSlide.classList.add('active');
                // If it's a video, play it
                if (newActiveSlide.tagName === 'VIDEO') {
                    newActiveSlide.play().catch(err => {
                        console.log("Video play interrupted or blocked by browser: ", err);
                    });
                }
            }
            
            // Activate new dot
            if (dots[currentSlide]) {
                dots[currentSlide].classList.add('active');
            }
        };
        
        // Navigation clicks
        if (prevBtn) {
            prevBtn.addEventListener('click', (e) => {
                e.preventDefault();
                showSlide(currentSlide - 1);
            });
        }
        
        if (nextBtn) {
            nextBtn.addEventListener('click', (e) => {
                e.preventDefault();
                showSlide(currentSlide + 1);
            });
        }
        
        // Dot clicks
        dots.forEach(dot => {
            dot.addEventListener('click', (e) => {
                e.preventDefault();
                const slideIndex = parseInt(dot.getAttribute('data-slide'));
                if (!isNaN(slideIndex)) {
                    showSlide(slideIndex);
                }
            });
        });
    });
});
Clicking...Pressing key...Stopping...

Stop Agent
