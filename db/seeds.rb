Notebook.delete_all
User.delete_all

user1 = User.create(username: 'Example User', password: "examplepassword" )
user2 = User.create(username: 'Theo', password: "123" )

notebook1 = user1.notebooks.create(title: "Journal", color: "dark-blue")
notebook2 = user1.notebooks.create(title: "Dreams", color: "dark-red")
notebook3 = user1.notebooks.create(title: "Work", color: "dark-green")

note1 = notebook1.notes.create(
    title: "Note 1: PostgreSQL (from Wikipedia)",
    body: "PostgreSQL (/ˈpoʊstɡrɛs ˌkjuː ˈɛl/),[12] also known as Postgres, is a free and open-source relational database management system (RDBMS) emphasizing extensibility and SQL compliance. It was originally named POSTGRES, referring to its origins as a successor to the Ingres database developed at the University of California, Berkeley.[13][14] In 1996, the project was renamed to PostgreSQL to reflect its support for SQL. After a review in 2007, the development team decided to keep the name PostgreSQL and the alias Postgres.[15] PostgreSQL features transactions with Atomicity, Consistency, Isolation, Durability (ACID) properties, automatically updatable views, materialized views, triggers, foreign keys, and stored procedures.[16] It is designed to handle a range of workloads, from single machines to data warehouses or Web services with many concurrent users. It is the default database for macOS Server,[17][18][19] and is also available for Linux, FreeBSD, OpenBSD, and Windows."
)

note2 = notebook1.notes.create(
    title: "Note 2: Linux (from Wikipedia)",
    body:
    "Linux was originally developed for personal computers based on the Intel x86 architecture, but has since been ported to more platforms than any other operating system.[20] Because of the dominance of Android on smartphones, Linux also has the largest installed base of all general-purpose operating systems.[21][22][23] Although it is used by only around 2.3 percent of desktop computers,[24][25] the Chromebook, which runs the Linux kernel-based Chrome OS, dominates the US K–12 education market and represents nearly 20 percent of sub-$300 notebook sales in the US.[26] Linux is the leading operating system on servers (over 96.4% of the top 1 million web servers' operating systems are Linux),[27] leads other big iron systems such as mainframe computers, and is the only OS used on TOP500 supercomputers (since November 2017, having gradually eliminated all competitors).[28][29][30] Linux also runs on embedded systems, i.e. devices whose operating system is typically built into the firmware and is highly tailored to the system. This includes routers, automation controls, smart home technology (like Google Nest),[31] televisions (Samsung and LG Smart TVs use Tizen and WebOS, respectively),[32][33][34] automobiles (for example, Tesla, Audi, Mercedes-Benz, Hyundai, and Toyota all rely on Linux),[35] digital video recorders, video game consoles, and smartwatches.[36] The Falcon 9's and the Dragon 2's avionics use a customized version of Linux.[37] Linux is one of the most prominent examples of free and open-source software collaboration. The source code may be used, modified and distributed commercially or non-commercially by anyone under the terms of its respective licenses, such as the GNU General Public License.[19] 90% of all cloud infrastructure is powered by Linux including supercomputers and cloud providers.[38] 74% of smartphones in the world are Linux-based.[39]"
)

note3 = notebook2.notes.create(
    title: "Note 3: LAMP (Software Bundle) (from Wikipedia)",
    body: "LAMP (Linux, Apache, MySQL, PHP/Perl/Python) is a very common example of a web service stack, named as an acronym of the names of its original four open-source components: the Linux operating system, the Apache HTTP Server, the MySQL relational database management system (RDBMS), and the PHP programming language. The LAMP components are largely interchangeable and not limited to the original selection. As a solution stack, LAMP is suitable for building dynamic web sites and web applications.[1] Since its creation, the LAMP model has been adapted to other componentry, though typically consisting of free and open-source software. For example, an equivalent installation on the Microsoft Windows family of operating systems is known as WAMP and an equivalent installation on macOS is known as MAMP.")

note4 = notebook3.notes.create(
    title: "Note 4: Web Service (from Wikipedia)",
    body: "Web service From Wikipedia, the free encyclopedia Jump to navigationJump to search The term Web service (WS) is either: a service offered by an electronic device to another electronic device, communicating with each other via the World Wide Web, or a server running on a computer device, listening for requests at a particular port over a network, serving web documents (HTML, JSON, XML, images), and creating[clarification needed] web applications services, which serve in solving specific domain problems over the Web (WWW, Internet, HTTP) In a Web service a Web technology such as HTTP is used for transferring machine-readable file formats such as XML and JSON. In practice, a web service commonly provides an object-oriented Web-based interface to a database server, utilized for example by another Web server, or by a mobile app, that provides a user interface to the end-user. Many organizations that provide data in formatted HTML pages will also provide that data on their server as XML or JSON, often through a Web service to allow syndication, for example, Wikipedia's Export. Another application offered to the end-user may be a mashup, where a Web server consumes several Web services at different machines and compiles the content into one user interface."
)

puts "done seeding!"

# t.string "title"
#     t.bigint "user_id", null: false
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.string "color"
#     t.index ["user_id"], name: "index_notebooks_on_user_id"


# this isn't causing a console error anymore but it's creating 0 notebooks
# notebooks.each do |notebook_hash| 
#     user = User.find_or_create_by(username: notebook_hash[:user])

#     Notebook.create(
#         title: notebook_hash[:title],
#         color: notebook_hash[:color],
#         user_id: user[:id]+
#     )
# end