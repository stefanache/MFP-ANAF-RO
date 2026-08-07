-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 07, 2026 at 07:59 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_ERP_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `actives_for_agent_rating`
--

CREATE TABLE `actives_for_agent_rating` (
  `aafr_id` int(11) NOT NULL,
  `aafr_active_name` varchar(254) NOT NULL,
  `aafr_active_index_type` enum('-n/a-','mid=(ask+bid)/2 banks-market(cotatia Forex - pretul de ref)','lichiditate/flux(injectare/retragere de valuta pe piata interbancara Forex/FX)','real ASK/BID interbancar/banca/bursa/casa de schimb valutar FX') NOT NULL COMMENT 'USD/RON ask =inversul(RON/USD bid);\r\n(USD/RON ask +USD/RON bid)/2 =mid-market= cursul mediu/cotatia medie\r\nBNR publică exclusiv Cursul statistic Mediu (MID) stabil ca cifră unică. Ea NU publică(asa cum o face fiecare piata/banca din piata-interbancara) și cursurile componente (Bid și Ask) care s-au înregistrat pe piața interbancară.\r\nBNR folosește datele agregate de platforme globale precum Reuters(LSEG FX Matching) sau Bloomberg pentru a extrage prețurile interbancare brute, dar alege să curețe aceste informații și să livreze publicului doar valoarea MID [finance-12].\r\nFixingul este 15 minute cand se extrag activ esantioane pe ale cotatiilor prinicpalelor banci.\r\nSe face MID  a cotații eliminand max si min(zgomot)\r\nPublicarea pt banci,presa si contabili: La ora 13:00, BNR afișează pe site și în fișierele XML un singur număr curat pentru fiecare valută (de exemplu: 1 USD = 4.5420 RON). Cotațiile brute de Bid și Ask de la care s-a pornit rămân secrete în serverele BNR și nu sunt accesibile publicului larg.\r\n\r\n',
  `aafr_comments` text NOT NULL,
  `aafr_parent` int(11) NOT NULL DEFAULT -1,
  `index_sense` enum('-n/a-','ASK(BUY=cumparare=LongPosition','BID(SELL=vanzare=ShortPosition)','') NOT NULL,
  `currencyPartGood_top_id` int(11) NOT NULL DEFAULT -1,
  `agentPART_good_ID` int(11) NOT NULL DEFAULT -1,
  `sense_top` enum('-n/a-','ASK/BUY/LP','BID/SELL/SP','') NOT NULL,
  `currencyCounterPartGood_index_bottom_id` int(11) NOT NULL DEFAULT -1,
  `agentCounterPart_good_id` int(11) NOT NULL DEFAULT -1,
  `sense_bottom` enum('-n/a-','BUY/SELL/LP','ASK/BUY/SP','') NOT NULL DEFAULT '-n/a-',
  `marketAdmin_Product_ADMIN_AgentGoodType` enum('-n/a-','spot','derivata1-futures cu activ-suport spot','derivata1-options(call/put=futures maybe-buy=LP/sell=SP) cu activ_suport spot','derivata2-options(call/put=futures maybe-buy=LP/sell=SP) cu activ_suport futures') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `actives_for_agent_rating`
--

INSERT INTO `actives_for_agent_rating` (`aafr_id`, `aafr_active_name`, `aafr_active_index_type`, `aafr_comments`, `aafr_parent`, `index_sense`, `currencyPartGood_top_id`, `agentPART_good_ID`, `sense_top`, `currencyCounterPartGood_index_bottom_id`, `agentCounterPart_good_id`, `sense_bottom`, `marketAdmin_Product_ADMIN_AgentGoodType`) VALUES
(-1, '- n/a -', '-n/a-', 'Actives\r\nfor  rates\r\nfrom Rating-Agents', -1, '-n/a-', -1, -1, '-n/a-', -1, -1, '-n/a-', '-n/a-'),
(0, 'CURRENCIES', '-n/a-', 'Actives: Currencies active\'s group', -1, '-n/a-', -1, -1, '-n/a-', -1, -1, '-n/a-', '-n/a-'),
(1, 'USD/RON', '-n/a-', 'Active: American-Dolar ', 0, '-n/a-', 1, -1, '-n/a-', 0, -1, '-n/a-', '-n/a-'),
(2, 'EUR/RON', '-n/a-', 'Active: UE currency', 0, '-n/a-', 2, -1, '-n/a-', 0, -1, '-n/a-', '-n/a-'),
(3, 'EUR/USD', '-n/a-', 'Active: EUR/USD index', 0, 'ASK(BUY=cumparare=LongPosition', 2, -1, 'ASK/BUY/LP', 1, -1, 'BUY/SELL/LP', '-n/a-'),
(4, 'USD/EUR', '-n/a-', 'Active USD/EUR index', 0, 'BID(SELL=vanzare=ShortPosition)', 1, -1, 'BID/SELL/SP', 2, -1, 'BUY/SELL/LP', '-n/a-');

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `agnt_id` int(11) NOT NULL,
  `agnt_secured_UNIQUE_ID_Code_NationalRegistered_mainBase` varbinary(254) NOT NULL COMMENT 'for e.g. CNP(MI-RO), CIF(ANAF-RO)_CUI/CIF(ONRC/ANF)...\r\n\r\nGPPR PID_registered = AES128(''cheia secreta'',''CMP_''+/.CNP) pt persoane(fizice);\r\n\r\nGDPR CID_registered = AES128(''aceiasi cheie secreta'', ''CID~''CIF_CUI/CIF_CIF) pt companii si alte organizatii sau institutii de stat,banci si IFN-uri,...in rest orice alt agent care are macar CIF.\r\n\r\nagnt_secured_UNIQUE_ID_Code_NationalRegistered = GDPR PID/CID prin copiere din structurile de baza dupa encriptare si salvare in tabelele originale/de baza\r\n\r\n',
  `agnt_name` varchar(254) NOT NULL,
  `agnt_shortName` varchar(30) NOT NULL COMMENT 'short-Name,abrev,acronym',
  `agnt_type` enum('- n/a -','User-Only(PP)','Physical(PP)','Cmpny/Org(LE)','Bank(LE)','Non-Bank Fin-Inst(LE)','State-Inst.(LE)','Department(LE)','Staff(PP)') NOT NULL DEFAULT '- n/a -',
  `agnt_fk` int(11) NOT NULL COMMENT 'person/company/bank-fk',
  `agnt_comments` text NOT NULL,
  `agent_good_id` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='(persoana/salariat ori grup de persoane sau salariati ce fac ca lucrurile sa fie puse in miscare';

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`agnt_id`, `agnt_secured_UNIQUE_ID_Code_NationalRegistered_mainBase`, `agnt_name`, `agnt_shortName`, `agnt_type`, `agnt_fk`, `agnt_comments`, `agent_good_id`) VALUES
(-1, '', '- n/a -', '- AGNT -', '- n/a -', -1, 'agent(PP=persons/staff/JP=companies)-comments\r\n----------------------------------------\r\nref-by agnt_secured_UNIQUE_ID_Code_NationalRegistered GDPR Field:\r\n\r\nCUI-ul firmei este acelasi cu CIF-ul firmei?Da, pentru majoritatea firmelor (SRL, SA) și a PFA-urilor, CUI-ul este exact același cod numeric ca și CIF-ul. Singura diferență reală constă în denumirea utilizată de instituțiile statului: CUI este emis de Registrul Comerțului, în timp ce CIF este termenul folosit de ANAF pentru evidența fiscală.Diferențe de termeni și structurăCUI (Cod Unic de Înregistrare): Este codul obținut la înființarea firmei de la Oficiul Național al Registrului Comerțului (ONRC).CIF (Cod de Identificare Fiscală): Este termenul utilizat de Agenția Națională de Administrare Fiscală (ANAF) pentru raportările fiscale și contabile.Prefixul „RO”: Dacă firma devine plătitoare de TVA, codul numeric rămâne identic, dar i se adaugă în față prefixul „RO” (de exemplu, din CUI 123456 devine CIF RO123456).Excepții (Când există doar CIF)Nu toate entitățile economice trec prin Registrul Comerțului pentru a primi un CUI. Există asociații, ONG-uri sau persoane care practică profesii liberale (medici, avocați, notari) care nu au CUI, ci primesc direct un CIF de la ANAF în baza altor documente de înființare.Dacă dorești, te pot ajuta să verifici statutul de plătitor de TVA al unei firme sau să înțelegi cum se interpretează numărul de înmatriculare la Registrul Comerțului (numărul de tip J sau F). Ce informații suplimentare ți-ar fi utile?\r\n-----------------------------------\r\ntrebui securizat GDPR?Da, CUI-ul/CIF-ul trebuie protejat, dar modul de securizare depinde strict de tipul firmei: SRL sau PFA.Regulamentul GDPR protejează exclusiv persoanele fizice, nu și persoanele juridice.1. Cazul SRL, SA (Persoane juridice)Nu intră sub incidența GDPR: CUI-ul unui SRL este o informație publică de interes comercial.Regulă: Poate fi stocat, afișat pe site-uri sau transmis fără acord GDPR.2. Cazul PFA, ÎI, ÎF, Profesii liberale (Persoane fizice)Intră sub incidența GDPR: CUI-ul/CIF-ul unui PFA este direct legat de o persoană fizică identificabilă. De cele mai multe ori, baza de date ANAF asociază acest cod cu CNP-ul sau adresa de domiciliu a titularului.Regulă: Trebuie securizat conform normelor GDPR dacă colectezi și procesezi astfel de date de la clienți sau furnizori.Măsuri minime de securizare (dacă procesezi PFA-uri)Criptare și acces restricționat: Limitează accesul angajaților la baza de date cu clienți/furnizori.Politică de confidențialitate: Specifică clar pe site sau în contracte de ce colectezi CIF-ul (ex: pentru facturare legală).Ștergerea datelor: Păstrează documentele doar pe perioada legală impusă de legislația fiscală (de regulă, 5-10 ani pentru documente financiar-contabile).Dacă dorești, te pot ajuta cu redactarea unei clauze GDPR de facturare pentru contracte sau îți pot explica ce alte date comerciale (precum contul IBAN) au regim special. Cum preferi să continuăm?', -1),
(0, '', 'AGENTII-Romaniei', 'RO-AGNT', 'State-Inst.(LE)', 0, 'Agentii Romaniei', -1),
(1, '', 'Presedentia Romaniei', 'AP-RO', 'State-Inst.(LE)', 1, 'Presedentia/Administratia Presidentiala Romaniei condusa de Presedintele Romaniei', 1),
(2, '', 'Parlamentul Romaniei', 'P-RO', 'State-Inst.(LE)', 2, 'Parlamentul National al Romaniei condus de Presedintele Senatului si de Presedintele Camerei Deputatior(copresedinte)', -1),
(3, '', 'Senatul Romaniei', 'SEN-RO', 'State-Inst.(LE)', 3, 'Senatul Romaniei din Parlamentul National al Romaniei', 2),
(4, '', 'Camera Deputatilor a Romaniei', 'CD-RO', 'State-Inst.(LE)', 4, 'Camera Deputatilor din Parlamentul National al Romaniei', 3),
(5, '', 'Guvernul Romaniei', 'GOV-RO', 'State-Inst.(LE)', 5, 'Guvernul Romaniei condus de Premierul Romaniei\r\n', 4),
(6, '', 'Banca Nationala a Romaniei', 'BNR', 'Bank(LE)', 1, 'Banca Centrala/Nationala a Romaniei(BNR)', 5),
(7, '', 'Agenția Națională de Administrare Fiscală din Romania', 'ANAF-GOV-RO', 'State-Inst.(LE)', 6, 'Agenția Națională de Administrare Fiscală din Romania(ANAF-GOV-RO)', 6);

-- --------------------------------------------------------

--
-- Table structure for table `agent_actives_for_rates`
--

CREATE TABLE `agent_actives_for_rates` (
  `aar_` int(11) NOT NULL,
  `aar_name` varchar(254) NOT NULL,
  `aar_comments` text NOT NULL,
  `agent_proxy_id` int(11) NOT NULL DEFAULT -1 COMMENT 'proxy/administrator piata-interbancara=BNR sau alta BANCA,BURSA,Casa de schimb Valutar,...,etc\r\nverifica codurile MIC=Market Identifier Codes=ISO 10383',
  `activ_id` int(11) NOT NULL DEFAULT -1,
  `anonymous_or_agent_BUYER` int(11) NOT NULL DEFAULT -1,
  `anonymous_or_agend_SELLER` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agent_actives_for_rates`
--

INSERT INTO `agent_actives_for_rates` (`aar_`, `aar_name`, `aar_comments`, `agent_proxy_id`, `activ_id`, `anonymous_or_agent_BUYER`, `anonymous_or_agend_SELLER`) VALUES
(-1, '- n/a-', 'Agent\'s actives list', -1, -1, -1, -1),
(1, 'BNR:USD', 'Agent/BNR\'s active/USD', 6, 1, -1, -1);

-- --------------------------------------------------------

--
-- Table structure for table `agent_active_rates`
--

CREATE TABLE `agent_active_rates` (
  `acr_id` int(11) NOT NULL,
  `acr_name` varchar(254) NOT NULL,
  `acr_comments` text NOT NULL,
  `agent_activ_id` int(11) NOT NULL DEFAULT -1,
  `rating_date` date NOT NULL DEFAULT current_timestamp(),
  `rate_exchange` double NOT NULL COMMENT 'curs/cotatie/pret de referinta/factor de tranzactionare/vanzare-cumparare\r\n\r\nTraderii bancilor tranzactioneaza in timp-real pe terminalele Reuters unde sunt afisate toate cotatiile reale sau MID\r\n\r\nPrin urmare, sistemul orb(blind fixing) nu protejează doar \r\n- creditele populației, \r\n- ci și \r\n   --creditele firmelor sau\r\n   --emisiunile de obligațiuni ale statului \r\n   care sunt legate tot de ROBOR.\r\n',
  `volume_exchange` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agent_active_rates`
--

INSERT INTO `agent_active_rates` (`acr_id`, `acr_name`, `acr_comments`, `agent_activ_id`, `rating_date`, `rate_exchange`, `volume_exchange`) VALUES
(-1, '- n/a -', 'Agent(like Banks,Councils,...) show rates for various actives(currency,currency-peer,actions,...)', -1, '0000-00-00', -1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `agent_departs`
--

CREATE TABLE `agent_departs` (
  `ad_id` int(11) NOT NULL,
  `ad_name` varchar(254) NOT NULL,
  `ad_shortName` varchar(30) NOT NULL,
  `ad_comments` text NOT NULL,
  `agent_good_id` int(11) NOT NULL DEFAULT -1,
  `depart_STANDARD_id` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `agent_Goods`
--

CREATE TABLE `agent_Goods` (
  `agd_id` int(11) NOT NULL,
  `agd_name` varchar(254) NOT NULL COMMENT 'seller-agent name of/for goods',
  `agd_type` enum('- n/a -','product(BI)','service(BI+IA)','asset(BI)','inventory(BI)','Bank-Account(IA)','agent(IA)','document(BI/IA)','standard(BI/IA)','URL(IA)','Price_List(BI/IA)','Active_Index(IA)','Currency(IA)','Index-Currencies(2xIAs)','Staff(BI)','Departament(IA)') NOT NULL DEFAULT '- n/a -' COMMENT 'agent''s good - type/category: IA=Intangible-Asset, BI=Bodily Immobilization/asset ',
  `ag_id` int(11) NOT NULL DEFAULT -1 COMMENT 'the id for owner-agent of good',
  `gd_fk` int(11) NOT NULL DEFAULT -1 COMMENT 'agent''s efectiveTable-good',
  `um_id` int(11) NOT NULL DEFAULT -1 COMMENT 'unit of goods used into agent''s stock',
  `agd_comments` text NOT NULL,
  `location_id` int(11) NOT NULL DEFAULT -1,
  `agd_shortName` varchar(30) NOT NULL,
  `agenrRole_id` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='retetarul/compozitia evenimentului';

--
-- Dumping data for table `agent_Goods`
--

INSERT INTO `agent_Goods` (`agd_id`, `agd_name`, `agd_type`, `ag_id`, `gd_fk`, `um_id`, `agd_comments`, `location_id`, `agd_shortName`, `agenrRole_id`) VALUES
(-1, '- n/a -', '- n/a -', -1, -1, -1, 'goods/resources/active(mercandise/article/wares: products&services but and work-tools: assets&inventory) - comments\r\nhttps://www.scribd.com/doc/43925087/Clasificarea-Activelor-Si-a-Pasivelor', -1, '- AGD -', -1),
(1, 'Presedentia Romaniei', 'agent(IA)', 0, 1, -1, 'Presedentia Romaniei condusa de Presedintele Romaniei', -1, 'AP-RO', -1),
(2, 'Senatul Romaniei', 'agent(IA)', 2, 3, -1, 'Senatul Romaniei din Parlamentul National al Romaniei', -1, 'SEN-RO', -1),
(3, 'Camera Deputatilor a Romaniei', 'agent(IA)', 2, 4, -1, 'Camera Deputatilor din Parlamentul National al Romaniei', -1, 'CD-RO', -1),
(4, 'Guvernul Romaniei', 'agent(IA)', 1, 5, -1, 'Guvernul Romaniei condus de Premierul Romaniei', -1, 'GOV-RO', -1),
(5, 'Banca Nationala a Romaniei(BNR)', 'agent(IA)', 6, 6, -1, 'Instituție-Publică Independentă(IPI): Banca Centrala/Nationala a Romaniei(BNR)', -1, 'BNR', -1),
(6, 'Agenția Națională de Administrare Fiscală din Romania', 'agent(IA)', 7, -1, -1, 'Agenția Națională de Administrare Fiscală din Romania(ANAF)', -1, 'ANAF-GOV-RO', -1),
(7, 'eFactura', 'standard(BI/IA)', 7, 7, -1, 'ANAF-GOV-RO: eFactura', -1, 'ANAF-GOV-RO: eFactura', -1);

-- --------------------------------------------------------

--
-- Table structure for table `agent_good_URLs`
--

CREATE TABLE `agent_good_URLs` (
  `agdURL_id` int(11) NOT NULL,
  `agdURL_name` varchar(254) NOT NULL,
  `agdURL_short_name` varchar(30) NOT NULL,
  `agdURL__comments` text NOT NULL,
  `agent_good_id` int(11) NOT NULL DEFAULT -1,
  `URL_id` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agent_good_URLs`
--

INSERT INTO `agent_good_URLs` (`agdURL_id`, `agdURL_name`, `agdURL_short_name`, `agdURL__comments`, `agent_good_id`, `URL_id`) VALUES
(-1, '- n/a -', '- agdURL -', 'Agent\'s-Good diverse URL-uri(prezentare,...,construite in diverse alte scopuri)', -1, -1);

-- --------------------------------------------------------

--
-- Table structure for table `agent_roles`
--

CREATE TABLE `agent_roles` (
  `ar_id` int(11) NOT NULL,
  `ar_name` varchar(254) NOT NULL,
  `ar_comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='ecternal-roles of Agent in market(groups of: banks,councils,...)';

--
-- Dumping data for table `agent_roles`
--

INSERT INTO `agent_roles` (`ar_id`, `ar_name`, `ar_comments`) VALUES
(-999999, 'calitate_oficiala/rolul a Ag-lui_contributor/observator(verbalizator care Exista/Face=Verb(er):Sunt, are/Poseda or Face/se-opereaza-estetic/se-inzestreaza singur sau ajutat/participanti) in/la aparitia/geneza/ivirea evenimentului-primordial(cu DT si Loc)', 'eveniment/fapt/act/sceneta/-fizic- intamplator sau voit de ivire/accidentare/fabricare/contopire/fuziune/unire/nastere/aparitie-pt-prima-data/geneza/+ dar si operatie-contrara de splitare/despartire adica -/U dar si splitare/transformare/creare/autor/editor/fabricare/mixare/costumare/echipare/inzestrare/machiaza/mimeaza/anuntare/codifica/proces ce s-a petrecut intr-un/o portiune-a corpului/ loc/piata/locatie-virtuala la un anumit moment dat de timp ce duce la un nou individ/obiect/... cu un nou nume/denumire(nce trebuie certificat si inregistrat intr-un nomenclator) alocat/acordat de catre parinti-genetici certificat de catre un observator/martor/certificator-oficial\r\n\r\nNota: Daca evenimentul este raportat(nepublic)/publicat(dat ca o stire publica)/anuntat se da nastere la un alt obiect-necorporal=stire'),
(-1, '- n/a -', 'company/person-role_comments(agent-role in business: contracts...):\r\n-----------------------\r\nIn commercial and logistics terminology, the terms Seller, Buyer, and Shipper define specific entities across two distinct planes: the financial/commercial plane (the transfer of ownership and funds) and the logistics plane (the physical movement of goods). Although a single company may fulfill multiple roles simultaneously, the legal and operational distinction between them is strict. Here is the structure and definition of this business role nomenclature:\r\n\r\n\r\n1. Commercial Roles (Financial-Legal Plan)\r\nThese roles are defined in the sales contract and govern who pays for and who owns the goods. \r\n\r\n-1.a)Seller (Vendor / Supplier / Exporter): \r\nDefinition: The entity that owns or produces the goods and transfers them in exchange for payment. \r\nResponsibility: Negotiates commercial terms, issues the commercial invoice, and transfers ownership. \r\n\r\n-1.b)Buyer (Customer / Importer):\r\nDefinition: The entity that purchases the goods and initiates the financial transaction. \r\nResponsibility: Makes payment according to contractual terms and assumes the risk for the goods at the agreed point. \r\n\r\n\r\n2. Logistics Roles(Operational Plan) These roles appear in transport documents (such as the Bill of Lading) and govern the physical movement of goods. \r\n\r\n-2.a)Shipper(Consignor): \r\nDefinition: The person or company physically and legally responsible for preparing and handing over the goods to the carrier. \r\nResponsibility: Packages the goods, correctly labels the cargo, obtains export licenses, and signs the contract of carriage. \r\n\r\n-2.b)Consignee: \r\nDefinition: The entity named in the transport documents as the party that will physically receive the goods at the destination. \r\nResponsibility: Unloads the goods, handles import customs clearance, and inspects the products.\r\n\r\nRole Overlap in Practice (Synchronization): \r\nThe relationship between these roles varies entirely depending on the Incoterms (International Commercial Terms) selected in the contract. \r\n[ Commercial Plan ]     SELLER  ──────────────────────────►  BUYER\r\n                             │                                     │\r\n                             ▼ (Who organizes the logistics?)      ▼\r\n[ Logistics Plan ]    SHIPPER  ──────────────────────────► CONSIGNEE\r\n\r\nScenario A (Seller = Shipper): Under terms such as CIF (Cost, Insurance, and Freight) or DDP (Delivered Duty Paid), the Seller assumes responsibility for organizing transport. In this case, the selling company is also the one listed as the Shipper on transport documents. \r\n\r\nScenario B (Seller ≠ Shipper): Under terms like EXW (Ex Works), the Seller merely makes the goods available at their factory gate. The Buyer engages a carrier or a freight forwarder. In this case, although the Seller sold the goods, the actual Shipper—from a logistics perspective—may be the Buyer\'s logistics agency. \r\n\r\nScenario C (Third-party fulfillment): A company (Seller) sells online, but the stock is held in an Amazon-style warehouse (3PL). The fulfillment company assumes the role of Shipper to physically prepare and send the package to the Buyer. \r\n\r\nIf implementing this nomenclature in an ERP or Supply Chain software system, it is essential that the database treats Seller/Buyer as business entities (Account/Contact) and Shipper/Consignee as addresses and roles specific to each shipment (Delivery/Shipping Nodes).'),
(1, 'SELLER', '1.a)Seller(Seller / Supplier / Exporter):\r\n--------------------------------------------------------\r\nRole-Type/Plane: 1.Commercial Role(Financial-Legal Plan)\r\nThese roles are defined in the sales contract and determine who pays for and who owns the goods.\r\n\r\nDefinition: The entity that owns or produces the goods and transfers them in exchange for a sum of money.\r\n\r\nResponsibility: Negotiates commercial terms, issues the commercial invoice, and transfers ownership.'),
(2, 'BUYER', '1.b)Buyer(Purchaser / Client / Importer): \r\n--------------------------------------------------------\r\nRole-Type/Plane: 1.Commercial Role(Financial-Legal Plan)\r\nThese roles are defined in the sales contract and determine who pays for and who owns the goods.\r\n\r\nDefinition: The entity that purchases the goods and initiates the financial transaction. \r\n\r\nResponsibility: Makes payment in accordance with contractual terms and assumes the risk for the goods at the agreed point.'),
(3, 'SHIPPER', '2.a)Shipper(Consignor): \r\n-----------------------------------------------------\r\nRole-Type/Plane: 2.Logistics Roles (Operational Plan)\r\nThese roles appear in transport documents (such as the bill of lading) and govern the physical movement.\r\n\r\nDefinition: The person or company physically and legally responsible for preparing and handing over the goods to the carrier. \r\n\r\nResponsibility: Packages the goods, correctly labels the cargo, obtains export licenses, and signs the transport contract.'),
(4, 'CONSIGNEE', '2.b)Consignee:\r\n-----------------------------------------------------\r\nRole-Type/Plane: 2.Logistics Roles (Operational Plan)\r\nThese roles appear in transport documents (such as the bill of lading) and govern the physical movement.\r\n\r\nDefinition: The entity named in the transport documents as the one that will physically receive the goods at the destination. \r\n\r\nResponsibility: Unloads the goods, carries out import customs clearance, and inspects the products.'),
(23, 'SELLER & SHIPPER(A.CIF/DDP)', 'Scenario A (Seller = Shipper): Under terms such as CIF (Cost, Insurance, and Freight) or DDP (Delivered Duty Paid), the seller assumes responsibility for arranging transport. In this case, the selling company is also the one listed as the Shipper on the transport documents.'),
(43, 'Carrier/Freight-Forwarder(B.Buyer\'s-Third-party Shipper: EXW)', 'Scenario B (Seller ≠ Shipper): Under EXW (Ex Works) terms, the Seller merely makes the goods available at their factory gate. The Buyer engages a carrier or a freight forwarder. In this case, although the Seller has sold the goods, the actual shipper—from a logistical standpoint—may effectively become the Buyer\'s logistics agency.'),
(53, 'Third-party Fulfillment(C.Seller\'s 3PL-WareHouse & Delivery & Shipper)', 'Scenario C (Third-party fulfillment): A company (Seller) sells online, but the inventory is held in an Amazon-style warehouse (3PL). The fulfillment company assumes the role of Shipper to physically prepare and ship the package to the Buyer.');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `assts_id` int(11) NOT NULL,
  `assts_name` varchar(254) NOT NULL,
  `assts_shortName` varchar(30) NOT NULL,
  `assts_comments` text NOT NULL,
  `agent_good_id` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`assts_id`, `assts_name`, `assts_shortName`, `assts_comments`, `agent_good_id`) VALUES
(-1, '- n/a -', '- ASSTS -', '[fixed-]asset(mijloace-fixe,imobilizari corporale si necorporale ...) comments', -1);

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `bank_id` int(11) NOT NULL,
  `optional_cmpny_ID` int(11) NOT NULL DEFAULT -1,
  `bank_name` varchar(254) NOT NULL,
  `bank_short_name` varchar(30) NOT NULL,
  `bank_comments` text NOT NULL,
  `agent_id` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='https://ro.wikipedia.org/wiki/Num%C4%83r_Interna%C8%9Bional_de_Cont_Bancar';

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`bank_id`, `optional_cmpny_ID`, `bank_name`, `bank_short_name`, `bank_comments`, `agent_id`) VALUES
(-1, -1, '- n/a -', 'Bank short-Name', 'Bank_comments\r\n-------------------\r\nhttps://ro.wikipedia.org/wiki/Num%C4%83r_Interna%C8%9Bional_de_Cont_Bancar\r\nhttps://www.bnr.ro/2179-ce-este-codul-iban\r\nhttps://suport.superbet.ro/hc/ro/articles/360000309609-Ce-sunt-codurile-IBAN-SWIFT-si-BIC\r\nhttps://info.openlane.eu/ro/help/faq/for-buyers/cost-payments/6-7-what-do-the-bank-codes-iban-bic-sepa-and-sha-mean/\r\nhttps://www.nn.ro/dictionar-financiar/iban-2\r\nhttps://www.bcr.ro/ro/news-hub/blog/noutati/ce-este-codul-iban--unde-il-gasesti-si-cand-ai-nevoie-de-el\r\n\r\n--------------------\r\nRef-by Field: optional_cmpny_id\r\n\r\nhttps://www.google.com/search?q=cate+CIF+si+CUI-uri+are+inregistrate+spre+exemplu+BNR%3F&sourceid=chrome&ie=UTF-8&amc=1&aep=42&cud=0&source=chrome.crn.rb&udm=50&mstk=AUtExfDCZhBSCEZ-USKdSJe79e64B9mh9_OnpRgoKShOjzRRBfaui-6lseU2Oawy-UtUyjFKHwM5PWQblExTAVGS5nFkdlXBnWwuxRbL6nzIaDrCy1U0UlOSzd6TgpzZOonkuQLziQYx4ramBrOxk5a0_w5e-X8ugR6PkbwLWS6HHB0Jtqx68Cwm1LSoxaPNg4aBFJ3gckPHFLzrlWLbS6WDZKbX83_WU2pcSuTGoMdadWTQSxMBOf8D2JzqRQ5b_sxowEl-JML0nKJPPhhW5oKIUm1Krn95JJ-j_0o&csuir=1&mtid=ZXtkaty4FLLPwPAPw8qVqQ4\r\n\r\n---------------------------------------\r\nRef-by Field: optional_cmpny_id\r\n\r\ncate CIF si CUI-uri are inregistrate spre exemplu BNR?Banca Națională a României are înregistrat un singur cod unic, deoarece în legislația fiscală din România, CUI-ul (Codul Unic de Înregistrare) și CIF-ul (Codul de Identificare Fiscală) reprezintă exact același număr identificator pentru o entitate juridică.Diferența de denumire este pur tehnică:CUI este denumirea codului generat la înregistrare.CIF este denumirea utilizată de ANAF pentru evidența fiscală.Datele de identificare ale BNRCUI / CIF principal: 361684Atribut fiscal (pentru TVA): În momentul în care o instituție este plătitoare de TVA, codul primește prefixul „RO” (devenind RO361684).Excepții și entități conexeDeși instituția-mamă (Banca Națională a României) are un singur cod, aceasta deține regii sau entități subordonate care funcționează cu personalitate juridică proprie și, prin urmare, au coduri fiscale separate.Un exemplu clar este Imprimeria Băncii Naționale a României R.A., care are propriul său cod de identificare:CIF Imprimeria BNR: 361242Sucursalele regionale ale BNR (cum sunt cele din Cluj, Timiș, Iași sau Constanța) utilizează codul fiscal central al instituției (361684), nefiind entități juridice independente.Dacă dorești, te pot ajuta cu:Verificarea stării de plătitor de TVA sau a istoricului fiscal pentru BNR.Procedura prin care o instituție publică își înființează sedii secundare (puncte de lucru) și dacă acestea primesc coduri fiscale proprii (CIF-uri de organizare).', -1),
(0, -1, 'BANCILE-Romaniei', 'BANCI-RO', 'Bancile Romanesti sau Bancilke din(cu sediul in) Romania', -1),
(1, -1, 'Banca Nationala a Romaniei', 'BNR', 'Banca Centrala/Nationala a Romaniei(BNR)', 6);

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `ba_id` int(11) NOT NULL,
  `ba_bank_account_no` varchar(254) NOT NULL,
  `bankAdmin_Agent_Good_id` int(11) NOT NULL DEFAULT -1,
  `IBAN_code` varchar(254) NOT NULL DEFAULT '''-1''' COMMENT 'https://info.openlane.eu/ro/help/faq/for-buyers/cost-payments/6-7-what-do-the-bank-codes-iban-bic-sepa-and-sha-mean/',
  `BIC_SWIFT` varchar(254) NOT NULL DEFAULT '''-1''' COMMENT 'https://info.openlane.eu/ro/help/faq/for-buyers/cost-payments/6-7-what-do-the-bank-codes-iban-bic-sepa-and-sha-mean/',
  `ba_comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`ba_id`, `ba_bank_account_no`, `bankAdmin_Agent_Good_id`, `IBAN_code`, `BIC_SWIFT`, `ba_comments`) VALUES
(-1, '- n/a -', -1, '', '', 'financial assets: Bank-account');

-- --------------------------------------------------------

--
-- Table structure for table `Cods`
--

CREATE TABLE `Cods` (
  `cd_id` int(11) NOT NULL,
  `cd_COD` varchar(30) NOT NULL,
  `cd_Codification_Published_Name` varchar(254) NOT NULL,
  `cd_comments` text NOT NULL,
  `stanrd_Doc_id` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='nomenclature/codifications -details/articles';

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `company_id` int(11) NOT NULL,
  `company_secured_Unique_CID_nationalRegistered` varbinary(254) NOT NULL COMMENT 'CID=AES128(''cheia secreta'', CID~CIF_CUI/CIF);\r\n\r\nSunt incluse in companii/firme si PFA-urile',
  `company_name` varchar(254) NOT NULL,
  `company_shortName` varchar(30) NOT NULL COMMENT 'abrev,acronyme,short-name,...',
  `company_comments` text NOT NULL,
  `agent_id` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`company_id`, `company_secured_Unique_CID_nationalRegistered`, `company_name`, `company_shortName`, `company_comments`, `agent_id`) VALUES
(-1, '', 'Company(JP)- Name', '- COMPANY - ', 'Company(JP)- Comments', -1);

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `contract_id` int(11) NOT NULL,
  `contract_type` enum('- n/a -','contract','offer','request_for_offer','order','eFactura','eInvoice') NOT NULL DEFAULT '- n/a -' COMMENT 'aceasta este o clasificare grosiera orientativa(categorii mari/tipuri de docuemente)',
  `standard_template_form_id` int(11) NOT NULL DEFAULT -1 COMMENT 'NDTF',
  `document_shortName` varchar(30) NOT NULL,
  `contract_serial_no` varchar(11) NOT NULL,
  `contract_no` varchar(254) NOT NULL,
  `contract_date` date NOT NULL COMMENT 'document data elaboration',
  `contract_data_begin` date NOT NULL,
  `contract_data_end` date NOT NULL COMMENT '0000-00-00 data neprecizata/necunoscuta',
  `contract_comments` text NOT NULL,
  `document_next_ik` int(11) NOT NULL DEFAULT -1,
  `document_previous_ik` int(11) NOT NULL DEFAULT -1,
  `document_currency_id` int(11) NOT NULL DEFAULT -1,
  `document_count_of_parts` int(11) NOT NULL DEFAULT -1,
  `document_count_of_articles` int(11) NOT NULL DEFAULT -1,
  `agent_good_id` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contracts`
--

INSERT INTO `contracts` (`contract_id`, `contract_type`, `standard_template_form_id`, `document_shortName`, `contract_serial_no`, `contract_no`, `contract_date`, `contract_data_begin`, `contract_data_end`, `contract_comments`, `document_next_ik`, `document_previous_ik`, `document_currency_id`, `document_count_of_parts`, `document_count_of_articles`, `agent_good_id`) VALUES
(-1, '- n/a -', -1, '- DOCUMENT -', '-1', '-1', '0000-00-00', '0000-00-00', '0000-00-00', '-agreement/contract\r\n-offer\r\n-request_for_offer\r\n-order\r\n\r\ncomments', -1, -1, -1, -1, -1, -1);

-- --------------------------------------------------------

--
-- Table structure for table `contract_goods`
--

CREATE TABLE `contract_goods` (
  `cg_id` int(11) NOT NULL,
  `cg_name` varchar(254) NOT NULL,
  `agent_good_id` int(11) NOT NULL DEFAULT -1,
  `quantity or total_value` double NOT NULL COMMENT 'if agent is buyer -onethen use price_list_id.unity_unit_price * quantity=total_valu(amount_calculated)',
  `optional_price_id` int(11) NOT NULL DEFAULT -1 COMMENT 'only for currency-ingredient',
  `um_delivery_seller_agent_good_id` int(11) NOT NULL DEFAULT -1,
  `contract_agent_role_id` int(11) NOT NULL COMMENT 'contract-id',
  `agent_buyer_good_currency_id` int(11) DEFAULT -1,
  `cg_comments` text NOT NULL,
  `contract_id` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='receipt/reteta(exchange included because have 2 nodes/agents in transaction=receipt)';

--
-- Dumping data for table `contract_goods`
--

INSERT INTO `contract_goods` (`cg_id`, `cg_name`, `agent_good_id`, `quantity or total_value`, `optional_price_id`, `um_delivery_seller_agent_good_id`, `contract_agent_role_id`, `agent_buyer_good_currency_id`, `cg_comments`, `contract_id`) VALUES
(1, '- n/a -', -1, 0, -1, -1, -1, -1, 'Contract-resources/goods/Orders\r\n\r\nsub-set of/from agent-goods/resources:\r\n\r\nhttps://www.scribd.com/doc/43925087/Clasificarea-Activelor-Si-a-Pasivelor', -1);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `crncy_id` int(11) NOT NULL,
  `crncy_name` varchar(254) NOT NULL,
  `crncy_short_name` varchar(3) NOT NULL,
  `crncy_symbol` varchar(1) NOT NULL,
  `crncy_comments` text NOT NULL,
  `agent_good_id` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='nomenclature/[de]nomination of money(physical-coin/bank-note)';

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`crncy_id`, `crncy_name`, `crncy_short_name`, `crncy_symbol`, `crncy_comments`, `agent_good_id`) VALUES
(-1, 'Currency-Name', 'cod', '-', '', -1),
(0, 'Leul romanesc(romanian nomination)', 'RON', 'L', '', -1),
(1, 'United-States Dollar', 'USD', '$', 'https://en.wikipedia.org/wiki/United_States_dollar', -1),
(2, 'European Currency', 'EUR', '€', 'https://en.wikipedia.org/wiki/Euro', -1);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `depart_id` int(11) NOT NULL,
  `depart_name` varchar(254) NOT NULL,
  `depart_shortName` varchar(30) NOT NULL,
  `depart_comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`depart_id`, `depart_name`, `depart_shortName`, `depart_comments`) VALUES
(-1, '-n/a -', '-DEPART-', 'Nomenclator Departamente de Companii,Instututii... de Agenti in general'),
(1, 'Accounting ', '-ACCNTNG-', 'Accounting Department comments');

-- --------------------------------------------------------

--
-- Table structure for table `institutions_state`
--

CREATE TABLE `institutions_state` (
  `is_id` int(11) NOT NULL,
  `optional_company_ID` int(11) NOT NULL DEFAULT -1,
  `is_name` varchar(254) NOT NULL,
  `is_shortName` varchar(30) NOT NULL,
  `is_comments` text NOT NULL,
  `agent_id` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='alte institutii ale statului nebancare si nefinanciare';

--
-- Dumping data for table `institutions_state`
--

INSERT INTO `institutions_state` (`is_id`, `optional_company_ID`, `is_name`, `is_shortName`, `is_comments`, `agent_id`) VALUES
(-1, -1, '- n/a -', '- IS -', 'State-Institutions', -1),
(0, -1, 'Statul-Roman', 'RO-state', 'Statul Roman\r\ndenumire: Romania\r\nrepublică semiprezidențială, , cu un executiv împărțit între președinte și prim-ministru.', -1),
(1, -1, 'Presedentia Romaniei', 'AP-RO', 'Presedentia Romaniei condusa de Presedintele Romaniei\r\nsee URLs:\r\nfor e.g. https://www.presidency.ro/', 1),
(2, -1, 'Parlamentul Romaniei', 'PRO', 'Parlamentul National al Romaniei condus de Presedintele Senatului si de Presedintele Camerei Deputatilor(copresedinte)\r\n', 2),
(3, -1, 'Senatul Romaniei', 'SEN-RO', 'Senatul Romaniei din Parlamentul National al Romaniei', 3),
(4, -1, 'Camera Deputatilor a Romaniei', 'CD-RO', 'Camera Deputatilor din Parlamentul National al Romaniei', 4),
(5, -1, 'Guvernul Romaniei', 'GOV-RO', 'Guvernul Romaniei condus de Premierul Romaniei\r\n', 5),
(6, -1, 'Agenția Națională de Administrare Fiscală din Romania(ANAF)', 'ANAF-GOV-RO', 'Agenția Națională de Administrare Fiscală din Romania(ANAF)\r\nsee URLS:\r\nfor e.g.: https://ro.wikipedia.org/wiki/Agen%C8%9Bia_Na%C8%9Bional%C4%83_de_Administrare_Fiscal%C4%83', -1);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `incntry_id` int(11) NOT NULL,
  `incntry_name` varchar(254) NOT NULL,
  `incntry_shortName` varchar(254) NOT NULL,
  `incntry_comments` text NOT NULL,
  `agent_good_id` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`incntry_id`, `incntry_name`, `incntry_shortName`, `incntry_comments`, `agent_good_id`) VALUES
(-1, '- n/a - ', '- INCNTRY -', 'Inventory-Items(Obiecte de Inventar) comments', -1);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `lctn_id` int(11) NOT NULL,
  `lctn_name` varchar(254) NOT NULL,
  `lctn_main_postal_address` text NOT NULL,
  `lctn_comments` text NOT NULL,
  `lctn_postal_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='parcels: gospodarii/fanete...';

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`lctn_id`, `lctn_name`, `lctn_main_postal_address`, `lctn_comments`, `lctn_postal_address`) VALUES
(-1, '- n/a -', '', 'locations for delivery or for processing the contracts/order', '');

-- --------------------------------------------------------

--
-- Table structure for table `non_bank_ifn`
--

CREATE TABLE `non_bank_ifn` (
  `nb_id` int(11) NOT NULL,
  `optional_company_ID` int(11) NOT NULL DEFAULT -1,
  `nb_name` varchar(254) NOT NULL,
  `nb_shortName` varchar(30) NOT NULL,
  `nb_comments` text NOT NULL,
  `agent_id` int(11) NOT NULL DEFAULT -1 COMMENT 'IFN,burse,...tot ce supravegheaza BNR(IFN-uri,....) dar/precum si ASF(burse:BVB,BRM,...;...)\r\ndoar din sectorul privat( pt ca institutiile publice/statului sunt inregistrate in alta tabela);\r\nAici sunt prinse in general cele ce practica/se afla in serviciul-UNUVERSAL la fel/ ca si cum ar fi o institutie a statului/publica!'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `non_bank_ifn`
--

INSERT INTO `non_bank_ifn` (`nb_id`, `optional_company_ID`, `nb_name`, `nb_shortName`, `nb_comments`, `agent_id`) VALUES
(-1, -1, '- n/a - ', '- NB/IFN -', 'Non-Bank Financial Institution\r\ncomments\r\n\r\n---------------------------------\r\nRef-By Field: optional_company_ID\r\n\r\nAI NEVOIE SA INREGISTREZI SI COMPANIA doar daca ai tranzactii economice/financiare gen vanzare-cumparare de bunuri(goods):\r\n\r\ncine suipravegheaza burseleÎn România, bursele de valori sunt supravegheate de Autoritatea de Supraveghere Financiară (ASF). La nivel global, fiecare țară are o instituție guvernamentală dedicată reglementării piețelor de capital.Cine asigură supravegherea în funcție de zonăÎn România: ASF controlează Bursa de Valori București (BVB), brokerii și companiile listate.În Statele Unite: Securities and Exchange Commission (SEC) reglementează giganți precum NYSE și NASDAQ.În Uniunea Europeană: ESMA (Autoritatea Europeană pentru Valori Mobiliare și Piețe) coordonează regulile la nivelul UE.Bursele de mărfuri: În România, acestea sunt monitorizate de Camera de Comerț și Industrie (CCIR).Ce rol au aceste instituțiiProtejează investitorii împotriva fraudelor.Previn manipularea pieței și utilizarea informațiilor confidențiale (insider trading).Autorizează intermediarii (brokerii) care au voie să tranzacționeze.Obligă companiile să publice rapoarte financiare corecte.(Notă: Dacă te refereai la bursele școlare sau universitare, acestea sunt gestionate de Ministerul Educației, prin secretariatele școlilor și universităților).Vrei să afli cum poți verifica dacă un broker este autorizat de ASF sau ai nevoie de detalii despre o anumită bursă din străinătate?\r\n---------------------------------------\r\nI IFN-URILE CINE LE SUPRAVEGHEAZA?În România, Instituțiile Financiare Nebancare (IFN-urile) sunt reglementate și supravegheate de Banca Națională a României (BNR).În plus, anumite aspecte din activitatea lor sunt verificate și de alte autorități ale statului.Cine și ce controlează la IFN-uriBanca Națională a României (BNR):Monitorizează stabilitatea financiară a IFN-urilor.Gestionează Registrul General și Registrul Special al IFN-urilor.Stabilește regulile de creditare și nivelul de capital necesar.Impune plafoane pentru dobânzi (conform legislației privind camătă și creditarea).Autoritatea Națională pentru Protecția Consumatorilor (ANPC):Verifică respectarea drepturilor clienților persoane fizice.Sancționează clauzele abuzive din contractele de credit.Controlează corectitudinea calculului Dobânzii Anuale Efective (DAE).Oficiul Național de Prevenire și Combatere a Spălării Banilor (ONPCSB):Supraveghează IFN-urile pentru prevenirea spălării banilor.Verifică raportarea tranzacțiilor suspecte sau cash de mari dimensiuni.Tipuri de registre BNR pentru IFN-uriRegistrul General: Include toate IFN-urile legale, supravegheate simplificat.Registrul Special: Include IFN-urile mari, monitorizate strict, similar băncilor.Dorești să verifici dacă un anumit IFN este înscris în registrul oficial al BNR sau ai nevoie de ajutor pentru o reclamație privind un contract de credit?\r\n', -1);

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `prs_id` int(11) NOT NULL,
  `prs_secured_Personal_ID_Code_NationalRegistered` varbinary(254) NOT NULL COMMENT 'for e.g. GDDPR-CNP(RO)',
  `prs_secured_name` varbinary(254) NOT NULL,
  `prs_unsecured_nick_name` varchar(254) NOT NULL,
  `prs_shortName` varchar(30) NOT NULL,
  `prs_comments` text NOT NULL,
  `agent_id` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='avand cetatenii obtinute si nationalitati/etnii declarate';

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`prs_id`, `prs_secured_Personal_ID_Code_NationalRegistered`, `prs_secured_name`, `prs_unsecured_nick_name`, `prs_shortName`, `prs_comments`, `agent_id`) VALUES
(-1, 0x7bff4555cb3abec2ae42f02e13098309, 0xa8b2802157aaa7db3ab45eef92637dae, '- N/A -', '- PRS -', 'Person(PP) - Comments\r\nAnumite_date trebuiesc sa aiba anonimizare/pseudonimizare cf Regulamentului GDPR (Articolul 32):\r\n\r\nce algorithm de [de]codificare pot folosi pt gddprPentru a proteja datele cu caracter personal în conformitate cu GDPR, nu se folosește un singur algoritm, ci o combinație de metode de criptare și anonimizare/pseudonimizare. Regulamentul GDPR (Articolul 32) cere tehnologii sigure, fără a impune un algoritm specific, deoarece tehnologia evoluează.Iată cei mai siguri și utilizați algoritmi standard în industrie:1. Criptare Simetrică (Pentru stocare de date / Data at Rest)Se folosește aceeași cheie atât pentru codificare (criptare), cât și pentru decodificare (decriptare). Este ideală pentru baze de date și fișiere locale.AES-256 (Advanced Encryption Standard): Standardul de aur global. Este considerat militar și imposibil de spart prin atacuri de tip forță brută în prezent.ChaCha20: O alternativă excelentă și rapidă, folosită des în medii mobile sau acolo unde hardware-ul nu are optimizare dedicată pentru AES.2. Criptare Asimetrică (Pentru transfer de date / Data in Transit)Folosește o cheie publică pentru codificare și o cheie privată pentru decodificare. Este ideală pentru trimiterea securizată de date între două părți.RSA (minim 2048 sau 4096 biți): Cel mai răspândit algoritm pentru schimbul de chei și semnături digitale.ECC (Elliptic Curve Cryptography): Mai nou și mai eficient decât RSA. Oferă aceeași securitate ca RSA, dar cu chei mult mai mici, fiind ideal pentru conexiuni web rapide (TLS/HTTPS).3. Hash-uire și Salt (Pentru parole și identificatori unici)Algoritmii de tip hash sunt unidirecționali (doar codifică, nu se pot decodifica). Sunt obligatorii pentru stocarea parolelor. GDPR cere adăugarea unui „salt” (valoare aleatorie adăugată parolei înainte de hash-uire) pentru a preveni atacurile cu tabele precalculate.Argon2id: Câștigătorul competiției de hashing pentru parole, considerat cel mai sigur împotriva atacurilor hardware (GPU/ASIC).bcrypt / scrypt: Alternative foarte sigure și intens testate în timp.Notă de siguranță: NU folosiți MD5 sau SHA-1, deoarece sunt considerați algoritmi sparți și vulnerabili.Recomandarea practică pentru implementareScenariu de utilizareSoluția tehnică recomandatăBaza de date cu cliențiCriptare pe coloane folosind AES-256Parolele utilizatorilorHash-uire folosind Argon2id sau bcryptTransfer de fișiere / APIProtocolul TLS 1.3 (care folosește intern ECC și AES)Dacă doriți să trecem la implementarea practică, vă pot ajuta în mod direct. Îmi puteți spune în ce limbaj de programare (ex. Python, PHP, Java) lucrați sau ce tip de date (baze de date SQL, fișiere PDF, ID-uri de utilizatori) doriți să securizați?Răspunsurile de la AI pot include greșeli. Pentru consiliere juridică, consultă un profesionist. Află mai multepai da dar nu poate fi ca la parole one-way...cred ca pt GDDPR trebuie totusi 2-ways? nu?Aveți perfectă dreptate și intuiția dumneavoastră tehnică este corectă: pentru majoritatea datelor de identificare (nume, CNP, adresă), aveți nevoie de un algoritm two-way (bidirecțional), deoarece aplicația trebuie să și citească (să decodifice) acele date pentru a le folosi.Confuzia generală pleacă de la modul în care textul legii GDPR împarte datele în două categorii de protecție: Pseudonimizare și Anonimizare.De ce aveți nevoie de ambele (Two-Way și One-Way)GDPR cere strategii diferite în funcție de scopul datelor:1. Date operaționale (Nume, Telefon, Email, CNP) \\(\\rightarrow \\) Two-Way (Criptare)Cum funcționează: Datele sunt codificate în baza de date, dar pot fi decodificate folosind o cheie secretă atunci când operatorul trimite un colet sau emite o factură.Algoritm recomandat: AES-256.Statut GDPR: Se numește Pseudonimizare. Datele sunt protejate în caz de furt (fără cheie sunt inutile), dar rămân sub incidența GDPR deoarece pot fi reconstituite.2. Date de autentificare (Parole) \\(\\rightarrow \\) One-Way (Hash-uire)Cum funcționează: Nimeni (nici măcar administratorul bazei de date) nu trebuie să știe parola în clar. Când utilizatorul se loghează, sistemul face hash parolei introduse și o compară cu hash-ul stocat.Algoritm recomandat: Argon2id sau bcrypt.Statut GDPR: Obligatoriu pentru parole, deoarece decodificarea lor constituie o vulnerabilitate majoră de securitate.3. Date pentru statistici și analize \\(\\rightarrow \\) One-Way definitiv (Anonimizare)Cum funcționează: Dacă vreți să vedeți câți utilizatori au cumpărat un produs, transformați ID-ul de client într-un identificator ireversibil.Statut GDPR: Datele anonimizate complet (care nu mai pot fi decodificate niciodată prin nicio metodă) ies de sub incidența GDPR.Cum se aplică corect schema Two-Way (Criptarea)Dacă doriți să implementați criptarea bidirecțională (Two-Way) pentru a fi conform GDPR, secretul nu stă doar în algoritm (AES-256), ci în managementul cheilor de criptare:Izolarea cheii: Nu stocați cheia de criptare în aceeași bază de date cu datele criptate. Dacă baza de date este spartă, atacatorul va avea și datele, și cheia.Stocare sigură: Cheia trebuie ținută în fișiere de configurare securizate de pe server (variabile de mediu) sau într-un serviciu dedicat de management al cheilor (KMS).\r\n----------------------------------------\r\nmd nu este bun?Nu, algoritmii din familia MD (cum ar fi MD5) nu mai sunt buni și sunt interziși pentru utilizarea în conformitate cu GDPR.Deși MD5 este un algoritm de tip one-way (hash), el este complet nesigur din două motive tehnice majore:1. Este vulnerabil la coliziuni (Broken Algorithm)Matematicienii și hackerii au demonstrat că se pot genera două texte complet diferite care să producă exact același hash MD5.Acest lucru permite atacatorilor să falsifice semnături digitale sau să păcălească sistemele de autentificare.2. Este extrem de rapid (Vulnerabil la Brute Force)MD5 a fost proiectat în 1991 pentru a fi rapid. Astăzi, plăcile video moderne (GPU) pot calcula miliarde de hash-uri MD5 pe secundă.Dacă o bază de date cu hash-uri MD5 este furată, atacatorii pot afla parolele originale în doar câteva minute prin atacuri de tip forță brută sau folosind tabele precalculate (Rainbow Tables).Ce spune GDPR despre MD5?Regulamentul cere utilizarea stadiului actual al tehnologiei („state of the art”). Autoritățile de protecție a datelor (inclusiv ANSPDCP în România) consideră utilizarea MD5 pentru protecția datelor personale ca fiind o neglijență gravă, deoarece algoritmul este declarat oficial „spart” (deprecat) de mulți ani.Cu ce trebuie să înlocuiți MD?Dacă aveți nevoie de un identificator one-way rapid (dar nu pentru parole), folosiți SHA-256 sau SHA-3.Dacă aveți nevoie de securitate pentru parole, folosiți Argon2id sau bcrypt.Dacă aveți nevoie de o soluție two-way (cum discutam anterior), folosiți AES-256.Dacă aveți deja un sistem vechi care folosește MD5, vă pot ajuta cu o strategie de migrare securizată a datelor către un algoritm modern, fără ca utilizatorii să își piardă parolele sau accesul. Doriți să vedem cum se face această trecere în cod?', -1),
(1, 0x50b79d751b36ff6fdc119a780132637bdb9388496291509644a6b8fdffdd9ac2, 0xf7f6dc187e0f2923b2038f4bb9a6813a, 'Barosanu\'', 'IS', 'Dl.IS\r\n\r\nview agent-URLS: for e.g. https://www.linkedin.com/in/ion-stefanache-96b64489/', -1);

-- --------------------------------------------------------

--
-- Table structure for table `PL_Prices`
--

CREATE TABLE `PL_Prices` (
  `plp_id` int(11) NOT NULL,
  `seller_PL_price_list_id` int(11) NOT NULL COMMENT '-1 means without document-offer but shown ad-hoc on the shelf',
  `seller_agent_good_ik` int(11) NOT NULL DEFAULT -1 COMMENT '-1 means unknown seller',
  `plp_unitar_price_exchange` double NOT NULL,
  `umForPL_seller_agent_good_id` int(11) NOT NULL DEFAULT -1 COMMENT 'unit for price of \r\nseller''s good',
  `plp_comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PL_Prices`
--

INSERT INTO `PL_Prices` (`plp_id`, `seller_PL_price_list_id`, `seller_agent_good_ik`, `plp_unitar_price_exchange`, `umForPL_seller_agent_good_id`, `plp_comments`) VALUES
(-1, -1, -1, -1, -1, 'Price-Amount for Agent\'s-Good');

-- --------------------------------------------------------

--
-- Table structure for table `Price_Lists`
--

CREATE TABLE `Price_Lists` (
  `pl_id` int(11) NOT NULL,
  `pl_type` enum('- n/a -','Lista de preturi practica de un agent pt orice cumparator de bun','Lista dedicata de preturi practicata de un agent pt un singur cumparator de bun','tarif taxa-vamala','taxa_valorica','taxa-procentuala per tranzactie bunindex-valutar','comision-agent valoric','comision-agent procent per tranzactie bun/index-valutar') NOT NULL DEFAULT '- n/a -',
  `agent_good_sellerGood_id` int(11) NOT NULL DEFAULT -1,
  `agent_good_buyerCurrency_id` int(11) NOT NULL DEFAULT -1 COMMENT '-1 means for all buyer not only one',
  `pl_name` varchar(254) NOT NULL,
  `pl_comments` text NOT NULL,
  `pl_opt_doc_serial_no` varchar(11) NOT NULL COMMENT 'optionally serial-no document if Price list is viewed as document and not extracted from unknown sourced',
  `pl_opt_doc_no` varchar(254) NOT NULL,
  `pl_opt_doc_date` date NOT NULL,
  `pl_begin_date` date NOT NULL DEFAULT '0000-00-00',
  `pl_end_date` date NOT NULL DEFAULT '0000-00-00',
  `pl_chain_previous_ik` int(11) NOT NULL DEFAULT -1,
  `pl_chain_next_ik` int(11) NOT NULL DEFAULT -1,
  `agent_good_Seller_PLdoc_id` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Price_Lists`
--

INSERT INTO `Price_Lists` (`pl_id`, `pl_type`, `agent_good_sellerGood_id`, `agent_good_buyerCurrency_id`, `pl_name`, `pl_comments`, `pl_opt_doc_serial_no`, `pl_opt_doc_no`, `pl_opt_doc_date`, `pl_begin_date`, `pl_end_date`, `pl_chain_previous_ik`, `pl_chain_next_ik`, `agent_good_Seller_PLdoc_id`) VALUES
(-1, '- n/a -', -1, -1, '- n/a -', 'Prices-List in Currency (per unit of agent-good) for one single AgentBuyer xor for all AgentBuyers, practiced by this seller, within a certain period of time. ', '- n/a -', '- n/a -', '0000-00-00', '0000-00-00', '0000-00-00', -1, -1, -1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prdct_id` int(11) NOT NULL,
  `prdct_name` varchar(254) NOT NULL,
  `prdct_shortName` varchar(30) NOT NULL,
  `prdct_comments` text NOT NULL,
  `agent_good_id` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prdct_id`, `prdct_name`, `prdct_shortName`, `prdct_comments`, `agent_good_id`) VALUES
(-1, '- n/a -', '- PRDCT -', 'products(marfuri) comments', -1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `srvc_id` int(11) NOT NULL,
  `srvc_name` varchar(254) NOT NULL,
  `srvc_shortName` varchar(30) NOT NULL,
  `srvc_comments` text NOT NULL,
  `agent_good_id` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`srvc_id`, `srvc_name`, `srvc_shortName`, `srvc_comments`, `agent_good_id`) VALUES
(-1, ' - n/a -', '- SRVC -', 'service comments', -1);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `stff_id` int(11) NOT NULL,
  `stff_name` varchar(254) NOT NULL,
  `stff_comments` text NOT NULL,
  `agent_good_person_id` int(11) NOT NULL DEFAULT -1,
  `agent_good_company_id` int(11) NOT NULL DEFAULT -1,
  `stff_linkedin_previous_ik` int(11) NOT NULL DEFAULT -1,
  `stff_linkedin_next_ik` int(11) NOT NULL DEFAULT -1,
  `stff_hired_person_company_linkedin_URL` text NOT NULL,
  `stff_URL_linkedin_staff_role_agent_id` int(11) NOT NULL DEFAULT -1,
  `stff_hired_company_linkedin_employment_registered_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`stff_id`, `stff_name`, `stff_comments`, `agent_good_person_id`, `agent_good_company_id`, `stff_linkedin_previous_ik`, `stff_linkedin_next_ik`, `stff_hired_person_company_linkedin_URL`, `stff_URL_linkedin_staff_role_agent_id`, `stff_hired_company_linkedin_employment_registered_date`) VALUES
(-1, '- n/a-', 'Staff(company-Person) - comments', -1, -1, -1, -1, 'https://www.linkedin.com/in/ion-stefanache-96b64489/', -1, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `standards`
--

CREATE TABLE `standards` (
  `stdrd_id` int(11) NOT NULL,
  `stdrd_type` enum('-n/a-','standard','nomenclature','guide','protocol') NOT NULL DEFAULT '-n/a-',
  `stdrd_Editor` varchar(254) NOT NULL,
  `optional_Agent_Editor_id` int(11) NOT NULL DEFAULT -1,
  `optional_agent_good_id` int(11) NOT NULL DEFAULT -1,
  `stdrd_name` varchar(254) NOT NULL,
  `stdrd_shortName` varchar(30) NOT NULL,
  `stdrd_comments` text NOT NULL,
  `downloadURL_id` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='https://www.anaf.ro/anaf/internet/ANAF/asistenta_contribuabili/servicii_oferite_contribuabililor/ghiduri_curente/';

--
-- Dumping data for table `standards`
--

INSERT INTO `standards` (`stdrd_id`, `stdrd_type`, `stdrd_Editor`, `optional_Agent_Editor_id`, `optional_agent_good_id`, `stdrd_name`, `stdrd_shortName`, `stdrd_comments`, `downloadURL_id`) VALUES
(-1, '-n/a-', '', -1, -1, '- n/a -', '- STDRD -', 'standardizari,tipizari,codificari,liste,...,nomenclatoare de standardizari/tipizari,...\r\n\r\n-Npmenclatorul(o lista doar de nume nu si de alte caracteristici care il recomanda sa aiba/in afara de - numele/denumirea artificial/aleasa care-l defineste/nominalizeaza) si care o primeste la momentul genezei/aparitiei intr-o multime', -1),
(1, 'protocol', '', -1, -1, 'Hypertext Transfer Protocol Secure \r\n(HTTPS)', 'HTTPS', 'HTTPS: web-sending data secured protocol\r\nsee URLS\r\nhttps://en.wikipedia.org/wiki/HTTPS', -1),
(2, 'protocol', '', -1, -1, ' Hypertext Transfer Protocol (HTTP)', 'HTTP', 'HTTP: web-sending data unsecured protocol', -1),
(3, 'standard', '', -1, -1, 'XML Schema Definition(XSD)', 'XSD', 'XML Schema Definition(XSD) formely is XML Schema (W3C)\r\nsee URLs\r\nhttps://en.wikipedia.org/wiki/XML_Schema_(W3C)', -1),
(4, 'standard', '', -1, -1, 'Extensible Markup Language(XML)', 'XML', 'Extensible Markup Language(XML)\r\nsee URLs:\r\nhttps://en.wikipedia.org/wiki/XML', -1),
(5, 'standard', 'OASIS', -1, -1, 'Universal Business Language (UBL)', 'UBL', 'Universal Business Language (UBL)\r\n------------------------------------\r\nUBL 2.1 (Universal Business Language), definit de OASIS\r\n-------------------------------------\r\nsee URLS\r\nhttps://en.wikipedia.org/wiki/Universal_Business_Language', -1),
(6, 'standard', '', -1, -1, 'Electronic-Invoice(eInvoice)', 'eInvoice(EU)', 'Electronic-Invoice(eInvoice)\r\nsee URLs\r\nfor e.g. https://en.wikipedia.org/wiki/Electronic_invoicing', -1),
(7, 'standard', 'ANAF', 7, 7, 'Factura electronica', 'eFactura(RO)', 'Factura electronica(ANAF-GOV-RO) comments\r\n---------------------------------\r\nsee agent_good\'s URLs:\r\nfor e.g.:\r\n\r\nhttps://mfinante.gov.ro/web/efactura/aplicatii-web-ro-efactura\r\n\r\nhttps://www.anaf.ro/anaf/internet/ANAF/servicii_online/registre/registrul_eFactura/!ut/p/a1/hc49D4IwEAbg38LAyh2SAnHDGCnEQRwUuhgwtWCAklLh7ws6afy47b08b-6AQQqszYdK5LqSbV7PmbknalOXLvxFjI7vYeId1uEmIjaiO4FsAvhlAvzXPwJ7IzRBTMgq2pNwhzN5gh8nYmCilsXj3SxoC8cXwBS_cMWVdVPTutS665cmmjiOoyWkFDW3zrIx8VOllL2G9FVC16R4JfWwDQzjDvsTcbw!/dl5/d5/L2dBISEvZ0FBIS9nQSEh/\r\n\r\nhttps://static.anaf.ro/static/10/Anaf/AsistentaContribuabili_r/CARTA_CONTRIBUABILULUI_10032010.pdf\r\n\r\nhttps://mfinante.gov.ro/web/efactura\r\n\r\n---------------------------------------\r\nda-mi exemplu de un fisier UBLMai jos găsești un exemplu complet și valid de fișier XML în format UBL 2.1 (Universal Business Language), structurat conform standardului european utilizat și în sistemul RO e-Factura ANAF.Acest exemplu simplificat reprezintă o factură emisă de o firmă din România către un client tot din România, pentru un serviciu cu cota standard de TVA de 19%.xml<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Invoice xmlns=\"urn:oasis:names:specification:ubl:schema:xsd:Invoice-2\"\r\n         xmlns:cac=\"urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2\"\r\n         xmlns:cbc=\"urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2\">\r\n    <!-- Structură simplificată UBL 2.1 pentru RO e-Factura -->\r\n    <cbc:CustomizationID>urn:cen.eu:en16931:2017#compliant#urn:efactura.mfinante.ro:CIUS:v1.0.8</cbc:CustomizationID>\r\n    <cbc:ID>FACT20260001</cbc:ID>\r\n    <cbc:IssueDate>2026-07-25</cbc:IssueDate>\r\n    <cbc:DocumentCurrencyCode>RON</cbc:DocumentCurrencyCode>\r\n    \r\n    <cac:AccountingSupplierParty>\r\n        <cac:Party><cac:PartyTaxScheme><cbc:CompanyID>RO12345678</cbc:CompanyID><cac:TaxScheme><cbc:ID>VAT</cbc:ID></cac:TaxScheme></cac:PartyTaxScheme>\r\n        <cac:PartyLegalEntity><cbc:RegistrationName>Firma Mea SRL</cbc:RegistrationName></cac:PartyLegalEntity></cac:Party>\r\n    </cac:AccountingSupplierParty>\r\n    \r\n    <cac:AccountingCustomerParty>\r\n        <cac:Party><cac:PartyTaxScheme><cbc:CompanyID>RO87654321</cbc:CompanyID><cac:TaxScheme><cbc:ID>VAT</cbc:ID></cac:TaxScheme></cac:PartyTaxScheme>\r\n        <cac:PartyLegalEntity><cbc:RegistrationName>Clientul Meu SRL</cbc:RegistrationName></cac:PartyLegalEntity></cac:Party>\r\n    </cac:AccountingCustomerParty>\r\n    \r\n    <cac:TaxTotal><cbc:TaxAmount currencyID=\"RON\">19.00</cbc:TaxAmount></cac:TaxTotal>\r\n    \r\n    <cac:LegalMonetaryTotal>\r\n        <cbc:LineExtensionAmount currencyID=\"RON\">100.00</cbc:LineExtensionAmount>\r\n        <cbc:PayableAmount currencyID=\"RON\">119.00</cbc:PayableAmount>\r\n    </cac:LegalMonetaryTotal>\r\n    \r\n    <cac:InvoiceLine>\r\n        <cbc:ID>1</cbc:ID>\r\n        <cbc:InvoicedQuantity unitCode=\"HUR\">1</cbc:InvoicedQuantity>\r\n        <cbc:LineExtensionAmount currencyID=\"RON\">100.00</cbc:LineExtensionAmount>\r\n        <cac:Item><cbc:Name>Servicii consultanta</cbc:Name></cac:Item>\r\n    </cac:InvoiceLine>\r\n</Invoice>\r\nFolosește codul cu precauție.Explicații cheieExemplul de mai sus prezintă o factură de 100 RON + 19 RON TVA. Elemente principale, conform specificațiilor:cbc:CustomizationID: Identifică utilizarea standardului RO CIUS (v1.0.8).cac:AccountingSupplierParty / CustomerParty: Datele de identificare (CUI) ale părților.cac:TaxTotal: Centralizatorul TVA-ului aplicat.cac:InvoiceLine: Detaliile produsului/serviciului, inclusiv cantitatea și valoarea.Pentru cerințe specifice, fișierul poate fi extins cu date bancare (IBAN), alte cote de TVA sau informații despre transport.\r\n--------------------------------------\r\nhttps://www.anaf.ro/anaf/internet/ANAF/asistenta_contribuabili/servicii_oferite_contribuabililor/ghiduri_curente/', -1),
(8, 'nomenclature', '', -1, -1, 'Nomenclator Formulare-Documente Tipizate', 'NDTF', 'Nomenclatorul Formularelor Documentelor Tipizate', -1);

-- --------------------------------------------------------

--
-- Table structure for table `standards_usage`
--

CREATE TABLE `standards_usage` (
  `su_id` int(11) NOT NULL,
  `su_name` varchar(254) NOT NULL,
  `su_comments` text NOT NULL,
  `standard_target_id` int(11) NOT NULL DEFAULT -1,
  `standard_used_in_target` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='standards-network=receipt';

--
-- Dumping data for table `standards_usage`
--

INSERT INTO `standards_usage` (`su_id`, `su_name`, `su_comments`, `standard_target_id`, `standard_used_in_target`) VALUES
(-1, '- n/a - ', 'relation m:m between standards which show the relation \'used-in\'', -1, -1);

-- --------------------------------------------------------

--
-- Table structure for table `units_measurement`
--

CREATE TABLE `units_measurement` (
  `um_id` int(11) NOT NULL,
  `um_name` varchar(254) NOT NULL,
  `um_code` varchar(30) NOT NULL,
  `um_comments` text NOT NULL,
  `um_parent_package_ik` int(11) NOT NULL DEFAULT -1,
  `transformation_factor_greater_than_unity` double NOT NULL DEFAULT -1,
  `It_is_returnable_packaging?` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `units_measurement`
--

INSERT INTO `units_measurement` (`um_id`, `um_name`, `um_code`, `um_comments`, `um_parent_package_ik`, `transformation_factor_greater_than_unity`, `It_is_returnable_packaging?`) VALUES
(-1, '- n/a -', 'n/a', 'Unit-Mesures for agent-goods\r\n-------------------------------\r\nStatele Unite folosesc sistemul de măsură obișnuit american (US Customary System), bazat pe țoli/inch (lungime), livre/pound (masă) și grade Fahrenheit (temperatură). \r\n\r\nUNIVERSITATEA DE STAT ALECU RUSSO DIN BĂLȚI\r\nLungime\r\nInch (țol / in sau \"): 1 inch = 2,54 cm\r\nFoot (picior / ft sau \'): 1 foot = 12 inchi = 30,48 cm\r\nYard (yard / yd): 1 yard = 3 picioare = 91,44 cm\r\nMile (milă / mi): 1 milă = 5.280 picioare = 1,609 km \r\nMasă și Greutate\r\nOunce (uncie / oz): 1 uncie = 28,35 grame\r\nPound (livră / lb): 1 pound = 16 uncii = 453,6 grame\r\nTon (tonă scurtă / tn): 1 tonă SUA = 2.000 livre = 907,2 kg\r\nVolum și Capacitate\r\nFluid Ounce (uncie fluidă / fl oz): 1 uncie fluidă = 29,57 ml\r\nCup (cană / c): 1 cană = 8 uncii fluide = 236,6 ml\r\nGallon (galon / gal): 1 galon = 3,785 litri \r\n\r\nFLAND GRUPPE\r\nTemperatură\r\nFahrenheit (°F): Formula de transformare în Celsius este (°F - 32) × 5/9 = °C (exemplu: 70°F înseamnă aproximativ 21°C).\r\n', -1, -1, 0),
(0, '-', '-', 'dimensionless\r\ndimensionsless', -1, -1, 0),
(1, 'piece', 'pc', 'piece/part/patch/article/unit\r\npieces/parts/patchs/articles/units', -1, -1, 0),
(2, 'package of 12 pcs', 'pkg 12 pcs', 'Package/Crate of 12 pieces\r\n(film and polystyrene)\r\nso this PACKAGING ISN\'T RETURNABLE!)', 1, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `URLs`
--

CREATE TABLE `URLs` (
  `url_id` int(11) NOT NULL,
  `url_name` varchar(254) NOT NULL,
  `url_comments` text NOT NULL,
  `agent_good_id` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `URLs`
--

INSERT INTO `URLs` (`url_id`, `url_name`, `url_comments`, `agent_good_id`) VALUES
(-1, '- n/a -', 'URLs', -1),
(1, 'https://www.presidency.ro/', 'site-ul de presentare al Adimistratiei Prezidentiale/Presedentiei Romaniei(AP-RO)', -1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `optional_company_ID` int(11) NOT NULL DEFAULT -1,
  `user_secured_name` varbinary(254) NOT NULL COMMENT '2-way encrypted/AES-128 user-secured-name cu CheiaMeaSecurizata123(cheia secreta pt userii demo)-in scop GDDPR',
  `username` varchar(254) NOT NULL COMMENT 'unsecured user-name/in fact public user_ShortName',
  `password` varchar(100) NOT NULL,
  `comments` text NOT NULL,
  `agent_id` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `optional_company_ID`, `user_secured_name`, `username`, `password`, `comments`, `agent_id`) VALUES
(-2, -1, 0x540ea7353b6ce02b2aa7cd8eb1ca0b0e, 'user-1', '$2y$10$AuX5A1zJvotvKkWXawLLP.A.cyRVbHRMSv/nI2G5aLYuKgd.XkJrO', 'user-1/PhP-function=password_hash(user-1) comments\r\n-----------------------------\r\nCu ce trebuie să înlocuiți MD?\r\n-Dacă aveți nevoie de un identificator one-way rapid (dar nu pentru parole), folosiți SHA-256 sau SHA-3.\r\n-Dacă aveți nevoie de securitate pentru parole, folosiți Argon2id sau bcrypt.\r\n-Dacă aveți nevoie de o soluție two-way (cum discutam anterior), folosiți AES-256.\r\n--------------------------------------\r\ndar in MySQL nu vad Argon2id sau bcrypt?Observația dumneavoastră este excelentă și indică o practică foarte sănătoasă de dezvoltare: MySQL nu oferă suport nativ pentru Argon2id sau bcrypt. Cele mai bune funcții native pe care le veți găsi în serverul de baze de date sunt din familia SHA2() (cum ar fi SHA-256 sau SHA-512) și AES_ENCRYPT().Iată de ce se întâmplă acest lucru și cum trebuie implementată corect securitatea conform standardelor actuale:De ce MySQL nu are aceste funcții nativ?Algoritmii moderni pentru parole (Argon2id, bcrypt) sunt concepuți în mod intenționat să fie foarte înceți și să consume multă memorie RAM (sunt algoritmi de tip memory-hard).Dacă ați rula Argon2id direct în interiorul MySQL prin interogări SQL (de exemplu, la un atac masiv de logare sau la un import mare de utilizatori), procesorul și memoria serverului de baze de date s-ar bloca instantaneu.Serverul de baze de date trebuie să rămână rapid pentru interogări, nu să facă calcule criptografice grele.Soluția corectă: Regula de aur în securitateConform ghidurilor de bune practici în securitate (OWASP), criptarea și hash-uirea parolelor se fac întotdeauna în codul aplicației dumneavoastră (backend), nu în baza de date.Baza de date (MySQL): Devine un mediu de stocare „prost” (salvează doar un simplu șir de caractere text într-o coloană de tip VARCHAR(255)).Aplicația (PHP, Node.js, Python, Java, C#): Se ocupă de calculul matematic greu al algoritmului Argon2id/bcrypt.Cum arată fluxul în mod practic?Când un utilizator își creează un cont, aplicația preia parola în clar, o procesează în backend și trimite rezultatul gata codificat în MySQL.Pasul 1: În codul aplicației dumneavoastră (Exemplu în PHP modern)Aplicațiile folosesc funcții native din limbaj care apelează direct bibliotecile securizate ale sistemului de operare:php// Parola introdusă de utilizator în formular\r\n$parola_in_clar = \"ParolaMeaSecurizata123!\";\r\n\r\n// Generarea hash-ului în backend folosind Argon2id\r\n// Funcția generează automat și un \"salt\" unic (sare) pentru fiecare utilizator în parte\r\n$hash_securizat = password_hash($parola_in_clar, PASSWORD_ARGON2ID);\r\n\r\n// Valoarea rezultată va arăta cam așa:\r\n// $argon2id$v=19$m=65536,t=4,p=1$bXlTYWx0... [hash-ul final]\r\nFolosește codul cu precauție.Pasul 2: Salvarea în MySQLÎn baza de date trimiteți doar acel șir de caractere lung format din litere și cifre generat la Pasul 1:sql-- În tabelul \'users\', coloana \'password_hash\' este doar un VARCHAR(255) normal\r\nINSERT INTO users (email, password_hash) VALUES (\'utilizator@email.com\', \'$hash_securizat\');\r\nFolosește codul cu precauție.Pasul 3: Verificarea la LogareCând utilizatorul revine și încearcă să se logheze, extrageți hash-ul din MySQL pe baza email-ului și lăsați tot backend-ul să compare valorile:php// 1. Extrageți prin SQL hash-ul stocat în baza de date pentru acel email\r\n$hash_din_db = \"$argon2id$v=19$m=65536...\"; \r\n\r\n// 2. Verificați în backend dacă parola introdusă acum corespunde cu hash-ul extras\r\nif (password_verify($_POST[\'password\'], $hash_din_db)) {\r\n    echo \"Autentificare reușită! Utilizatorul este conform GDPR.\";\r\n} else {\r\n    echo \"Parolă incorectă.\";\r\n}\r\nFolosește codul cu precauție.Dacă doriți să scriem scriptul exact pentru proiectul dumneavoastră, îmi puteți spune:Ce limbaj de backend folosiți în aplicație (ex: PHP, Node.js/JavaScript, Python, C#)?Vreți să vedem cum structurăm și tabelul din MySQL pentru a stoca corect aceste date?\r\n------------------------------------\r\nparolelel hasuite in php care incep cu $2y$10 ce algorithm folosesc in phpParolele care încep cu $2y$10$ în PHP folosesc algoritmul bcrypt.Fiecare element din acest prefix are o semnificație tehnică precisă:Structura identificatorului din baza de date$2y$: Reprezintă identificatorul specific folosit de PHP pentru algoritmul bcrypt (implementat prin funcția crypt). Acest prefix garantează că procesarea textului respectă standardul corect de securitate, corectând vulnerabilități istorice legate de seturile de caractere non-ASCII (cum ar fi diacriticele).$10$: Reprezintă costul algoritmului (sau numărul de iterații, calculat ca 2¹⁰ = 1024 rotații). Este parametrul care determină cât de greu/încet lucrează procesorul pentru a genera acel hash. Valoarea 10 este o valoare implicită sigură pentru serverele standard.Cum au fost generate în PHP?Aceste parole au fost salvate în aplicație folosind următoarea linie de cod:php// PHP folosește bcrypt în mod automat în spatele acestei instrucțiuni\r\n$hash = password_hash($parola_utilizator, PASSWORD_BCRYPT);\r\nFolosește codul cu precauție.Cum le verificați corect?Pentru a verifica dacă o parolă introdusă de un utilizator se potrivește cu un hash de tip $2y$10$, trebuie să folosiți funcția nativă:phpif (password_verify($parola_introdusa, $hash_din_baza_de_date)) {\r\n    // Parola este corectă\r\n}\r\nFolosește codul cu precauție.Dacă doriți să creșteți nivelul de securitate, putem schimba acest cost de la 10 la o valoare mai mare sau putem trece la Argon2id. Vreți să vedeți cum se ajustează costul în codul PHP sau cum se face migrarea automată a utilizatorilor vechi?\r\n======================================\r\nam un camp in Mysql pe care il encryptez cu AES-encrypt al MySQL si-mi da eroarea #1366 - Incorrect string value: \'\\xE1\\xC9\\xEA\\xB2\\xDDC...\' for column `my_ERP_db`.`users`.`user_secured_name` at row 1Această eroare apare deoarece funcția AES_ENCRYPT() din MySQL returnează un șir de octeți binari (un șir brut, neformatat ca text). Coloana ta user_secured_name este configurată probabil ca un tip de text (cum ar fi VARCHAR sau TEXT) cu un set de caractere text (de exemplu, utf8mb4). Când MySQL încearcă să salveze acești octeți binari într-o coloană de text, nu îi poate converti în caractere valide și blochează operațiunea.Iată cum poți rezolva rapid această problemă, prin două metode diferite:Opțiunea 1: Schimbă tipul coloanei în BINARY sau BLOB (Recomandat)Cea mai corectă metodă din punct de vedere al performanței și al stocării este să schimbi tipul de date al coloanei pentru a accepta date binare. Astfel, MySQL nu va mai încerca să interpreteze octeții ca fiind text.Rulează o comandă de tip ALTER TABLE pentru a modifica coloana:sqlALTER TABLE `users` MODIFY COLUMN `user_secured_name` VARBINARY(255);\r\nFolosește codul cu precauție.Notă: Dacă numele criptat poate fi foarte lung, poți folosi tipul BLOB în loc de VARBINARY.Opțiunea 2: Criptează și convertește în HEX / BASE64 (Dacă trebuie să rămână VARCHAR)Dacă aplicația ta depinde strict de tipul VARCHAR și nu poți modifica structura tabelului în binar, trebuie să transformi rezultatul criptării într-un format text sigur (cum ar fi reprezentarea hexazecimală sau Base64) înainte de salvare.La inserare / actualizare (folosind HEX()):sqlUPDATE `users` \r\nSET `user_secured_name` = HEX(AES_ENCRYPT(\'NumeUtilizator\', \'cheia_ta_secreta\')) \r\nWHERE id = 1;\r\nFolosește codul cu precauție.La citire / decriptare (folosind UNHEX()):sqlSELECT AES_DECRYPT(UNHEX(`user_secured_name`), \'cheia_ta_secreta\') AS nume_decriptat \r\nFROM `users`;\r\nFolosește codul cu precauție.Dacă vrei să optimizăm exact interogarea ta, lasă-mi un mesaj cu:Ce tip de date are acum coloana user_secured_name (ex: VARCHAR(100))?Preferi să modifici structura bazei de date sau să ajustezi doar codul SQL din aplicație?Răspunsurile de la AI pot include greșeli. Află mai multedar in php cum il decryptez daca vreau sa vad valoarea reala?Pentru a decripta valoarea în PHP, trebuie să folosești extensia openssl.Modul de decriptare depinde direct de metoda pe care ai ales-o la pasul anterior pentru a salva datele în MySQL (Opțiunea 1 cu format binar sau Opțiunea 2 cu format HEX).Iată cum decriptezi în PHP pentru ambele situații:Cazul 1: Dacă ai salvat datele ca binar (VARBINARY / BLOB)Dacă ai salvat rezultatul direct din AES_ENCRYPT(), PHP va primi datele sub formă de șir binar brut.php// 1. Datele primite din baza de date și cheia ta secretă\r\n$date_criptate_binar = $row[\'user_secured_name\']; \r\n$cheie_secret_mysql = \'cheia_ta_secreta\';\r\n\r\n// 2. Transforma cheia în formatul pe care îl folosește MySQL (AES-128-ECB implicit)\r\n// MySQL folosește padding cu zerouri pentru cheile mai scurte de 16 octeți\r\n$cheie_php = str_pad($cheie_secret_mysql, 16, \"\\0\");\r\n\r\n// 3. Decriptează folosind algoritmul implicit din MySQL\r\n$nume_real = openssl_decrypt(\r\n    $date_criptate_binar, \r\n    \'aes-128-ecb\', \r\n    $cheie_php, \r\n    OPENSSL_RAW_DATA | OPENSSL_ZERO_PADDING\r\n);\r\n\r\n// 4. Curăță eventualul padding adăugat de MySQL la finalul textului\r\n$nume_real = rtrim($nume_real, \"\\0\");\r\n\r\necho \"Valoarea reală este: \" . $nume_real;\r\nFolosește codul cu precauție.Cazul 2: Dacă ai salvat datele în format HEX (VARCHAR)Dacă ai folosit funcția HEX() în MySQL pentru a salva text în coloana VARCHAR, trebuie mai întâi să convertești textul din Hexazecimal înapoi în Binar folosind funcția hex2bin() din PHP.php// 1. Datele primite din baza de date (ex: \'4F3A9D...\')\r\n$date_criptate_hex = $row[\'user_secured_name\']; \r\n$cheie_secret_mysql = \'cheia_ta_secreta\';\r\n\r\n// 2. Convertește din HEX în Binar brut\r\n$date_criptate_binar = hex2bin($date_criptate_hex);\r\n\r\n// 3. Pregătește cheia (padding la 16 octeți pentru AES-128)\r\n$cheie_php = str_pad($cheie_secret_mysql, 16, \"\\0\");\r\n\r\n// 4. Decriptează datele binare\r\n$nume_real = openssl_decrypt(\r\n    $date_criptate_binar, \r\n    \'aes-128-ecb\', \r\n    $cheie_php, \r\n    OPENSSL_RAW_DATA | OPENSSL_ZERO_PADDING\r\n);\r\n\r\n// 5. Elimina caracterele nule (padding-ul) de la sfârșit\r\n$nume_real = rtrim($nume_real, \"\\0\");\r\n\r\necho \"Valoarea reală este: \" . $nume_real;\r\nFolosește codul cu precauție.⚠️ Aspecte importante de compatibilitate între MySQL și PHP:Algoritmul implicit: Funcția AES_ENCRYPT() din MySQL folosește în mod nativ algoritmul AES-128-ECB (dacă nu ai modificat variabila de sistem block_encryption_mode în serverul MySQL). De aceea în PHP specificăm \'aes-128-ecb\'.Gestionarea cheii: MySQL completează automat cheile scurte cu octeți nuli (\\0) până la lungimea de 16 caractere. Linia str_pad(..., 16, \"\\0\") din PHP asigură că ambele sisteme folosesc exact aceeași cheie.Padding-ul textului: MySQL adaugă blocuri nule la finalul textului criptat pentru a-i alinia lungimea. Funcția rtrim($nume_real, \"\\0\") curăță aceste spații goale din PHP ca să ai textul curat.Răspunsurile de la AI pot include greșeli. Află mai multepai functia AES_encrypt nu mi-a dat nici-o cheieAi perfectă dreptate să te întrebi asta, iar confuzia este complet normală. Funcția AES_ENCRYPT() din MySQL nu îți generează ea o cheie, ci are nevoie ca tu să îi dai o cheie ca al doilea parametru atunci când scrii codul SQL.Dacă ai rulat funcția scriind doar AES_ENCRYPT(coloana), interogarea a dat eroare sau a returnat NULL pentru că îi lipsea tocmai această cheie (parolă).Iată cum funcționează corect în ambele părți (MySQL și PHP):1. Cum trebuie să arate în MySQLTu alegi o parolă secretă (un șir de caractere) pe care o trimiți funcției. De exemplu, alegem ca cheie textul \'CheiaMeaSecurizata123\'.Inserarea în baza de date:sqlINSERT INTO `users` (`user_secured_name`) \r\nVALUES (AES_ENCRYPT(\'Nume Prenume\', \'CheiaMeaSecurizata123\'));\r\nFolosește codul cu precauție.2. Cum decriptezi în PHP folosind acea cheieÎn codul tău PHP, trebuie să folosești exact același șir de caractere pe care l-ai inventat și folosit în MySQL.php// Valoarea brută luată din baza de date\r\n$date_din_db = $row[\'user_secured_name\']; \r\n\r\n// Trebuie să fie EXACT cheia pe care ai scris-o în comanda SQL de mai sus\r\n$cheia_aleasa_de_tine = \'CheiaMeaSecurizata123\'; \r\n\r\n// MySQL aliniază cheia la 16 octeți (standardul pentru AES-128)\r\n$cheie_conforma = str_pad($cheia_aleasa_de_tine, 16, \"\\0\");\r\n\r\n// Decriptarea propriu-zisă\r\n$nume_real = openssl_decrypt(\r\n    $date_din_db, \r\n    \'aes-128-ecb\', \r\n    $cheie_conforma, \r\n    OPENSSL_RAW_DATA | OPENSSL_ZERO_PADDING\r\n);\r\n\r\n// Ștergem spațiile goale adăugate automat de MySQL la final\r\n$nume_real = rtrim($nume_real, \"\\0\");\r\n\r\necho \"Numele real este: \" . $nume_real;\r\nFolosește codul cu precauție.Dacă vrei să punem totul cap la cap în aplicația ta, lasă-mi un mesaj cu:Cum arată în acest moment comanda SQL (INSERT sau UPDATE) pe care încerci să o rulezi?Ce versiune de PHP folosești în proiect?Răspunsurile de la AI pot include greșeli. Află mai multe', -1),
(-1, -1, 0xab78399ab498d073adc3dc0deb353c05f556ae6927b77d3d64c2d22b74e4c2d5, 'admin', '$2y$10$5Bv7Ln4y5EmPLIPAYUKI3.Sxrq67HwE2RIVhWzzAtMh7EHC/coQMi', 'admin/PhP-function=password_hash((admin)\r\n----------------\r\nce algorithm de [de]codificare pot folosi pt gddprPentru a proteja datele cu caracter personal în conformitate cu GDPR, nu se folosește un singur algoritm, ci o combinație de metode de criptare și anonimizare/pseudonimizare. Regulamentul GDPR (Articolul 32) cere tehnologii sigure, fără a impune un algoritm specific, deoarece tehnologia evoluează.Iată cei mai siguri și utilizați algoritmi standard în industrie:1. Criptare Simetrică (Pentru stocare de date / Data at Rest)Se folosește aceeași cheie atât pentru codificare (criptare), cât și pentru decodificare (decriptare). Este ideală pentru baze de date și fișiere locale.AES-256 (Advanced Encryption Standard): Standardul de aur global. Este considerat militar și imposibil de spart prin atacuri de tip forță brută în prezent.ChaCha20: O alternativă excelentă și rapidă, folosită des în medii mobile sau acolo unde hardware-ul nu are optimizare dedicată pentru AES.2. Criptare Asimetrică (Pentru transfer de date / Data in Transit)Folosește o cheie publică pentru codificare și o cheie privată pentru decodificare. Este ideală pentru trimiterea securizată de date între două părți.RSA (minim 2048 sau 4096 biți): Cel mai răspândit algoritm pentru schimbul de chei și semnături digitale.ECC (Elliptic Curve Cryptography): Mai nou și mai eficient decât RSA. Oferă aceeași securitate ca RSA, dar cu chei mult mai mici, fiind ideal pentru conexiuni web rapide (TLS/HTTPS).3. Hash-uire și Salt (Pentru parole și identificatori unici)Algoritmii de tip hash sunt unidirecționali (doar codifică, nu se pot decodifica). Sunt obligatorii pentru stocarea parolelor. GDPR cere adăugarea unui „salt” (valoare aleatorie adăugată parolei înainte de hash-uire) pentru a preveni atacurile cu tabele precalculate.Argon2id: Câștigătorul competiției de hashing pentru parole, considerat cel mai sigur împotriva atacurilor hardware (GPU/ASIC).bcrypt / scrypt: Alternative foarte sigure și intens testate în timp.Notă de siguranță: NU folosiți MD5 sau SHA-1, deoarece sunt considerați algoritmi sparți și vulnerabili.Recomandarea practică pentru implementareScenariu de utilizareSoluția tehnică recomandatăBaza de date cu cliențiCriptare pe coloane folosind AES-256Parolele utilizatorilorHash-uire folosind Argon2id sau bcryptTransfer de fișiere / APIProtocolul TLS 1.3 (care folosește intern ECC și AES)Dacă doriți să trecem la implementarea practică, vă pot ajuta în mod direct. Îmi puteți spune în ce limbaj de programare (ex. Python, PHP, Java) lucrați sau ce tip de date (baze de date SQL, fișiere PDF, ID-uri de utilizatori) doriți să securizați?Răspunsurile de la AI pot include greșeli. Pentru consiliere juridică, consultă un profesionist. Află mai multepai da dar nu poate fi ca la parole one-way...cred ca pt GDDPR trebuie totusi 2-ways? nu?Aveți perfectă dreptate și intuiția dumneavoastră tehnică este corectă: pentru majoritatea datelor de identificare (nume, CNP, adresă), aveți nevoie de un algoritm two-way (bidirecțional), deoarece aplicația trebuie să și citească (să decodifice) acele date pentru a le folosi.Confuzia generală pleacă de la modul în care textul legii GDPR împarte datele în două categorii de protecție: Pseudonimizare și Anonimizare.De ce aveți nevoie de ambele (Two-Way și One-Way)GDPR cere strategii diferite în funcție de scopul datelor:1. Date operaționale (Nume, Telefon, Email, CNP) \\(\\rightarrow \\) Two-Way (Criptare)Cum funcționează: Datele sunt codificate în baza de date, dar pot fi decodificate folosind o cheie secretă atunci când operatorul trimite un colet sau emite o factură.Algoritm recomandat: AES-256.Statut GDPR: Se numește Pseudonimizare. Datele sunt protejate în caz de furt (fără cheie sunt inutile), dar rămân sub incidența GDPR deoarece pot fi reconstituite.2. Date de autentificare (Parole) \\(\\rightarrow \\) One-Way (Hash-uire)Cum funcționează: Nimeni (nici măcar administratorul bazei de date) nu trebuie să știe parola în clar. Când utilizatorul se loghează, sistemul face hash parolei introduse și o compară cu hash-ul stocat.Algoritm recomandat: Argon2id sau bcrypt.Statut GDPR: Obligatoriu pentru parole, deoarece decodificarea lor constituie o vulnerabilitate majoră de securitate.3. Date pentru statistici și analize \\(\\rightarrow \\) One-Way definitiv (Anonimizare)Cum funcționează: Dacă vreți să vedeți câți utilizatori au cumpărat un produs, transformați ID-ul de client într-un identificator ireversibil.Statut GDPR: Datele anonimizate complet (care nu mai pot fi decodificate niciodată prin nicio metodă) ies de sub incidența GDPR.Cum se aplică corect schema Two-Way (Criptarea)Dacă doriți să implementați criptarea bidirecțională (Two-Way) pentru a fi conform GDPR, secretul nu stă doar în algoritm (AES-256), ci în managementul cheilor de criptare:Izolarea cheii: Nu stocați cheia de criptare în aceeași bază de date cu datele criptate. Dacă baza de date este spartă, atacatorul va avea și datele, și cheia.Stocare sigură: Cheia trebuie ținută în fișiere de configurare securizate de pe server (variabile de mediu) sau într-un serviciu dedicat de management al cheilor (KMS).Dacă doriți să integrăm acest sistem, vă pot genera un script gata de utilizat. Pentru a-l adapta exact proiectului dumneavoastră, puteți să-mi spuneți:În ce limbaj de programare rulați aplicația? (ex: PHP, Python, JavaScript/Node.js, C#)Ce sistem de baze de date folosiți? (ex: MySQL, PostgreSQL, text/fișiere)\r\n\r\n---------------------------------------\r\nmd nu este bun?Nu, algoritmii din familia MD (cum ar fi MD5) nu mai sunt buni și sunt interziși pentru utilizarea în conformitate cu GDPR.Deși MD5 este un algoritm de tip one-way (hash), el este complet nesigur din două motive tehnice majore:1. Este vulnerabil la coliziuni (Broken Algorithm)Matematicienii și hackerii au demonstrat că se pot genera două texte complet diferite care să producă exact același hash MD5.Acest lucru permite atacatorilor să falsifice semnături digitale sau să păcălească sistemele de autentificare.2. Este extrem de rapid (Vulnerabil la Brute Force)MD5 a fost proiectat în 1991 pentru a fi rapid. Astăzi, plăcile video moderne (GPU) pot calcula miliarde de hash-uri MD5 pe secundă.Dacă o bază de date cu hash-uri MD5 este furată, atacatorii pot afla parolele originale în doar câteva minute prin atacuri de tip forță brută sau folosind tabele precalculate (Rainbow Tables).Ce spune GDPR despre MD5?Regulamentul cere utilizarea stadiului actual al tehnologiei („state of the art”). Autoritățile de protecție a datelor (inclusiv ANSPDCP în România) consideră utilizarea MD5 pentru protecția datelor personale ca fiind o neglijență gravă, deoarece algoritmul este declarat oficial „spart” (deprecat) de mulți ani.Cu ce trebuie să înlocuiți MD?Dacă aveți nevoie de un identificator one-way rapid (dar nu pentru parole), folosiți SHA-256 sau SHA-3.Dacă aveți nevoie de securitate pentru parole, folosiți Argon2id sau bcrypt.Dacă aveți nevoie de o soluție two-way (cum discutam anterior), folosiți AES-256.Dacă aveți deja un sistem vechi care folosește MD5, vă pot ajuta cu o strategie de migrare securizată a datelor către un algoritm modern, fără ca utilizatorii să își piardă parolele sau accesul. Doriți să vedem cum se face această trecere în cod?', -1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actives_for_agent_rating`
--
ALTER TABLE `actives_for_agent_rating`
  ADD PRIMARY KEY (`aafr_id`),
  ADD UNIQUE KEY `aafr_active_name` (`aafr_active_name`),
  ADD KEY `aafr_parent` (`aafr_parent`),
  ADD KEY `currency_top_id` (`currencyPartGood_top_id`),
  ADD KEY `currency_index_bottom` (`currencyCounterPartGood_index_bottom_id`),
  ADD KEY `agentPART_good_ID` (`agentPART_good_ID`),
  ADD KEY `AGENTcOUNTERpART_GOOD_ID` (`agentCounterPart_good_id`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`agnt_id`),
  ADD UNIQUE KEY `agnt_name` (`agnt_name`),
  ADD UNIQUE KEY `agnt_shortName` (`agnt_shortName`),
  ADD KEY `agnt_fk` (`agnt_fk`),
  ADD KEY `agent_good_id` (`agent_good_id`);

--
-- Indexes for table `agent_actives_for_rates`
--
ALTER TABLE `agent_actives_for_rates`
  ADD PRIMARY KEY (`aar_`),
  ADD UNIQUE KEY `aar_name` (`aar_name`),
  ADD KEY `agent_id` (`agent_proxy_id`),
  ADD KEY `activ_id` (`activ_id`),
  ADD KEY `anonime_or_agent_BUYER` (`anonymous_or_agent_BUYER`),
  ADD KEY `anonymous_or_agend_SELLER` (`anonymous_or_agend_SELLER`);

--
-- Indexes for table `agent_active_rates`
--
ALTER TABLE `agent_active_rates`
  ADD PRIMARY KEY (`acr_id`),
  ADD UNIQUE KEY `acr_namr` (`acr_name`),
  ADD KEY `agent_activ_id` (`agent_activ_id`);

--
-- Indexes for table `agent_departs`
--
ALTER TABLE `agent_departs`
  ADD PRIMARY KEY (`ad_id`),
  ADD UNIQUE KEY `ad_shortName` (`ad_shortName`),
  ADD UNIQUE KEY `ad_name` (`ad_name`),
  ADD KEY `agent_id` (`agent_good_id`),
  ADD KEY `depart_id` (`depart_STANDARD_id`);

--
-- Indexes for table `agent_Goods`
--
ALTER TABLE `agent_Goods`
  ADD PRIMARY KEY (`agd_id`),
  ADD UNIQUE KEY `gd_name` (`agd_name`),
  ADD UNIQUE KEY `agd_type` (`agd_type`,`ag_id`,`gd_fk`,`um_id`),
  ADD KEY `ag_id` (`ag_id`) USING BTREE,
  ADD KEY `um_id` (`um_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `agenrRole_id` (`agenrRole_id`);

--
-- Indexes for table `agent_good_URLs`
--
ALTER TABLE `agent_good_URLs`
  ADD PRIMARY KEY (`agdURL_id`),
  ADD KEY `agent_good_id` (`agent_good_id`),
  ADD KEY `URL_id` (`URL_id`);

--
-- Indexes for table `agent_roles`
--
ALTER TABLE `agent_roles`
  ADD PRIMARY KEY (`ar_id`),
  ADD UNIQUE KEY `cr_name` (`ar_name`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`assts_id`),
  ADD UNIQUE KEY `assts_name` (`assts_name`),
  ADD UNIQUE KEY `assts_shortName` (`assts_shortName`),
  ADD KEY `agent_good_id` (`agent_good_id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`bank_id`),
  ADD UNIQUE KEY `bank_name` (`bank_name`),
  ADD UNIQUE KEY `bank_short_name` (`bank_short_name`),
  ADD KEY `agent_id` (`agent_id`),
  ADD KEY `optional_cmpny_ID` (`optional_cmpny_ID`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`ba_id`),
  ADD UNIQUE KEY `ba_account` (`ba_bank_account_no`),
  ADD KEY `ba_bank_id` (`bankAdmin_Agent_Good_id`);

--
-- Indexes for table `Cods`
--
ALTER TABLE `Cods`
  ADD PRIMARY KEY (`cd_id`),
  ADD KEY `stanrd_Doc_id` (`stanrd_Doc_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`company_id`),
  ADD UNIQUE KEY `company_name` (`company_name`),
  ADD UNIQUE KEY `company_shortName` (`company_shortName`),
  ADD KEY `agent_id` (`agent_id`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`contract_id`),
  ADD UNIQUE KEY `contract_type` (`contract_type`,`contract_serial_no`,`contract_no`,`contract_date`),
  ADD UNIQUE KEY `document_shortName` (`document_shortName`),
  ADD KEY `document_next_ik` (`document_next_ik`),
  ADD KEY `document_previous_ik` (`document_previous_ik`),
  ADD KEY `document_next_ik_2` (`document_next_ik`),
  ADD KEY `document_previous_ik_2` (`document_previous_ik`),
  ADD KEY `document_currency_id` (`document_currency_id`),
  ADD KEY `agent_good_id` (`agent_good_id`),
  ADD KEY `standard_template_form_id` (`standard_template_form_id`);

--
-- Indexes for table `contract_goods`
--
ALTER TABLE `contract_goods`
  ADD PRIMARY KEY (`cg_id`),
  ADD UNIQUE KEY `cg_name` (`cg_name`),
  ADD KEY `cg_good_id` (`agent_good_id`),
  ADD KEY `cg_contract_agent_role_id` (`contract_agent_role_id`),
  ADD KEY `um_delivery_seller_agent_good_id` (`um_delivery_seller_agent_good_id`),
  ADD KEY `price_id` (`optional_price_id`),
  ADD KEY `contract_id` (`contract_id`),
  ADD KEY `agent_buyer_good_currency_id` (`agent_buyer_good_currency_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`crncy_id`),
  ADD UNIQUE KEY `crncy_name` (`crncy_name`),
  ADD UNIQUE KEY `crncy_short_name` (`crncy_short_name`),
  ADD KEY `agent_good_id` (`agent_good_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`depart_id`),
  ADD UNIQUE KEY `depart_name` (`depart_name`),
  ADD UNIQUE KEY `depart_shortName` (`depart_shortName`);

--
-- Indexes for table `institutions_state`
--
ALTER TABLE `institutions_state`
  ADD PRIMARY KEY (`is_id`),
  ADD UNIQUE KEY `is_name` (`is_name`),
  ADD UNIQUE KEY `is_shortName` (`is_shortName`),
  ADD KEY `agent_id` (`agent_id`),
  ADD KEY `optional_company_ID` (`optional_company_ID`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`incntry_id`),
  ADD UNIQUE KEY `incntry_name` (`incntry_name`),
  ADD UNIQUE KEY `incntry_shortName` (`incntry_shortName`),
  ADD KEY `agent_good_id` (`agent_good_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`lctn_id`),
  ADD UNIQUE KEY `lctn_name` (`lctn_name`);

--
-- Indexes for table `non_bank_ifn`
--
ALTER TABLE `non_bank_ifn`
  ADD PRIMARY KEY (`nb_id`),
  ADD UNIQUE KEY `nb_name` (`nb_name`),
  ADD KEY `agent_id` (`agent_id`),
  ADD KEY `optional_company_ID` (`optional_company_ID`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`prs_id`),
  ADD UNIQUE KEY `prs_shortName` (`prs_shortName`),
  ADD KEY `agent_id` (`agent_id`);

--
-- Indexes for table `PL_Prices`
--
ALTER TABLE `PL_Prices`
  ADD PRIMARY KEY (`plp_id`),
  ADD KEY `agent_good_ik` (`seller_agent_good_ik`),
  ADD KEY `price_list_id` (`seller_PL_price_list_id`) USING BTREE,
  ADD KEY `um_id` (`umForPL_seller_agent_good_id`),
  ADD KEY `seller_agent_good_ik` (`seller_agent_good_ik`);

--
-- Indexes for table `Price_Lists`
--
ALTER TABLE `Price_Lists`
  ADD PRIMARY KEY (`pl_id`),
  ADD UNIQUE KEY `pl_name` (`pl_name`),
  ADD KEY `pl_chain_next_ik` (`pl_chain_next_ik`),
  ADD KEY `pl_chain_previous_ik` (`pl_chain_previous_ik`) USING BTREE,
  ADD KEY `agent_seller_id` (`agent_good_sellerGood_id`),
  ADD KEY `agent_buyer_id` (`agent_good_buyerCurrency_id`),
  ADD KEY `agen t_good_id` (`agent_good_Seller_PLdoc_id`) USING BTREE,
  ADD KEY `agent_good_PL_id` (`agent_good_Seller_PLdoc_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prdct_id`),
  ADD UNIQUE KEY `prdct_name` (`prdct_name`),
  ADD UNIQUE KEY `prdct_shortName` (`prdct_shortName`),
  ADD KEY `agent_good_id` (`agent_good_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`srvc_id`),
  ADD UNIQUE KEY `srvc_name` (`srvc_name`),
  ADD UNIQUE KEY `srvc_shortName` (`srvc_shortName`),
  ADD KEY `agent_good_id` (`agent_good_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`stff_id`),
  ADD UNIQUE KEY `stff_name` (`stff_name`),
  ADD KEY `company_id` (`agent_good_company_id`),
  ADD KEY `person_id` (`agent_good_person_id`),
  ADD KEY `stff_linkedin_previous_ik` (`stff_linkedin_previous_ik`),
  ADD KEY `stff_linkedin_previous_ik_2` (`stff_linkedin_previous_ik`),
  ADD KEY `linkedin_staff_role_id` (`stff_URL_linkedin_staff_role_agent_id`),
  ADD KEY `stff_hired_person_company_linkedin_URL` (`stff_hired_person_company_linkedin_URL`(768)),
  ADD KEY `stff_linkedin_next_ik` (`stff_linkedin_next_ik`);

--
-- Indexes for table `standards`
--
ALTER TABLE `standards`
  ADD PRIMARY KEY (`stdrd_id`),
  ADD UNIQUE KEY `stdrd_name` (`stdrd_name`),
  ADD KEY `optional_Agent_id` (`optional_Agent_Editor_id`),
  ADD KEY `optional_agent_good_id` (`optional_agent_good_id`),
  ADD KEY `downloadURL_id` (`downloadURL_id`);

--
-- Indexes for table `standards_usage`
--
ALTER TABLE `standards_usage`
  ADD PRIMARY KEY (`su_id`),
  ADD KEY `standard_target_id` (`standard_target_id`),
  ADD KEY `standard_used_in_target` (`standard_used_in_target`);

--
-- Indexes for table `units_measurement`
--
ALTER TABLE `units_measurement`
  ADD PRIMARY KEY (`um_id`),
  ADD UNIQUE KEY `um_name` (`um_name`),
  ADD UNIQUE KEY `um_code` (`um_code`),
  ADD KEY `um_parent_package_ik` (`um_parent_package_ik`);

--
-- Indexes for table `URLs`
--
ALTER TABLE `URLs`
  ADD PRIMARY KEY (`url_id`),
  ADD KEY `agent_good_id` (`agent_good_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_users` (`username`),
  ADD KEY `agent_id` (`agent_id`),
  ADD KEY `optiona_company_ID` (`optional_company_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actives_for_agent_rating`
--
ALTER TABLE `actives_for_agent_rating`
  MODIFY `aafr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `agnt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `agent_actives_for_rates`
--
ALTER TABLE `agent_actives_for_rates`
  MODIFY `aar_` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `agent_active_rates`
--
ALTER TABLE `agent_active_rates`
  MODIFY `acr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `agent_departs`
--
ALTER TABLE `agent_departs`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `agent_Goods`
--
ALTER TABLE `agent_Goods`
  MODIFY `agd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `agent_good_URLs`
--
ALTER TABLE `agent_good_URLs`
  MODIFY `agdURL_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `agent_roles`
--
ALTER TABLE `agent_roles`
  MODIFY `ar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `assts_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `ba_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Cods`
--
ALTER TABLE `Cods`
  MODIFY `cd_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `contract_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract_goods`
--
ALTER TABLE `contract_goods`
  MODIFY `cg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `crncy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `depart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `institutions_state`
--
ALTER TABLE `institutions_state`
  MODIFY `is_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `incntry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `lctn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `non_bank_ifn`
--
ALTER TABLE `non_bank_ifn`
  MODIFY `nb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `prs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `PL_Prices`
--
ALTER TABLE `PL_Prices`
  MODIFY `plp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Price_Lists`
--
ALTER TABLE `Price_Lists`
  MODIFY `pl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prdct_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `srvc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `stff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `standards`
--
ALTER TABLE `standards`
  MODIFY `stdrd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `standards_usage`
--
ALTER TABLE `standards_usage`
  MODIFY `su_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `units_measurement`
--
ALTER TABLE `units_measurement`
  MODIFY `um_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `URLs`
--
ALTER TABLE `URLs`
  MODIFY `url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actives_for_agent_rating`
--
ALTER TABLE `actives_for_agent_rating`
  ADD CONSTRAINT `actives_for_agent_rating_ibfk_3` FOREIGN KEY (`agentCounterPart_good_id`) REFERENCES `agent_Goods` (`agd_id`),
  ADD CONSTRAINT `actives_for_agent_rating_ibfk_4` FOREIGN KEY (`agentPART_good_ID`) REFERENCES `agent_Goods` (`agd_id`);

--
-- Constraints for table `agents`
--
ALTER TABLE `agents`
  ADD CONSTRAINT `agents_ibfk_1` FOREIGN KEY (`agent_good_id`) REFERENCES `agent_Goods` (`agd_id`);

--
-- Constraints for table `agent_actives_for_rates`
--
ALTER TABLE `agent_actives_for_rates`
  ADD CONSTRAINT `agent_actives_for_rates_ibfk_1` FOREIGN KEY (`activ_id`) REFERENCES `actives_for_agent_rating` (`aafr_id`),
  ADD CONSTRAINT `agent_actives_for_rates_ibfk_2` FOREIGN KEY (`agent_proxy_id`) REFERENCES `agents` (`agnt_id`),
  ADD CONSTRAINT `agent_actives_for_rates_ibfk_3` FOREIGN KEY (`anonymous_or_agent_BUYER`) REFERENCES `agents` (`agnt_id`),
  ADD CONSTRAINT `agent_actives_for_rates_ibfk_4` FOREIGN KEY (`anonymous_or_agend_SELLER`) REFERENCES `agents` (`agnt_id`);

--
-- Constraints for table `agent_active_rates`
--
ALTER TABLE `agent_active_rates`
  ADD CONSTRAINT `agent_active_rates_ibfk_1` FOREIGN KEY (`agent_activ_id`) REFERENCES `agent_actives_for_rates` (`aar_`);

--
-- Constraints for table `agent_departs`
--
ALTER TABLE `agent_departs`
  ADD CONSTRAINT `agent_departs_ibfk_1` FOREIGN KEY (`agent_good_id`) REFERENCES `agent_Goods` (`agd_id`);

--
-- Constraints for table `agent_Goods`
--
ALTER TABLE `agent_Goods`
  ADD CONSTRAINT `agent_Goods_ibfk_1` FOREIGN KEY (`ag_id`) REFERENCES `agents` (`agnt_id`),
  ADD CONSTRAINT `agent_Goods_ibfk_2` FOREIGN KEY (`um_id`) REFERENCES `units_measurement` (`um_id`),
  ADD CONSTRAINT `agent_Goods_ibfk_3` FOREIGN KEY (`agenrRole_id`) REFERENCES `agent_roles` (`ar_id`);

--
-- Constraints for table `agent_good_URLs`
--
ALTER TABLE `agent_good_URLs`
  ADD CONSTRAINT `agent_good_URLs_ibfk_1` FOREIGN KEY (`URL_id`) REFERENCES `URLs` (`url_id`),
  ADD CONSTRAINT `agent_good_URLs_ibfk_2` FOREIGN KEY (`agent_good_id`) REFERENCES `agent_Goods` (`agd_id`);

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `assets_ibfk_1` FOREIGN KEY (`agent_good_id`) REFERENCES `agent_Goods` (`agd_id`);

--
-- Constraints for table `banks`
--
ALTER TABLE `banks`
  ADD CONSTRAINT `banks_ibfk_1` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`agnt_id`);

--
-- Constraints for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD CONSTRAINT `bank_accounts_ibfk_1` FOREIGN KEY (`bankAdmin_Agent_Good_id`) REFERENCES `agent_Goods` (`agd_id`);

--
-- Constraints for table `Cods`
--
ALTER TABLE `Cods`
  ADD CONSTRAINT `Cods_ibfk_1` FOREIGN KEY (`stanrd_Doc_id`) REFERENCES `standards` (`stdrd_id`);

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_ibfk_1` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`agnt_id`);

--
-- Constraints for table `contracts`
--
ALTER TABLE `contracts`
  ADD CONSTRAINT `contracts_ibfk_1` FOREIGN KEY (`document_next_ik`) REFERENCES `contracts` (`contract_id`),
  ADD CONSTRAINT `contracts_ibfk_2` FOREIGN KEY (`document_previous_ik`) REFERENCES `contracts` (`contract_id`),
  ADD CONSTRAINT `contracts_ibfk_3` FOREIGN KEY (`agent_good_id`) REFERENCES `agent_Goods` (`agd_id`),
  ADD CONSTRAINT `contracts_ibfk_4` FOREIGN KEY (`standard_template_form_id`) REFERENCES `standards` (`stdrd_id`);

--
-- Constraints for table `contract_goods`
--
ALTER TABLE `contract_goods`
  ADD CONSTRAINT `contract_goods_ibfk_2` FOREIGN KEY (`agent_good_id`) REFERENCES `agent_Goods` (`agd_id`),
  ADD CONSTRAINT `contract_goods_ibfk_3` FOREIGN KEY (`um_delivery_seller_agent_good_id`) REFERENCES `units_measurement` (`um_id`),
  ADD CONSTRAINT `contract_goods_ibfk_4` FOREIGN KEY (`optional_price_id`) REFERENCES `PL_Prices` (`plp_id`),
  ADD CONSTRAINT `contract_goods_ibfk_5` FOREIGN KEY (`contract_agent_role_id`) REFERENCES `agent_roles` (`ar_id`),
  ADD CONSTRAINT `contract_goods_ibfk_6` FOREIGN KEY (`contract_id`) REFERENCES `contracts` (`contract_id`);

--
-- Constraints for table `currencies`
--
ALTER TABLE `currencies`
  ADD CONSTRAINT `currencies_ibfk_1` FOREIGN KEY (`agent_good_id`) REFERENCES `agent_Goods` (`agd_id`);

--
-- Constraints for table `institutions_state`
--
ALTER TABLE `institutions_state`
  ADD CONSTRAINT `institutions_state_ibfk_1` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`agnt_id`);

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`agent_good_id`) REFERENCES `agent_Goods` (`agd_id`);

--
-- Constraints for table `non_bank_ifn`
--
ALTER TABLE `non_bank_ifn`
  ADD CONSTRAINT `non_bank_ifn_ibfk_1` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`agnt_id`);

--
-- Constraints for table `persons`
--
ALTER TABLE `persons`
  ADD CONSTRAINT `persons_ibfk_1` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`agnt_id`);

--
-- Constraints for table `PL_Prices`
--
ALTER TABLE `PL_Prices`
  ADD CONSTRAINT `PL_Prices_ibfk_3` FOREIGN KEY (`umForPL_seller_agent_good_id`) REFERENCES `units_measurement` (`um_id`),
  ADD CONSTRAINT `PL_Prices_ibfk_4` FOREIGN KEY (`seller_PL_price_list_id`) REFERENCES `agent_Goods` (`agd_id`),
  ADD CONSTRAINT `PL_Prices_ibfk_5` FOREIGN KEY (`seller_agent_good_ik`) REFERENCES `agent_Goods` (`agd_id`);

--
-- Constraints for table `Price_Lists`
--
ALTER TABLE `Price_Lists`
  ADD CONSTRAINT `Price_Lists_ibfk_3` FOREIGN KEY (`pl_chain_next_ik`) REFERENCES `Price_Lists` (`pl_id`),
  ADD CONSTRAINT `Price_Lists_ibfk_4` FOREIGN KEY (`pl_chain_previous_ik`) REFERENCES `Price_Lists` (`pl_id`),
  ADD CONSTRAINT `Price_Lists_ibfk_5` FOREIGN KEY (`agent_good_sellerGood_id`) REFERENCES `agent_Goods` (`agd_id`),
  ADD CONSTRAINT `Price_Lists_ibfk_6` FOREIGN KEY (`agent_good_buyerCurrency_id`) REFERENCES `agent_Goods` (`agd_id`),
  ADD CONSTRAINT `Price_Lists_ibfk_7` FOREIGN KEY (`agent_good_Seller_PLdoc_id`) REFERENCES `agent_Goods` (`agd_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`agent_good_id`) REFERENCES `agent_Goods` (`agd_id`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`agent_good_id`) REFERENCES `agent_Goods` (`agd_id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_3` FOREIGN KEY (`stff_linkedin_previous_ik`) REFERENCES `staff` (`stff_id`),
  ADD CONSTRAINT `staff_ibfk_4` FOREIGN KEY (`agent_good_person_id`) REFERENCES `agent_Goods` (`agd_id`),
  ADD CONSTRAINT `staff_ibfk_5` FOREIGN KEY (`agent_good_company_id`) REFERENCES `agent_Goods` (`agd_id`),
  ADD CONSTRAINT `staff_ibfk_6` FOREIGN KEY (`stff_linkedin_next_ik`) REFERENCES `staff` (`stff_id`);

--
-- Constraints for table `standards`
--
ALTER TABLE `standards`
  ADD CONSTRAINT `standards_ibfk_1` FOREIGN KEY (`downloadURL_id`) REFERENCES `URLs` (`url_id`),
  ADD CONSTRAINT `standards_ibfk_2` FOREIGN KEY (`optional_agent_good_id`) REFERENCES `agent_Goods` (`agd_id`);

--
-- Constraints for table `standards_usage`
--
ALTER TABLE `standards_usage`
  ADD CONSTRAINT `standards_usage_ibfk_1` FOREIGN KEY (`standard_target_id`) REFERENCES `standards` (`stdrd_id`),
  ADD CONSTRAINT `standards_usage_ibfk_2` FOREIGN KEY (`standard_used_in_target`) REFERENCES `standards` (`stdrd_id`);

--
-- Constraints for table `units_measurement`
--
ALTER TABLE `units_measurement`
  ADD CONSTRAINT `units_measurement_ibfk_1` FOREIGN KEY (`um_parent_package_ik`) REFERENCES `units_measurement` (`um_id`);

--
-- Constraints for table `URLs`
--
ALTER TABLE `URLs`
  ADD CONSTRAINT `URLs_ibfk_1` FOREIGN KEY (`agent_good_id`) REFERENCES `agent_Goods` (`agd_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`agnt_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
