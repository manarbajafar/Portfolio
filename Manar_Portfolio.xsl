<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="Portfolio/PersonalInfo/Name"/> Portfolio</title>
                <style>
                    body {
                        font-family: 'Arial', sans-serif;
                        background-color: white;
                        color: #333;
                        margin: 0;
                        padding: 0 40px;
                    }

                    .section-title {
                        text-align: center;
                        margin-top: 30px;
                    }

                    .about-section {
                        display: flex;
                        justify-content: space-between;
                        align-items: flex-start;
                        padding: 0 20px;
                        margin-top: 20px;
                    }

                    .about-box {
                        border: 1px solid #ccc;
                        border-radius: 15px;
                        padding: 20px;
                        width: 35%;  
                        text-align: center;
                        margin: 10px; 
                    }

                    .box{
                        align-items: center;
                        border: 1px solid #ccc;
                        border-radius: 15px;
                        width: 80%;  
                        text-align: center;
                        margin: 10px; 
                    }

                    .about-box img {
                        width: 40px;
                        margin-bottom: 15px;
                    }

                    .about-box h3 {
                        font-size: 1.3em;
                        font-weight: bold;
                        margin-bottom: 10px;
                    }

                    .about-box p {
                        font-size: 0.9em;
                    }

                    .intro-section {
                        display: flex;
                        justify-content: flex-start;
                        align-items: center;
                        padding: 50px;
                        background-color: #fff;
                        height: 40vh;
                        margin-bottom: 30px;
                    }

                    .logo {
                        margin-right: 20px; 
                    }

                    .logo img {
                        width: 280px;
                    }

                    .info h1 {
                        font-size: 3em;
                        color: #000;
                        margin: 0;
                        font-weight: bold;
                    }

                    .info h2 {
                        font-size: 1.5em;
                        color: #6c757d;
                        margin-top: 10px;
                    }

                    .buttons {
                        margin-top: 20px;
                        text-align: center;
                    }

                    .buttons a {
                        text-decoration: none;
                        border: 2px solid #000;
                        padding: 10px 60px;
                        border-radius: 30px;
                        font-weight: bold;
                        color: #000;
                        transition: background-color 0.3s ease;
                        display: inline-block;
                    }

                    .buttons a:hover {
                        background-color: #6c757d;
                        color: #fff;
                    }

                    .social-icons {
                        margin-top: 30px;
                        text-align: center;
                    }

                    .social-icons img {
                        width: 35px;
                        margin-right: 10px;
                        transition: opacity 0.3s ease;
                    }

                    .social-icons img:hover {
                        opacity: 0.7;
                    }

                    .description {
                        text-align: center;
                        margin-top: 10px;
                        font-size: 1.1em;
                        color: #666;
                        padding: 0 60px;
                    }

                    .about-box-table {
                        display: flex;
                        justify-content: center;
                        gap: 20px;
                    }

                    .about-box table {
                        width: 100%;
                        border-collapse: collapse;
                    }

                    .about-box td {
                        padding: 10px;
                    }

                    .year-column {
                        width: 30%;
                        font-weight: bold;
                    }

                    .details-column {
                        width: 70%;
                        text-align: left;
                    }

                    .details-column h4 {
                        margin: 0;
                        font-size: 1.1em;
                    }

                    .details-column p {
                        margin: 5px 0;
                        font-size: 0.9em;
                        color: #666;
                    }

                    .skills-section {
                        text-align: center;
                        margin-top: 40px;
                    }

                    .skills-section h2 {
                        font-size: 1.6em;
                        margin-bottom: 20px;
                    }

                    .skills-list {
                        display: flex; 
                        justify-content: center; 
                        flex-wrap: wrap; 
                        gap: 5%; 
                    }

                    .skills-list div {
                        border: 1px solid #ccc;
                        border-radius: 15px;
                        padding: 15px;
                        width: 20%; 
                    }

                    .skills-list h3 {
                        font-size: 1.2em;
                        margin-bottom: 10px;
                    }

                    .skills-list ul {
                        list-style-type: none; 
                        padding-left: 0; 
                    }

                    .skills-list li {
                        margin-bottom: 5px;
                        font-size: 1em;
                        text-align: left; 
                    }

                    .skills-list li img {
                        width: 15px; 
                        vertical-align: middle; 
                        margin-right: 5px; 
                    }
                        
                        .publications-section .box, .volunteering-section .box {
                        max-width: 80%; 
                        margin: 0 auto; 
                        padding: 20px; 
                        justify-content:center;
                    }

                        .publications-section , .volunteering-section {
                        margin-top: 40px;
                        text-align: center;
                    }

                    .publications-section h2, .volunteering-section h2 {
                        font-size: 1.6em; 
                        margin-bottom: 10px;
                    }

                    .publication-item, .volunteering-item {
                        margin-bottom: 20px; 
                    }

                    .volunteering-item strong {
                        font-weight: bold;
                    }


                    .role-column {
                        font-weight: bold;
                        width: 30%;
                    }

                
                    .projects-section {
                        text-align: center;
                        margin-top: 40px;
                    }

                    .projects-section h2 {
                        font-size: 1.6em;
                        margin-bottom: 20px;
                    }

                    .projects-list {
                        display: flex;
                        justify-content: center; 
                        flex-wrap: wrap; 
                        gap: 5%; 
                    }

                    .project-card {
                        background-color: #f7f7f7;
                        border-radius: 15px;
                        padding: 20px;
                        width: 20%; 
                        transition: transform 0.3s;
                    }

                    .project-card:hover {
                        transform: scale(1.05);
                    }

                    .project-card img {
                        width: 100px; 
                    }

                    .technologies-list {
                        margin-top: 10px;
                        text-align: left; 
                    }

                    .technology {
                        margin: 2px 0; 
                    }

                    .section {
                        margin: 40px 10%; 
                        border-top: 1px solid #ccc;
                        padding-top: 20px; 
                    }

                </style>
            </head>
            <body>
                <div class="intro-section">
                    <div class="logo">
                        <img src="{Portfolio/PersonalInfo/ProfilePicture}" alt="Manar Bajafar Logo"/>
                    </div>
                    <div class="info">
                        <p>Hello, I'm</p>
                        <h1><xsl:value-of select="Portfolio/PersonalInfo/Name"/></h1>
                        <h2><xsl:value-of select="Portfolio/PersonalInfo/JobTitle"/></h2>
                        <div class="buttons">
                            <a href="{Portfolio/PersonalInfo/CV}" download="{Portfolio/PersonalInfo/CV}">Download CV</a>
                        </div>
                        <div class="social-icons">
                            <a href="mailto:{Portfolio/PersonalInfo/Email}"><img src="assets/email.png" alt="Email"/></a>
                            <a href="{Portfolio/PersonalInfo/LinkedIn}"><img src="assets/linkedin.png" alt="LinkedIn"/></a>
                            <a href="{Portfolio/PersonalInfo/GitHub}"><img src="assets/github.png" alt="GitHub"/></a>
                        </div>
                    </div>
                </div>

                <div class="section-title section">
                    <h2>About</h2>
                </div>

                <div class="description">
                    <p><xsl:value-of select="Portfolio/PersonalInfo/Description"/></p>
                </div>

                <div class="about-box-table">
                    <div class="about-box">
                        <img src="assets/experience.png" alt="Experience Icon"/>
                        <h3>Experience</h3>
                        <table>
                            <xsl:for-each select="Portfolio/Internships/Internship">
                                <tr>
                                    <td class="year-column"><xsl:value-of select="@years"/></td>
                                    <td class="details-column">
                                        <h4><xsl:value-of select="@position"/></h4>
                                        <p><xsl:value-of select="@company"/></p>
                                        <p><xsl:value-of select="@location"/></p>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </table>
                    </div>

                    <div class="about-box">
                        <img src="assets/education.png" alt="Education Icon"/>
                        <h3>Education</h3>
                        <table>
                            <xsl:for-each select="Portfolio/Education/Degree">
                                <tr>
                                    <td class="year-column"><xsl:value-of select="@years"/></td>
                                    <td class="details-column">
                                        <h4><xsl:value-of select="@title"/></h4>
                                        <p><xsl:value-of select="@university"/></p>
                                        <p><xsl:value-of select="@honors"/></p> 
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </table>
                    </div>
                </div>

                <div class="skills-section section">
                    <h2>Skills</h2>
                    <div class="skills-list">
                        <xsl:for-each select="Portfolio/Skills/SkillCategory">
                            <div>
                                <h3><xsl:value-of select="@title"/></h3>
                                <ul>
                                    <xsl:for-each select="Skill">
                                        <li>
                                            <img src="assets/checkmark.png" alt="Checkmark"/>
                                            <xsl:value-of select="."/>
                                        </li>
                                    </xsl:for-each>
                                </ul>
                            </div>
                        </xsl:for-each>
                    </div>
                </div>

                <div class="projects-section section">
                    <h2>Projects</h2>
                    <div class="projects-list">
                        <xsl:for-each select="Portfolio/Projects/Project">
                            <div class="project-card">
                                <img src="{Logo}" alt="{@title}"/>
                                <h3><xsl:value-of select="@title"/></h3>
                                <p><xsl:value-of select="Description"/></p> 
                                <div class="technologies-list">
                                    <strong>Technologies Used:</strong>
                                    <ul>
                                        <xsl:for-each select="Technologies/Technology">
                                            <li class="technology">
                                                <xsl:value-of select="."/>
                                            </li>
                                        </xsl:for-each>
                                    </ul>
                                </div>
                            </div>
                        </xsl:for-each>
                    </div>
                </div>

                <div class="publications-section section">
                    <h2>Publications</h2>
                    <div class="box">
                        <xsl:for-each select="Portfolio/Publications/Publication">
                            <div class="publication-item">
                                <p>
                                    "<xsl:value-of select="@title"/>"
                                </p>
                                <p>
                                    <xsl:text>Co-author, published in the </xsl:text>
                                    <xsl:value-of select="@journal"/>
                                    <xsl:text>, </xsl:text>
                                    <xsl:value-of select="@year"/>
                                    <xsl:text>, Volume </xsl:text>
                                    <xsl:value-of select="@volume"/>
                                    <xsl:text>, Number </xsl:text>
                                    <xsl:value-of select="@number"/>.
                                </p>
                            </div>
                        </xsl:for-each>
                    </div>
                </div>

                <div class="volunteering-section section">
                    <h2>Volunteering</h2>
                    <div class="box">
                        <div class="volunteering-item">
                            <p><xsl:value-of select="Portfolio/Volunteering/Role/@year"/></p>
                            <p><strong>Role:</strong> <xsl:value-of select="Portfolio/Volunteering/Role"/></p>
                            <p>
                                <xsl:value-of select="Portfolio/Volunteering/Role/@organization"/>
                                <xsl:text> (</xsl:text>
                                <xsl:value-of select="Portfolio/Volunteering/Initiative"/>
                                <xsl:text>), which aims to convert the content of books and PDF files for school curricula into Word format in order to support their printing via the Braille device.</xsl:text>
                            </p>
                        </div>
                    </div>
                </div>

               <div class="copyright-section" style="text-align: center; margin-top: 6%;">
                    <p style="color: gray; font-size: 0.8em;">Copyright @ 2024 <xsl:value-of select="Portfolio/PersonalInfo/Name"/>. All Rights Reserved.</p>
                </div>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
