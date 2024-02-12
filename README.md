## Introduction

The aim of this guide is to acquaint any enthusiast and passionate individual with the captivating universe of databases within the realm of data analysis. Throughout this journey, we will delve into the fundamentals of the database concept and its extensive applicability in projects worldwide. Additionally, we will take a foray into introducing the model, offering a comprehensive insight into the essential tools and techniques required to manipulate and extract valuable information from datasets.

I invite and offer this guide to anyone who shares my passion for the programming universe. Whether you are a new student eager to embark on your journey or someone with extensive experience in the field looking to expand your knowledge, this guide has been crafted with the aim of providing an enriching experience.

## What is a Database?

A database is an organized collection of structured information, or data, stored either in a manual system or electronically in a computer system. In a manual system, information is stored in files within drawers, making the retrieval and querying of this information quite laborious as it requires manual searching. In a computerized system, information is stored on magnetic media, and the retrieval of information is carried out through specific software.

With the switch to electronic storage, several advantages have emerged. This shift to digital storage has brought:

- **Streamlined and Efficient Retrieval Processes**
- **Space Optimization** 
- **Collaborative access for multiple users becomes possible.**
- **Redundant Data is eliminated.**
- **Prevention of inconsistent values is ensured.**
- **Secure access rules are implemented to protect the integrity of stored information.**

This transition has not only enhanced the speed and accuracy of data retrieval but has also introduced a more organized and secure approach to managing information.

A database is usually controlled by a ***database management system*** (DBMS). Together, the data and the DBMS, along with the applications that are associated with them, are referred to as a database system, often shortened to just database.

Data within the most common types of databases in operation today is typically modeled in rows and columns in a series of tables to make processing and data querying efficient. The data can then be easily accessed, managed, modified, updated, controlled, and organized. Most databases use ***structured query language*** (SQL) for writing and querying data.

| BookID | Title              | Author          | Genre       | Publication Year | ISBN          |
|:------:|---------------------|------------------|-------------|:--------------:|---------------|
| 1      | "The Great Gatsby"  | F. Scott Fitzgerald | Fiction   | 1925              | 978-3-16-148410-0|
| 2      | "To Kill a Mockingbird" | Harper Lee  | Fiction   | 1960              | 978-0-06-112008-4|
| 3      | "1984"              | George Orwell    | Dystopian  | 1949              | 978-0-452-28423-4|

> ***Note:** Example of a database table*

In this example, each *row* represents information about a specific book, and each *column* represents a different attribute of the books. The table allows for efficient organization, retrieval, and management of data related to the library's book inventory.

#

### Why is a Database Important?

A high-performing database is crucial to any organization. Databases support the internal operations of companies and store interactions with customers and suppliers. They also hold administrative information and more specialized data, such as engineering or economic models. The following are some reasons why databases are essential.

**Efficient Scaling:** database applications can manage large amounts of data, scaling to millions, billions, and more. It’s impossible to store this quantity of digital data without a database.

**Data Integrity:** databases often have built-in rules and conditions to maintain data consistency.

**Data Security:** databases support privacy and compliance requirements associated with any data. For example, to gain database access, users must log in. Different users might also have different levels of access, such as read-only.

**Data Analytics:** modern software systems use databases to analyze data. These systems can identify trends and patterns or make predictions. Data analytics help an organization make business decisions with confidence.

#

### Evolution of DataBases

Storing information is nothing new, but the rise of computers in the 1960s marked a shift toward more digital forms of databases. While working for General Electric, [Charles Bachman](https://en.wikipedia.org/wiki/Charles_Bachman) created the *Integrated Data Store*, ushering in a new age of computerized databases. IBM soon followed suit with its Information Management System, a hierarchical database. 

In the 1970s, IBM’s [Edgar F. Codd](https://en.wikipedia.org/wiki/Edgar_F._Codd) released a paper touting the benefits of relational databases, leading to IBM and the University of California, Berkeley releasing their own models. Relational databases became popular in the following years, with more businesses developing models and using SQL. Even though [object-oriented](https://www.mongodb.com/databases/what-is-an-object-oriented-database) databases became an alternative in the 1980s, relational databases remained the gold standard. 

The invention of the **World Wide Web** led to greater demand for databases in the 1990s. [MySQL](https://en.wikipedia.org/wiki/MySQL) and [NoSQL](https://www.mongodb.com/nosql-explained) databases entered the scene, competing with the commercial databases developed by businesses. Object-oriented databases also began to replace relational databases in popularity.        

During the 2000s and 2010s, organizations began to collect larger volumes of data, and many turned to the scalability offered by NoSQL databases. Today, [cloud databases](https://cloud.google.com/learn/what-is-a-cloud-database) and [self-driving databases](https://www.oracle.com/th/autonomous-database/what-is-autonomous-database/#:~:text=An%20autonomous%20database%20is%20a,and%20more%20without%20human%20intervention.) are breaking new ground when it comes to how data is collected, stored, managed, and utilized.

#

### Type of Databases

The best database for a specific organization depends on how the organization intends to use the data.


| Database Type              | Description                                                  |
|----------------------------|--------------------------------------------------------------|
| Relational Database        | Organizes data into tables with rows and columns, using keys to establish relationships between tables. Examples include MySQL, PostgreSQL, and Oracle Database. |
| NoSQL Database             | Allow storage and manipulation of unstructured and semistructured data, gaining popularity with the rise of complex web applications. Examples include MongoDB, Cassandra, and Redis. |
| Document-Oriented Database | Stores and retrieves data in JSON or BSON format. Suitable for document-based data storage. Examples include MongoDB and CouchDB. |
| Graph Database             | Focuses on representing relationships between entities, using graph structures. Examples include Neo4j and Amazon Neptune. |
| Time-Series Database       | Optimized for handling time-stamped or time-series data. Commonly used in applications dealing with sensor data and IoT. Examples include InfluxDB and Prometheus. |
| Object-Oriented Database   | Stores data as objects, allowing for the representation of real-world entities. Examples include db4o and ObjectDB. |
| Spatial Database           | Designed for storing and querying spatial or geographic data. Examples include PostGIS and Oracle Spatial. |
| Cloud Databases           | Collection of data, structured or unstructured, residing on a private, public, or hybrid cloud computing platform. Two models: traditional and Database as a Service (DBaaS). Administrative tasks and maintenance in DBaaS are handled by a service provider. |
| Self-Driving Databases    | The newest type, also known as autonomous databases, are cloud-based and leverage machine learning to automate database tuning, security, backups, updates, and other routine management tasks traditionally performed by database administrators. |

#

### Database Management System

A Database Management System (DBMS) comprises a collection of interrelated data and a set of software programs to access this data. The collection of data is commonly referred to as a database. The primary goal of a DBMS is to provide a convenient and efficient environment for retrieving and storing information in the database.

DBMSs are designed to handle substantial amounts of information. Managing data involves both defining structures for storing information and implementing mechanisms for the manipulation of this information.

```mermaid
flowchart TD
    u1 --> id1
    u2 --> id1
    a1 --> id1
    a2 --> id1
    subgraph "APPLICATIONS"
      a1{" "}
      a2{" "}
    end
    subgraph "DBMS"
      id1[(Database)]
    end
  
    subgraph "USERS"
      u1(" ")
      u2(" ")
    end
```

Additionally, a Database Management System (DBMS) must ensure the security of the stored information in the database, even in the event of system failure or unauthorized access attempts. Data in a DBMS can be shared among various users. To facilitate this, a DBMS must provide methods for database sharing.

Due to the critical importance of information in the majority of organizations, the database is a valuable resource. This has led to the development of a broad range of concepts and techniques for the efficient management of data.

#

**Components of a Database Management System (DBMS)**

Basically, a Database Management System (DBMS) is nothing more than a computer-based data storage system; that is, a system whose overall goal is to record and maintain information. A DBMS consists of four basic components: hardware, data, software, and users.

**Hardware**  
It consists of the means of data storage – disks, tapes, etc. – where the database resides, along with the devices associated with these means.

**Data:**  
The data stored in the system is distributed in one or more databases. A database is a repository of stored data, generally integrated and shared.
- *Integrated:* The database can be imagined as the unification of various files, eliminating total or partial redundancy among them.
  
- *Shared:* Individual parts of the data can be accessed by various different users. Sharing is actually a consequence of the database being integrated. The term "shared" is often expanded to cover concurrent sharing; that is, the ability for different users to access the database simultaneously.

**Software**  
Between the physical database (i.e., the stored data) and the system users, there is a layer of software that is the Database Management System (DBMS). All user requests to access the database are handled by the DBMS.  

A general function provided by the DBMS is to isolate users from the hardware details. In other words, the DBMS provides a view of the database above the hardware level.

**Users**  
Three classes of users can be identified:
- *Application Programmer:* Responsible for writing application programs that use the database. These programmers work with data in all usual forms: retrieving information, creating new information, removing or altering existing information.
  
- *End User:* Has access to the database from a terminal. An end user can use a query language provided as an integral part of the system (such as SQL), or can run an application written by the application programmer.
  
- *Database Administrator (DBA):* It is part of the DBA's job to decide exactly what information should be maintained. The DBA must identify the entities relevant to the company and the information to be recorded about these entities. The DBA's function is to serve as a liaison with users, ensuring the availability of the data they need. The DBA is also responsible for the organization and performance of the system with the best interests of the company in mind.

#

### Data Independence

We say that an application is data-dependent when it becomes impossible to change the storage structure or access strategy without affecting the application. Data independence is a key goal of database systems. We can define data independence as the immunity of applications to changes in the storage structure or access strategy.

| Aspect                | Description                                                                                      |
|------------------------|--------------------------------------------------------------------------------------------------|
| **Physical** | The ability to modify the physical schema without affecting the components of the database. For example, creating a new index on a table.               |
| **Logical**  | The ability to modify the conceptual schema without the need to rewrite application programs. For example, creating a new attribute in a table.          |

#

### Abstraction Levels

A Database Management System (DBMS) is a collection of interrelated files and a set of programs that allow various users to access and modify these files. A central purpose of a database system is to provide users with an abstract view of the data. In other words, the system conceals certain details of how the data is stored or maintained. However, for the system to be usable, data needs to be retrieved efficiently.

Concerns about efficiency lead to the design of complex data structures for data representation in the database. However, since database systems are often used by personnel without training in the field of computer science, this complexity needs to be hidden from system users. This is achieved by defining various levels of abstraction through which the database can be viewed.

#

**Physical or Internal Level**  
This is the lowest level of abstraction, describing how the data is stored. At this level, low-level, complex structures are detailed.

**Conceptual Level**  
This level describes what data is stored and the relationships between them. It depicts the database as a small number of relatively simple structures. Although the implementation of simple structures may involve complex structures at the physical level, the conceptual level user does not need to be aware of this. 

The conceptual level is used by database administrators, who must decide which information should be maintained in the database.

**External Level**  
This is the highest level of abstraction, exposing only a part of the database. Despite the conceptual level using simpler structures, there is still a type of complexity resulting from the large size of the database. Many database system users will not be concerned with all the stored information. On the contrary, users only need a part of the database to perform their work. 

To simplify the interaction of these users with the system, there is the external level, also called the view level. There can be different views for the same database.

```mermaid
flowchart TD
  subgraph id["External Level"]
    a["Vision 1"]
    b["Vision 2"]
    c["Vision n"]
  end
  e --> id
  d --> e
  e["Conceptual Level"]
  d["Internal Level"]

```

#
























---



## The Relational Model

#

## The SQL Language

---
