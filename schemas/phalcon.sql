--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS companies;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE companies (
  id serial primary key,
  name varchar(70)  NOT NULL,
  telephone varchar(30)   NOT NULL,
  address varchar(40)   NOT NULL,
  city varchar(40)   NOT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--


INSERT INTO companies VALUES (1,'Acme','31566564','Address','Hello'),(2,'Acme Inc','+44 564612345','Guildhall, PO Box 270, London','London');


--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS contact;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE contact (
  id serial primary key,
  name varchar(70)   NOT NULL,
  email varchar(70)   NOT NULL,
  comments text   NOT NULL,
  created_at timestamp  DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

--
-- Table structure for table `product_types`
--

DROP TABLE IF EXISTS product_types;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE product_types (
  id serial primary key,
  name varchar(70)  NOT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_types`
--


INSERT INTO product_types VALUES (5,'Vegetables'),(6,'Fruits');


--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS products;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TYPE activeType AS ENUM('Y', 'N');
CREATE TABLE products (
  id serial primary key,
  product_types_id integer NOT NULL,
  name varchar(70)   NOT NULL,
  price decimal(16,2) NOT NULL,
  active activeType   DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

INSERT INTO products VALUES (1,5,'Artichoke','10.50','Y'),(2,5,'Bell pepper','10.40','Y'),(3,5,'Cauliflower','20.10','Y'),(4,5,'Chinese cabbage','15.50','Y'),(5,5,'Malabar spinach','7.50','Y'),(6,5,'Onion','3.50','Y'),(7,5,'Peanut','4.50','Y');


--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS users;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE users (
  id serial primary key,
  username varchar(32)   NOT NULL,
  password char(40)   NOT NULL,
  name varchar(120)   NOT NULL,
  email varchar(70)   NOT NULL,
  created_at timestamp NOT NULL,
  active char(1)   NOT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--


INSERT INTO users VALUES (1,'demo','c0bd96dc7ea4ec56741a4e07f6ce98012814d853','Phalcon Demo','demo@phalconphp.com','2012-04-10 20:53:03','Y');

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-04-10 20:53:38