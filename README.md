# HarmoniSync
Welcome to **HarmoniSync**—your musical playground! Here, you can upload any music sheet and watch it transform into personalized versions for your favorite instruments. Jam along with interactive features, share your creations, and connect with fellow music enthusiasts. Dive in, make some noise, and let’s create some musical magic together!  

&nbsp;  

# Video Preview  
Video preview [here](https://www.youtube.com/watch?v=1Dw4-mXa_lo).

&nbsp;  

## Inspiration  
Our inspiration for **HarmoniSync** came from a challenge faced by our teammate Tao-Tao, who is both a music and math major. Tao-Tao struggled with playing classical instruments because music sheets for those instruments aren't readily available across multiple instrument types. Recognizing this problem, we decided to take it on ourselves and create a solution to simplify music practice and collaboration for musicians like Tao-Tao.  

While we were at it, we took things a step further and planned to create a social platform where musicians can share their music sheets, upload their songs, and collaborate with others. Think of it like a "Facebook for music"—a space where people can connect through their musical creations and inspire each other.  

&nbsp;  

## What it does
HarmoniSync simplifies the process of working with classical music sheets by allowing users to upload their sheets in various formats, such as images, music notation files and PDFs. Once uploaded, our custom algorithm transforms these sheets into arrangements suitable for different instruments, making it easy for musicians to play on their favorite pieces. After transformation, users can share their newly created music sheets within the community, fostering collaboration and creativity among musicians.  

With a user-friendly interface, HarmoniSync guides you through each step, from uploading your music sheet to sharing it with others, making the music-making experience enjoyable and accessible for everyone.  

&nbsp;  

## How we built it

We used a wide range of tools and technologies to bring **HarmoniSync** to life:

- **Languages/Frameworks:** HTML, CSS, JavaScript, Python, Flask
- **Custom Algorithm:** Built from scratch to handle music notes' transformation
- **Optical Music Recognition (OMR):** Audiveris for parsing music sheet images
- **Database:** SQLAlchemy and SQL for managing data
- **Music Manipulation:** Music21 toolkit for working with musical structures
- **Music Sheet Visualization:** Lilypond for generating transformed music sheets

It took us a full night, fueled by 2 Red Bulls and a whole lot of patience, with plenty of brainstorming sessions. We followed the **Agile methodology**, where we split the team into smaller groups to distribute tasks and implemented unit testing simultaneously to ensure code quality.  

&nbsp;  

## Challenges we ran into

The biggest challenge we encountered was definitely the custom algorithm. It was the heart of our project, but it often didn’t work as expected, leading to a lot of frustrating moments. Debugging it felt like a never-ending battle, and running unit tests sometimes raised more questions than answers. We invested countless hours trying to get it right. 

Integrating Flask with CSS was another challenge we faced. It was new territory for us, but we managed to figure it out in the end, which added to our learning experience.    

&nbsp;  

## Accomplishments that we're proud of

- **Crafting a Musical Transformation:** We successfully developed a custom algorithm that transforms classical music sheets for various instruments. It was a tough challenge, but we pulled it off. We built algorithms of our own. OF OUR OWN!
- **Learning Through Challenges:** Integrating Flask with CSS was a new experience for us, but we tackled it head-on and figured it out, adding to our skill set along the way.
- **Building a Community Hub:** We plan to a social platform on top of this where musicians can easily share their music sheets and songs. It’s a lively space that encourages collaboration and creativity—kind of like a "Facebook for music."
- **Teamwork in Action:** Completing this project on a tight deadline showed just how dedicated our team is. We even pulled an all-nighter (with some help from Red Bulls) to make sure we brought our vision to life.
- **Embracing Agile Excellence:** By using Agile methodologies, we kept our development process smooth and efficient, making sure everyone had clear tasks and we stayed on track.  

&nbsp;  

## What we learned
- **Diving Deep into Tech:** We gained invaluable hands-on experience with an array of technologies, including Flask, SQLAlchemy, and music-specific libraries like Music21 and Lilypond, enhancing our technical toolkit.
- **The Art of Algorithm Design:** We really came to appreciate the complexities of crafting custom algorithms. It was tough work at times, but there’s nothing quite like the thrill of building something from the ground up and finally seeing it come to life.
- **Collaboration is Key:** This journey highlighted the importance of teamwork and open communication during problem-solving sessions.  

&nbsp;  

## What's next for HarmoniSync

- **Building a Social Platform:** We already have user sign-ins, but we plan to enhance the experience by building a social platform on top of it, allowing musicians to collaborate and post their creations.
- **Optimizing Our Algorithm:** Of course, we're excited to keep refining our custom algorithm to boost performance and accuracy in music transformation.
- **Supporting Multiple Music Sheets:** We aim to add support for handling multiple music sheets at once, as well as expanding the range of file types we can work with.
- **Expanding Instrument Support:** We're looking to include a wider variety of instruments so that more musicians can benefit from our platform.
- **Diving into Diverse Genres:** We will maybe work on developing more algorithms to cover a wider range of music genres, including those in different languages, making our platform even more inclusive. No promises on that though :)
