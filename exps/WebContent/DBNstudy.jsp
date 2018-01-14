<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Database Normalization Notes</title>
</head>
<body>
<h2>Functional Dependency</h2>
<p>Functional dependency (FD) is a set of constraints between two attributes in a relation. Functional dependency says that if two tuples have same values for attributes A1, A2,..., An, then those two tuples must have to have same values for attributes B1, B2, ..., Bn.</p>
<p>Functional dependency is represented by an arrow sign that is, X -> Y, where X functionally determines Y. The left-hand side attributes determine the values of attributes on the right-hand side.</p>
<h2>Armstrong's Axioms</h2>
<p>If F is a set of functional dependencies then the closure of F, denoted as F<sup>+</sup>, is the set of all functional dependencies logically implied by F. Armstrong's Axioms are a set of rules, that when applied repeatedly, generates a closure of functional dependencies.</p>
<ul class="list">
<li><p><b>Reflexive rule</b> &minus; If alpha is a set of attributes and beta is_subset_of alpha, then alpha holds beta.</p></li>
<li><p><b>Augmentation rule</b> &minus; If a &#8594; b holds and y is attribute set, then ay &#8594; by also holds. That is adding attributes in dependencies, does not change the basic dependencies.</p></li>
<li><p><b>Transitivity rule</b> &minus; Same as transitive rule in algebra, if a &#8594; b holds and b &#8594; c holds, then a &#8594; c also holds. a &#8594; b is called as a functionally that determines b.</p></li>
</ul>
<h2>Trivial Functional Dependency</h2>
<ul class="list">
<li><p><b>Trivial</b> &minus; If a functional dependency (FD) X &#8594; Y holds, where Y is a subset of X, then it is called a trivial FD. Trivial FDs always hold.</p></li>
<li><p><b>Non-trivial</b> &minus; If an FD X &#8594; Y holds, where Y is not a subset of X, then it is called a non-trivial FD.</p></li>
<li><p><b>Completely non-trivial</b> &minus; If an FD X &#8594; Y holds, where x intersect Y = &#934;, it is said to be a completely non-trivial FD.</p></li>
</ul>
<h2>Normalization</h2>
<p>If a database design is not perfect, it may contain anomalies, which are like a bad dream for any database administrator. Managing a database with anomalies is next to impossible.</p>
<ul class="list">
<li><p><b>Update anomalies</b> &minus; If data items are scattered and are not linked to each other properly, then it could lead to strange situations. For example, when we try to update one data item having its copies scattered over several places, a few instances get updated properly while a few others are left with old values. Such instances leave the database in an inconsistent state.</p></li>
<li><p><b>Deletion anomalies</b> &minus; We tried to delete a record, but parts of it was left undeleted because of unawareness, the data is also saved somewhere else.</p></li>
<li><p><b>Insert anomalies</b> &minus; We tried to insert data in a record that does not exist at all.</p></li>
</ul>
<p>Normalization is a method to remove all these anomalies and bring the database to a consistent state.</p>
<h2>First Normal Form</h2>
<p>First Normal Form is defined in the definition of relations (tables) itself. This rule defines that all the attributes in a relation must have atomic domains. The values in an atomic domain are indivisible units.</p>
<img src="unorganized_relation.png" alt="unorganized relation" />
<p>We re-arrange the relation (table) as below, to convert it to First Normal Form.</p>
<img src="1nf.png" alt="Relation in 1NF" />
<p>Each attribute must contain only a single value from its pre-defined domain.</p>
<h2>Second Normal Form</h2>
<p>Before we learn about the second normal form, we need to understand the following &minus;</p>
<ul class="list">
<li><p><b>Prime attribute</b> &minus; An attribute, which is a part of the prime-key, is known as a prime attribute.</p></li>
<li><p><b>Non-prime attribute</b> &minus; An attribute, which is not a part of the prime-key, is said to be a non-prime attribute.</p></li>
</ul>
<p>If we follow second normal form, then every non-prime attribute should be fully functionally dependent on prime key attribute. That is, if X &#8594; A holds, then there should not be any proper subset Y of X, for which Y &#8594; A also holds true.</p>
<img src="not_2nf.png" alt="Relation not in 2NF" />
<p>We see here in Student_Project relation that the prime key attributes are Stu_ID and Proj_ID. According to the rule, non-key attributes, i.e. Stu_Name and Proj_Name must be dependent upon both and not on any of the prime key attribute individually. But we find that Stu_Name can be identified by Stu_ID and Proj_Name can be identified by Proj_ID independently. This is called <b>partial dependency</b>, which is not allowed in Second Normal Form.</p>
<img src="2nf.png" alt="Relation  in 2NF" />
<p>We broke the relation in two as depicted in the above picture. So there exists no partial dependency.</p>
<h2>Third Normal Form</h2>
<p>For a relation to be in Third Normal Form, it must be in Second Normal form and the following must satisfy &minus;</p>
<ul class="list">
<li>No non-prime attribute is transitively dependent on prime key attribute.</li>
<li>For any non-trivial functional dependency, X &#8594; A, then either &minus;
</li>
</ul>
<img src="not_3nf.png" alt="Relation not in 3NF" />
<p>We find that in the above Student_detail relation, Stu_ID is the key and only prime key attribute. We find that City can be identified by Stu_ID as well as Zip itself.  Neither Zip is a superkey nor is City a prime attribute. Additionally, Stu_ID &#8594; Zip &#8594; City, so there exists <b>transitive dependency</b>.</p>
<p>To bring this relation into third normal form, we break the relation into two relations as follows &minus;</p>
<img src="3nf.png" alt="Relation in 3NF" />
<h2>Boyce-Codd Normal Form</h2>
<p>Boyce-Codd Normal Form (BCNF) is an extension of Third Normal Form on strict terms. BCNF states that &minus;</p>
<ul class="list">
<li>For any non-trivial functional dependency, X &#8594; A, X must be a super-key.</li>
</ul>
<p>In the above image, Stu_ID is the super-key in the relation Student_Detail and Zip is the super-key in the relation ZipCodes. So,</p>
<p style="padding-left:20px;">Stu_ID &#8594; Stu_Name, Zip</p>
<p>and</p>
<p style="padding-left:20px;">Zip &#8594; City</p>
<p>Which confirms that both the relations are in BCNF.</p>
<a href="DBN.jsp">Click here to take the test! </a>


<hr />
</body>
</html>
