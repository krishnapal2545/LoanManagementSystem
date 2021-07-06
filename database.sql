-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2021 at 09:07 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `redlms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `Login_id` text DEFAULT NULL,
  `Password` text DEFAULT NULL,
  `Name` text DEFAULT NULL,
  `Phone` text DEFAULT NULL,
  `Email` text DEFAULT NULL,
  `Photo` text DEFAULT NULL,
  `Login` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `Login_id`, `Password`, `Name`, `Phone`, `Email`, `Photo`, `Login`) VALUES
(1, 'AdminLogin', 'Admin@Login', 'Krishna', '1234567892', 'Admin123@gmail.com', 'profile/logo.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `id` int(11) NOT NULL,
  `ID_Number` text DEFAULT NULL,
  `Name` text DEFAULT NULL,
  `Photo` text DEFAULT NULL,
  `Phone` text DEFAULT NULL,
  `Email` text DEFAULT NULL,
  `Password` text DEFAULT NULL,
  `Login` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`id`, `ID_Number`, `Name`, `Photo`, `Phone`, `Email`, `Password`, `Login`) VALUES
(1, 'EMHCSAGENT', 'Sumit Rajendra Vishwakarama', 'profile/kk.png', '+918318031071', 'SumitVish@gmail.com', 'Tata@123', 0),
(2, 'DDU3GAGENT', 'Krishna Kumar Rajendra Prasad Pal', 'profile/avtar.png', '8318031071', 'kk.pl2545@gmail.com', 'Tata@123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `id` int(11) NOT NULL,
  `Loan_id` varchar(100) DEFAULT NULL,
  `Title` text DEFAULT NULL,
  `Thumbnail` text DEFAULT NULL,
  `Banner` text DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Features` text DEFAULT NULL,
  `Terms` text DEFAULT NULL,
  `Eligibilty` text DEFAULT NULL,
  `Repayment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`id`, `Loan_id`, `Title`, `Thumbnail`, `Banner`, `Description`, `Features`, `Terms`, `Eligibilty`, `Repayment`) VALUES
(1, 'ABCD1234', 'Car Loan', 'https://www.bankofbaroda.in/writereaddata/images/carLoan.jpg', 'https://www.bankofbaroda.in/writereaddata/Portal/CMS_Template_Banner/308_1_BOB_Car_Loan_1920_x_607_Pixels.jpg', 'Own your dream ride with car loans from Bank of Baroda.\r\n\r\nGet a car loan to purchase a vehicle of your choice. With our loans, you can buy a hatchback, sedan, MUV, SUV, sports car or a luxury car.\r\n\r\nOur auto loans are available to salaried employees, businessmen, professionals, corporates as well as NRIs and PIOs. We offer attractive interest rates on car loans with up to 90% financing, making our loans the ideal choice for funding your brand-new car.', 'Bank of Baroda offers up to 90% auto loan financing of the on-road price of the car you wish to purchase. However, the upper limit on the car loan amount for private use vehicles is Rs.100 lakh (Rs.1 crore).\r\nThe interest rate on car loans is calculated on the daily reducing balance and is based on the credit score or CIBIL Bureau score of the applicant. The minimum credit score required for the loan is 701.\r\nThe repayment period or tenure for car loans is up to a maximum of 84 months and is determined by the EMI amount.\r\nAs collateral, all cars financed through our auto loans are hypothecated with Bank of Baroda.\r\nThe hypothecation is removed once the borrower repays the entire loan amount. Salaried employees, businessmen, professionals, corporates as well as NRIs and PIOs are eligible to apply for Bank of Baroda’s auto loans. However, the minimum age of the borrower should be 21 years, while the maximum age should not exceed 70 years after the repayment period is over.\r\nThe processing charges on our loans are minimal , and are generally calculated flat 0.50% + GST.', 'Maximum Limit\r\nRs.100 Lacs (For all categories)\r\n\r\nRepayment Period\r\nMaximum 84 months\r\n\r\nMargin\r\n10% Margin on ‘On road price’ of the vehicle\r\n\r\nBureau Score validation\r\nMinimum Bureau score cut off as per Bank’s guidelines\r\n\r\nAge\r\nMinimum: Borrower – 21 years, Co-applicant- 18 years\r\nMaximum: Age of the applicant / co-applicant / guarantor + repayment period should not exceed 70 years\r\n\r\nSecurity\r\nHypothecation of Vehicle financed\r\n\r\nInsurance\r\nComprehensive Insurance of the Vehicle with Bank’s Clause\r\n\r\nPre-closure charges\r\nNIL\r\n\r\nRate of Interest\r\nRate of Interest\r\n\r\nRate of interest on car loan is based on CIBIL Bureau score of the applicant/co-applicant. Minimum Cut off score is 701..\r\n\r\nConcession in ROI: Concession of 0.25% in rate of interest on Car Loans to our existing Home Loans borrowers who maintain a good track record of repayment without any overdue.\r\n\r\nUnified Processing Charges\r\nProcessing Charges', 'Salaried Employees\r\nBusinessmen, professionals and Farmers\r\nDirectors of Private and Public Limited companies, Proprietor of Proprietorship Firms, partners of Partnership Firms.\r\nCorporates (Partnership, private Limited, Public limited and Trust)\r\nNRIs/PIOs', 'Null'),
(2, 'XYZ12345', 'Personal Loan', 'https://www.bankofbaroda.in/writereaddata/images/personalLoan.jpg', 'https://www.bankofbaroda.in/writereaddata/images/inner-banner.jpg', 'Personal loans from Bank of Baroda offer a quick and easy solution to all your urgent financial needs.\r\n\r\nWhether you need funds for a medical emergency in your family, your sibling’s wedding, or to renovate your home, a personal loan can finance all your requirements.\r\n\r\nPersonal loans have many advantages over other forms of credit, such as credit cards and informal loans from friends, family members or untrustworthy financiers.\r\n\r\nMost salaried persons, self-employed and professionals can apply for personal loans. With attractive interest rates, minimal documentation and speedy processing, Bank of Baroda offers among the best personal loans today.', 'To apply for a personal loan, applicants can be employees of government bodies or private companies with minimum continuous service of one year. Similarly, self-employed professionals or business persons who want to apply for personal loans need to have their business or practice for at least one year.\r\nApplicants need to be at least 21 years of age to be eligible for a personal loan, while co-applicants are not allowed. The maximum age to apply for personal loans is 60 years for salaried and 65 for non-salaried persons at the end of the repayment period.\r\nThe personal loan amount varies by location. In metro and urban areas, the loan amounts can range from Rs.1 lakh to Rs.10 lakh. In semi-urban and rural areas, the personal loan amount varies from Rs.50,000 up to Rs.5 lakh.\r\nThe processing charges for personal loans is calculated as 2% of the loan amount, with a minimum of Rs.1000 up to Rs.10,000.', 'Age\r\nMinimum\r\n21 Years\r\n\r\nMaximum\r\nFor Salaried Persons: Age of Borrower plus repayment period should not exceed retirement age or 60 years whichever is lower.\r\nFor non-salaried Persons: Age of Borrower plus repayment period should not exceed 65 years.\r\nQuantum of Finance\r\nLimit is stipulated based on the classification of the financing branch.\r\n\r\nMaximum\r\nMetro & Urban : Rs. 10 Lakhs\r\nSemi-Urban & Rural : Rs.5 Lakhs\r\nMinimum\r\nMetro & Urban : Rs. 1 Lakh\r\nSemi-Urban & Rural: Rs.50,000/-\r\nPenal interest\r\nPenal interest @2% shall be levied on overdue amount\r\n\r\nProcessing Charges\r\n2% of Loan amount Minimum: Rs.1000/- Maximum: Rs.10,000/- + Service Tax', 'Employees of Central / State Govt. / Autonomous Bodies/ Public / Joint Sector Undertakings, Public Limited Co. / MNCs & Educational Institutions – with minimum continuous service for 1 year\r\nEmployees of Proprietorship, Partnership firms, Private Limited companies, Trust - with minimum continuous service for 1 year\r\nInsurance Agents- doing business for minimum last -2- years\r\nSelf Employed Professionals (Doctor, Engineer, Architect, Interior Designers, Tech. and Management Consultants, Practicing Company secretaries etc) -- with minimum 1 year stable business.\r\nSelf Employed Business persons - with minimum 1 year stable business.', '2% of Loan amount\r\nMinimum: Rs.1000/-\r\nMaximum: Rs.10,000/-'),
(4, 'BPKM9N7QG7', 'Home Loan', 'https://www.bankofbaroda.in/writereaddata/images/homeLoan.jpg', 'https://www.bankofbaroda.in/writereaddata/Portal/CMS_Template_Banner/476_1_BOB_Home_Loan_1920_x_607_Pixels.jpg', 'If you are dreaming of buying your own residence, opt for a home loan from Bank of Baroda. Our home loans are packed with several exclusive features and benefits for aspiring home owners.\r\n\r\nOur housing loan can be used for a variety of purposes. For instance, you can buy a plot, purchase a flat, build your own home and even extend your existing residence with a home loan.\r\n\r\nBoth resident and non-resident Indians are eligible for our home loans.', '\r\nWho is eligible? All resident and non-resident Indians between 21 and 70 years are eligible for our home loans.\r\nPurchase of new / old dwelling unit.\r\nConstruction of house.\r\nPurchase of plot of land for construction of a house.\r\nRepaying a loan already taken from other Housing Finance Company / Bank.\r\nRepayment period up to 30 years (floating rate option).\r\nReimbursement of cost of plot of land (purchased within 24 months)\r\nLoan amount: The approved home loan amount varies according to location and income of the applicants. For instance, in semi-urban and rural areas the maximum amount is Rs. 1 crore, while in metros the maximum home loan amount can range from Rs. 5 crore to Rs. 10 crore.\r\nInterest rate: The interest rate is linked to Baroda Repo Linked Lending Rate(BRLLR) of the bank and is reset monthly.\r\nTenure and moratorium: The tenure on our home loans varies based on the loan amount and the income of the borrower, and the maximum tenure is 30 years. There is also a moratorium period on home loans, which can be a maximum of up to 36 months after the loan amount is disbursed.\r\nCollateral: We require collateral against home loans. Generally, we accept mortgage of the constructed or purchased property as collateral. In some cases, collateral for home loans can be accepted in the form of insurance policies, government promissory notes, shares and debentures, gold ornaments etc.', 'Target Group\r\nResident Indians\r\nNon-Resident Indians (NRIs) holding Indian passport or Persons of Indian origin (PIOs) holding foreign passport or Overseas Citizens of India (OCI).\r\nStaff members (availing under Public scheme)\r\nEligibility of Borrower/s\r\nIndividuals singly or jointly.\r\nHUFs are not eligible.\r\nResident Indian\r\nApplicant/ co-applicant/s (whose income are considered for eligibility) should be employed / engaged in business / profession for a minimum period of -1- year (for salaried) and/or -2- years (for non-salaried).\r\n\r\n(Break in service, if any, can be allowed up to a maximum period of 3 months)\r\n\r\nNRI/PIO/OCI\r\na) Applicant/ co-applicant/s (whose income are considered for eligibility) should be having a regular job abroad in a reputed Indian / foreign company, organization or government department holding a valid job contract / work permit for the minimum past -2- years.\r\nOR\r\nShould be employed / self-employed or having a business unit and staying abroad at least for -2- years.\r\n\r\nb) Applicant / co-applicant/s (whose income is considered for eligibility) should have minimum gross annual income equivalent to Rs.5.00 Lacs per annum.\r\nIf the applicant / co applicant/s, whose income is considering for eligibility includes NRI, minimum Gross Annual Income of Rs.5 Lacs (income of applicant / co-applicant together) can be considered for this criteria.\r\n\r\nPerson of Indian Origin (PIO) is specified as under\r\nA citizen of any country other than Bangladesh / Pakistan / Sri Lanka / Afghanistan / China / Iran / Nepal & Bhutan if –\r\n\r\nHe at any time held Indian passport or\r\nHe or either of his parents or any of his grandparents was a citizen of India by virtue of the constitution of India of the Citizenship Act 1955, or\r\nThe person is a spouse of an Indian citizen or a person referred to in sub-clause (a) or (b) above.\r\nOverseas Citizens of India (OCI) is specified as under\r\nA person registered as Overseas Citizen of India (OCI) under section 7 A of the Citizenship Act, 1955.\r\nAs per the guidelines, an Overseas Citizens of India (OCI) has to be necessarily a Person of India Origin (PIO)\r\nA foreign national, who was eligible to become citizen of India on 26.01.1950 or was a citizen of India on or at any time after 26.01.1950 or belonged to a territory that became part of India after 15.08.1947 and his / her children and grandchildren, provided his/ her country of citizenship allows dual citizenship in some form or other under the local laws, is eligible for registration as Overseas Citizen of India (OCI). Minor children of such person are also eligible for OCI. However, if the applicant had ever been a citizen of Pakistan or Bangladesh, he / she will not be eligible for OCI.\r\nCo-Applicants\r\nThe close relatives of the applicant can be added as a co-applicant for higher eligibility.\r\n\r\nIf the applicant wants to add any person who is not a close relative as a co-applicant, same can be considered only if he/ she are the joint owner of property.\r\n\r\nList of Close Relatives\r\nSpouse, Father, Mother (including Step Mother), Son (including Step Son), Son’s wife,Daughter (Including Step Daughter), Daughter’s husband, Brother/sister (Including stepbrother/sister), Brother’s wife, sister (including step sister) of spouse, Sister’s husband,Brother (including step brother) of spouse.\r\n\r\nLimit: Maximum Limit\r\nMumbai : Rs. 10 Crores\r\n\r\nOther Metros* : Rs. 5 Crores\r\n\r\nUrban Areas : Rs. 3 Crores\r\n\r\nSemi-urban and Rural : Rs. 1 Crore\r\n\r\nSubject to income criteria & repayment capacity of the applicant / co-applicant (s) and LTV/Margin norms.\r\n\r\nRepayment Period\r\nMaximum period of loans shall be -30- years initially, including the maximum moratorium period of -36-months.\r\nMaximum moratorium period shall be -36- months as under\r\n18- month moratorium period for under construction Houses and Building up to 7th Floor and thereafter -6- months additional moratorium per floor subject to a maximum moratorium of -36- months.\r\nRepayment Capacity\r\nTotal deductions including proposed EMI should not exceed as follows\r\n\r\nSalaried Persons\r\nGMI less than Rs.20, 000/- 50%\r\nGMI Rs.20, 000/- and above but less than Rs.50,000/- 60%\r\nGMI Rs.50, 000/- and above but less than Rs.2.00 lacs - 65%\r\nGMI Rs.2.00 lacs and above but less than Rs.5.00 lacs - 70%\r\nGMI Rs.5lacs and above - 75%\r\nOthers\r\nAverage Gross Annual Income (For last -2- years) up to Rs.6 lacs : 70%\r\nAverage Gross Annual Income (For last -2- years) more than Rs.6 lacs : 80%\r\nAge\r\nMinimum: Borrower – 21 years, Co-applicant- 18 years\r\nMaximum: Maximum age can be considered upto 70 Years*\r\n\r\nSecurity\r\nMortgage of the Property constructed/ purchased or\r\nIf mortgage is not feasible, Bank at its discretion can accept security in the form of Insurance Policies, Govt Promissory Notes, Shares and Debentures, Gold Ornaments etc.\r\nRepayment\r\nMaximum period of loans shall be -30- years initially, including the maximum moratorium period of -36-months.\r\nMaximum moratorium period shall be -36- months as under\r\n18- month moratorium period for under construction Houses and Building up to 7th Floor and thereafter -6- months additional moratorium per floor subject to a maximum moratorium of -36- months\r\nLoan to be repaid in Equated Monthly Installments (EMI)\r\nIn case of farmers / agriculturists, repayment can be allowed in Half Yearly installments coinciding with harvesting/marketing of major crops produced.\r\nRecovery of interest for the moratorium period Interest charged during the moratorium period is to be recovered as and when debited.\r\nPre Closure Charges\r\nNil\r\n\r\nRate of Interest\r\nFixed Rate Option : : Stands withdrawn w.e.f 01.07.2010\r\n\r\nFloating Rate : Interest on the loan will be charged at prevailing floating rate on a daily reducing balance at monthly rests. The rate of interest is linked to Baroda Repo Linked Lending Rate(BRLLR), shall be reset on annual basis. Rate of interest will be decided with reference to CIBIL bureau score* of the applicant/co-applicants (ranging from minimum of Baroda Repo Linked Lending Rate(BRLLR) to maximum of Baroda Repo Linked Lending Rate(BRLLR) +1%) subject to revision by the Bank from time to time.\r\n\r\nTo know the latest rate of interest Click here\r\n\r\nUnified Processing Charges\r\nThe unified processing charges include\r\n\r\nProcessing Charges\r\nDocumentation charges\r\nDocument Verification/ vetting charges\r\nPre- sanction Inspection (Contact Point Verification-CPV) charges\r\nOne-time post inspection charges\r\nAdvocate charges for legal opinion\r\nValuer charges for valuation\r\nBureau report charges\r\nCERSAI charges\r\nITR Verification charges\r\nTo know the Processing charges Click here\r\n\r\nGroup Credit Life Insurance Cover\r\nBank of Baroda is having tie-up arrangements with M/s. India First Life Insurance Co. for providing Life Insurance Cover to our Home Loan borrowers.\r\n\r\nThis is an optional Scheme of Life Insurance and is at the cost of borrower which may be funded by the Bank at the time of sanction and is recoverable with the EMIs of the Loan.\r\n\r\nThe salient Features of the Group Credit Life Policy offered by M/s. India First Life Insurance Co. as under\r\nIt is an optional scheme for the benefit of Home Loan borrowers and the borrower will be given an option by the branches to choose the insurance provider between IndiaFirst Life Insurance as per his choice.\r\nIt is a group insurance scheme, which protects against unforeseen consequences of death of borrower.\r\nFamily of the borrower is not required to repay the loan to the extent of claim settled amount, in case of death of the borrower.\r\nOutstanding cover amount due, will be paid by insurance provider as per cover schedule.\r\nSlippage of the account into NPA category due to death of the borrower can be avoided.\r\nLife cover is available against payment of one time premium and amount of premium is based on the age of the borrower, amount of loan, Interest rate and tenure of the loan.\r\nPremium amount for obtaining the cover can be financed as part of loan at the request of borrower and accordingly EMI will be calculated. But in case of Home Loans guidelines regarding compliance of LTV Ratio must be strictly ensured.\r\nPremium amount may be part of the Loan as per total eligibility of the borrower may be funded by the Bank at the time of sanction and is recoverable with the EMIs of the Loan.\r\nIn case of foreclosure of loan, certain portion of premium paid shall be refunded by the insurance provider.', 'Who is eligible? All resident and non-resident Indians between 21 and 70 years are eligible for our home loans.\r\nPurchase of new / old dwelling unit.\r\nConstruction of house.\r\nPurchase of plot of land for construction of a house.\r\nRepaying a loan already taken from other Housing Finance Company / Bank.\r\nRepayment period up to 30 years (floating rate option).\r\nReimbursement of cost of plot of land (purchased within 24 months)', 'The interest rates and processing charges links are already mentioned in the existing page and the same should be placed in the hyperlink\r\n\r\nFixed Rate Option : Stands withdrawn w.e.f 01.07.2010\r\n\r\nFloating Rate : Interest on the loan will be charged at prevailing floating rate on a daily reducing balance at monthly rests. The rate of interest is linked to Baroda Repo Linked Lending Rate(BRLLR), shall be reset on annual basis. Rate of interest will be decided with reference to CIBIL bureau score* of the applicant/co-applicants (ranging from minimum of Baroda Repo Linked Lending Rate(BRLLR) to maximum of Baroda Repo Linked Lending Rate(BRLLR) +1%) subject to revision by the Bank from time to time.\r\n\r\nTo know the latest rate of interest Click here\r\n\r\nUnified Processing Charges\r\n\r\nThe unified processing charges include\r\n\r\nProcessing Charges\r\nDocumentation charges\r\nDocument Verification/ vetting charges\r\nPre- sanction Inspection (Contact Point Verification-CPV) charges\r\nOne-time post inspection charges\r\nAdvocate charges for legal opinion\r\nValuer charges for valuation\r\nBureau report charges\r\nCERSAI charges\r\nITR Verification charges'),
(5, 'ERPRKBKU37', 'Interest Subsidy Scheme For Housing The Urban Poor (ISHUP)', 'https://www.bankofbaroda.in/writereaddata/images/home-loan-grid-img-5-new.jpg', 'https://www.bankofbaroda.in/writereaddata/Portal/CMS_Template_Banner/300_1_Home-loans.jpg', '“Affordable Housing for all “ is an important policy agenda of Govt. of India and accordingly the Ministry of Housing and Urban Poverty Allevation ( MH & UPA) has designed an Interest Subsidy Scheme as an additional instrument for addressing the housing needs of EWS and LIG segment in urban areas. The scheme envisages the provision of interest subsidy to EWS and LIG segments to enable them to buy or construct houses.', 'Can I avail of Home Loan from Bank of Baroda?\r\nYes, you can avail a Home Loan from Bank of Baroda, if you plan to construct or purchase a house/flat or extend your existing house/flat and,you are\r\nA minimum of 21 years\r\nEmployed or Self Employed with regular income.\r\nWho can be co-applicant?\r\nThe proposed owners of the residential accommodation as per the Agreement for sale, in respect of which financial assistance is sought, must be co-applicants. Usually joint applications are from husband-wife, father-son or mother-son etc.\r\nHow much does Bank of Baroda lend?\r\nLoan amount is determined on the basis of the repaying capacity of the applicant/s. Repaying capacity takes into consideration factors such as age, income, dependents, assets, liabilities, stability of occupation and continuity of income, savings etc.\r\nThe maximum loan would be Rs.10.00 Crore per unit to any individual applicant based on the area where property is proposed to be constructed/purchased. We will extend loan upto 90% (for fresh houses / flat) of the cost of property under our Housing Loan Scheme.\r\nFor how long a period can I get the loan?\r\nWe grant term upto a maximum of 30 years. The term for the loan will under no circumstances exceed the age of retirement or completion of 65 years of age, whichever is earlier.\r\nBut can I prepay the loan ahead of schedule?\r\nYes, you have the option to prepay the loan ahead of schedule either in part or in full from your own sources.\r\nWhat is the mode of repayment?\r\nEquated Monthly Instalment (EMI) : It means a uniform lumpsum amount, which includes repayment of a part of the principal amount and payment of interest, calculated on daily products basis. Or\r\nFixing the monthly / quarterly instalments on graduated basis is permitted of EMI as requested by customers.\r\nWhat is the security for the loan?\r\nThe security for the loan is equitable mortgage of the property to be financed. The security for the loan is equitable mortgage of the property to be financed.\r\nDo you insist on LIC policy as additional collateral security?\r\nNo, it is not mandatory.\r\nWhat are the supporting documents required while applying for the loan?\r\nCommon requirements for all applicants.\r\nApplication form duly filled in (with photograph of all the applicant).\r\nResidence and Age verification, which may be established from the PAN card, Election ID, Passport, Drivers licence and Ration card etc.\r\nCopy of approved plan and sanction letter from local civic authority.\r\nCopy of NA permission.\r\nOne/two guarantor/s form/s and salary certificates. - If guarantor is in business, copies of I.T. returns or assessment orders for the last three years are required.\r\nBank Pass-book of statements for the last two years.\r\nLatest salary slip/statement showing all deductions in case of employed applicants.\r\nCertified copies of Balance Sheets and Profit and Loss accounts, IT acknowledgments, advance tax challans (for both company/firm and personal account) for the last three years in case of self employed applicants.\r\nMemorandum/Articles of Association for companies, partnership deeds for firms and a brief profile of your company/firm in case of self employed applicants.\r\nResidence and Age verification, which may be established from the PAN card, Election ID, Passport, Drivers license and Ration card etc.\r\nAdditional requirement.\r\nIn case of purchase from builder\r\nCopy of Agreement for sale.\r\nCopy of registration receipt.\r\nCopy of sanctioned plan & sanction letter of the competent authorities.\r\nCopy of NA permission/ULC order.\r\nCopies of receipts of payments already made.\r\nNOC from builders in our format.\r\nIn case of direct allotment in a Co-operative Housing Society\r\nAllotment letter.\r\nShare certificate.Society registration certificate.\r\nCopy of sale/lease deed in favour of the society.\r\nNOC from society in our format.\r\nPossession letter in original.\r\nIn case of resale\r\nCopy of all previous vendors agreements duly stamped and registered and the registration receipts. (original to be given before disbursement).\r\nNOC from Society/Builder in our format.\r\nOriginal Share Certificate.\r\nWhether you have any Housing loan product for NRIs?\r\nYes. We have Housing Loan product for NRIs / PIOs . For details, please visit our website at Housing Loans to NRIs / PIOs', 'Loan amount admissible\r\nFor EWS - Max. amount Rs. 1 lac for 20 years, for a house at least of 25 sq.mts.\r\nFor LIG - Rs. 1,60,000, for a house at least of 40 sq.mts. However, subsidy eligibility will be on Rs. 1 lac only\r\nAdditional loans, if needed would be at unsubsidized rates.\r\nNo loan for purchase of plot.\r\n\r\nMargin\r\nmin. 20%\r\n\r\nRepayment\r\nMaximum 20 years including moratorium period.\r\n\r\nSecurity\r\nMortgage of house constructed / purchase out of loan (no collateral / third party guarantee for loans upto Rs. 1 lac excluding group guarantee.\r\n\r\nas applicable to Baroda Home Loan\r\n\r\nSubsidy Reimbursement\r\n5% interest subsidy (Net Present Value) for a maximum of principal amount of Rs. 1.00 lac is available under the scheme.', 'EWS - households having an average monthly income upto Rs. 5,000.\r\nLIG - households having an average monthly income between Rs.5001 upto Rs.10,000.\r\nFor salaried persons: 48- times of average of last -3- months’ gross salary.\r\nFor others – Max. 4- times of average of last -2- years’ annual income', 'Null'),
(6, '978GW309CQ', 'Education Loan', 'https://www.bankofbaroda.in/writereaddata/images/educationLoan.jpg', 'https://www.bankofbaroda.in/writereaddata/Portal/CMS_Template_Banner/307_1_BOB_Education_Loan_1920_x_607_Pixels.jpg', 'Education Loan\r\nThere is no doubt about the importance of education these days. Be it school education or college education, it serves as a stepping stool for you to achieve your dreams. Whether it is college education or post graduation, don’t let high tuition fees hamper your growth. Getting an education loan is an easy way to finance your dreams. A student loan can help you get into the university of your choice. The Government’s push on education means you can avail education loan subsidy, and you also get tax benefits for interest paid under Section 80E of the Income Tax Act. Bank of Baroda offers you different types of education loans in India to fulfill your dreams. Most of these student loans in India have a repayment period of 10-15 years and a moratorium of the course period and the specified number of months. All education loans do not need a security for a loan up to Rs. 4 lakhs.', 'Key Benefits\r\nNo processing charges.\r\nNo Margin.\r\nFree Debit Card.', 'Most Important Terms & Conditions\r\nTarget group Students pursuing Graduation, Post-Graduation, Professional and other courses in India\r\n\r\nQuantum of finance\r\nCategory	Maximum Loan Limit\r\nNo security	With tangible 100%\r\ncollteral security of full\r\nvalue of the Loan amount\r\nInstitutions– under List AA	RS. 40.00 Lakh	RS. 80.00 Lakh\r\nInstitutions under List – A	RS. 20.00 Lakh	RS. 80.00 Lakh\r\nInstitutions under List-B	RS. 7.50 Lakh	RS. 80.00 Lakh\r\nInstitutions under List-C	RS. 7.50 Lakh	RS. 80.00 Lakh\r\nNeed based finance subject to future repayment capacity based on projected future earning which should commensurate with past placement records and average packages offered to the pass outs of the college.\r\n\r\nMargin NIL\r\n\r\nRepayment Holiday/ Moratorium Period Course period + 1 year.\r\n\r\nCoverage of expenses for\r\nFee payable to college/Institution/University/school/hostel.\r\nExamination / Library / Laboratory fee.\r\nHostel fees / charges.\r\nPurchase of books / equipments / instruments / uniforms.\r\nCaution deposit, Building fund / refundable deposit supported by institution bills/ receipts, subject to condition that the amount does not exceed 10% of the total tuition fees for the entire course.\r\nPurchase of Personal Computer / Laptop - essential for completion of the course.\r\nInsurance premium for student borrower, if any opted by the student. Presently Bank has tie up arrangement with M/s.IndiaFirst Life Insurance Co & M/s.Kotak Life Insurance co for Group Credit Life insurance cover to Educaiton Loan borrowers.\r\nAny other expenses required to complete the course – like study tours, project works, thesis, etc.\r\nCost of external coaching/tution is not to be considered.\r\nNote The details of expenses for the entire course period to be obtained from college / institution.\r\n\r\nRepayment Period\r\nThe loan is repayable in maximum 10 – 15 years after the completion of moratorium period as mentioned above\r\nFor loans up to RS. 7.50 Lakhs : Moratorium Period +Maximum -120- installments\r\nFor Loans above RS. 7.50 Lakhs : Moratorium Period +Maximum -180- installments\r\nUnified Processing charges\r\nNIL for all cases.\r\nA non refundable Lump sum amount Rs.7,500/- per property (towards Advocate and Valuer charges) to be taken upfront in case of all Education Loan accounts, wherever property is mortgaged .\r\nSecurity\r\nList AA\r\nUp to RS. 40.00 Lakh No Security\r\nCo-obligation of parents / guardian along with assignment of future income of the student for payment of instalments.\r\n\r\nAbove RS. 40.00 Lakh Tangible collateral security equal to 100% of the loan amount along with assignment of future income of the student for payment of instalments.\r\n\r\nFor Institutions in List-A\r\nUp to RS. 20.00 Lakh No Security\r\nCo-obligation of parents / guardian along with assignment of future income of the student for payment of instalments.\r\n\r\nAbove RS. 20.00 Lakh Tangible collateral security equal to 100% of the loan amount along with assignment of future income of the student for payment of instalments.\r\n\r\nFor Institutions in List-B\r\nUp to RS. 7.50 Lacs No Security\r\nCo-obligation of parents / guardian along with assignment of future income of the student for payment of instalments.\r\n\r\nAbove RS. 7.50 Lacs Tangible collateral security equal to 100% of the loan amount along with assignment of future income of the student for payment of instalments.\r\n\r\nFor Institutions in List-C\r\nUp to RS. 7.50 Lacs No Security\r\nCo-obligation of parents / guardian along with assignment of future income of the student for payment of instalments.\r\n\r\nAbove RS. 7.50 Lacs Tangible collateral security equal to 100% of the loan amount along with assignment of future income of the student for payment of instalments.\r\n\r\nDisbursement\r\nDirectly to School / Institution / hostel -- term wise / year wise, in stages as per the requirement / demand.\r\nDirectly to book seller / shop for purchase of books, instruments, equipments.\r\nIn case student does not secure hostel facility with educational institute, he may be allowed to make his own arrangement if required. Lodging / boarding charges in such cases to be paid directly to concerned establishment, after verifying bonafides of the same.\r\nFinancing Branch\r\nBranch in the vicinity of the Institute #\r\nOr\r\nBranch which is in close proximity to the permanent residence of parent/at the place of posting/service of the parent Branch', 'Eligibility\r\nCourses Eligible\r\nFull time regular Courses conducted by the Premier Educational Institutions:\r\nList of the institutions (List-AA, A, B & List-C) PDF file that opens in new window. To know how to open PDF file refer Help section located at bottom of the site. (69 KB)\r\nStudent Eligibility\r\nShould be an Indian National\r\nSecured admission to professional / technical courses Abroad through Entrance Test / Merit Based Selection process.', 'Interest Rates & Charges\r\nNo special concession for girl students under this scheme.\r\nSimple interest to be charged at monthly rests during the repayment holiday/moratorium period.\r\nPenal interest @ 2% p.a. on overdue amount, if the loan amount exceeds Rs.4/- lacs.\r\nThe accrued interest during the repayment holiday period to be added to the principal and repayment in Equated Monthly Instalment (EMI) be fixed.\r\nPresent rate of interest Click here\r\nProcessing Charges'),
(7, 'YPBBQK3T3L', 'Mortgage Loan', 'https://www.bankofbaroda.in/writereaddata/images/mortgageLoan.jpg', 'https://www.bankofbaroda.in/writereaddata/Portal/CMS_Template_Banner/310_1_mortgage-loan.jpg', 'For any purpose except for financial speculation of any nature (Persons engaged in Property development/ property dealings/ brokers, share/stock brokers and persons engaged in any speculative activity NOT ELIGIBLE UNDER THE SCHEME)', 'Ideal use of idle property - Generate additional income from an otherwise idle property.\r\nWithdraw money as per your need and save on interest cost.\r\nDeposit surplus money / regular income / salary and save interest.\r\nFlexibility to withdraw money deposited earlier.\r\nCan be availed either as overdraft or demand loan as per your need.\r\nCompetitive rate of Interest\r\nLoan available Upto Rs.10.00Cr', 'Target Group\r\nIndividuals (Resident/ Non Resident Indians)\r\n\r\nPurpose\r\nFor any purpose except for financial speculation of any nature (Persons engaged in Property development/ property dealings/ brokers, share/stock brokers and persons engaged in any speculative activity NOT ELIGIBLE UNDER THE SCHEME)\r\n\r\nEligibility\r\nIndividuals (Resident/ Non Resident Indians)\r\n\r\nResident Indians\r\nSalaried/ Professionals/ self-employed/ Business persons/ Agriculturists employed/ engaged in business/ profession for a minimum period of 3 years. (Break in service can be considered for maximum period of 3 months)\r\nMinimum Gross Annual Income (average of Last 3 years) should be Rs. 3 lacs including co-applicants whose income is considered for eligibility of limit.\r\nNon-Resident Indians\r\nAny NRI, holding valid Indian Passport, and having regular employment / self-employed/ business for a minimum period of -2- years and holding a valid Job-Contract / work-permit for minimum -2- years in foreign country.\r\nMinimum Gross Annual Income (average of Last 3 years) should be Rs. 5 lacs including co-applicants whose income is considered for eligibility of limit.\r\nHUF / TRUST/ PUBLIC LIMITED COMPANY ARE NOT ELIGBLE UNDER THE SCHEME.\r\n\r\nType of facility\r\nTerm Loan/ Demand Loan / Overdraft\r\n\r\nNRIs will be granted Term Loan / Demand Loan only\r\n\r\nMargin\r\n40% on Realizable Value of immovable properties\r\n\r\nSecurity\r\nMortgage of Immovable Properties:\r\n\r\nResidential Property (House / Flat)\r\nCommercial property (Building / Land & Building)\r\nPlot of Land (not agricultural land)\r\nLimit\r\nMinimum: Rs.2.00 Lacs\r\n\r\nMaximum: (For all category of borrowers):\r\n\r\nMetro branches : Rs.10.00 Crores\r\nUrban branches : Rs.5.00 Crores\r\nSemi Urban branches : Rs.3.00 Crores\r\nRural branches : Rs.25 Lacs\r\nRepayment Period\r\nTerm Loan: 120- Months\r\n\r\nOverdraft: 12- Months; Subject to Annual Review\r\n\r\nRepayment Capacity: (for all category borrowers)\r\nFor All category of borrowers\r\nGMI up to Rs.75,000/- : 50%\r\nGMI above Rs.75,000/- to Rs.3.00 Lacs : 60%\r\nGMI above Rs.3.00 Lacs : 70%\r\nUnified Processing Charges\r\nThe unified processing charges (which includes Processing Charges ,Documentation charges ,Document Verification/ vetting charges ,Pre- Inspection (Contact Point Verification-CPV) charges ,One time post inspection charges ,Advocate charges for legal opinion ,Valuer charges for valuation (One time at the time of sanction) ,Bureau report charges ,CERSAI charges ,ITR Verification charges ) to be levied as detailed below\r\n\r\nFor Term Loan\r\n1% of Loan amount with maximum Rs.1,50,000/-\r\nMinimum: Rs.7, 500/- (upfront)**. Balance amount of processing charges will be recovered at the time of conveying sanction.\r\n\r\nFor Over Draft\r\nUp to Rs.3.00 Crores : 0.35% of limit with maximum: Rs.75,000/-\r\nAbove Rs.3.00 Crores : 0.25% of the limit without any maximum.\r\n\r\nMinimum\r\nRs.7, 500/- (upfront)**. Balance amount of processing charges will be recovered at the time of conveying sanction.\r\n\r\n** The above upfront charges considered as if only one property is offered as security. If two or more properties are offered as security, Rs.7,500/- per additional property would be applicable as upfront charges in addition to minimum upfront charges as mentioned above (subject to overall stipulated maximum processing charges).\r\n\r\nInspection\r\nBank will have the right to inspect the borrower’s property at all times and from 2nd post sanction Inspection onwards Rs. 100 plus GST per inspection to be charged from borrower.\r\n\r\nLegal opinion & Valuation charges\r\nTitle of the property proposed to be purchased is to be clear, absolutely unencumbered and marketable to the satisfaction of the Bank’s solicitor/ advocate. Title verification and Valuation of the property will be done by the empaneled advocate/ valuer of the Bank.\r\n\r\nIn case of limit above Rs.1.00 Crore, 2nd valuation of the property also to be obtained and to be satisfied upon. The lower of the -2- valuations to be considered while calculating the limit.\r\n\r\nInsurance\r\nInsurance of the property taken as security as per the valuation report for full value excluding cost of land. The charges to be borne by borrower/s.\r\n\r\nMortgage Creations Charges\r\nAs per Bank’s extant guideline applicable\r\n\r\nOther Expenses\r\nLike stamp duty for execution of documents, registration charges varying from State to State and other related charges/ expenses for the loan shall be borne by the Borrower.\r\n\r\nCredit Information Report:\r\nBank is authorized to make enquiries from any of the Credit Information Bureau and get the Credit Information Reports. Bank is also authorized to disclose from time to time any information relating to the loan to any Credit Bureau approved by Got of India or Reserve Bank of India without any notice to the borrower.\r\n\r\nRate of Interest & Charges\r\nInterest Rates & Charges\r\nProcessing Charges\r\nCommitment Charges :\r\nIn all overdraft limit sanctioned, minimum quarterly average utilization of sanctioned limits should be 60%. In case of quarterly average utilization of sanction limit is less than 60% of the sanction limit, interest in the account will be charged on minimum 60% of sanctioned limits on quarterly basis.', 'Resident Indians\r\nSalaried/ Professionals/ self-employed/ Business persons/ Agriculturists employed/ engaged in business/ profession for a minimum period of 3 years. (Break in service can be considered for maximum period of 3 months)\r\nMinimum Gross Annual Income (average of Last 3 years) should be Rs. 3 lacs including co-applicants whose income is considered for eligibility of limit.\r\nNon-Resident Indians\r\nAny NRI, holding valid Indian Passport, and having regular employment / self-employed/ business for a minimum period of -2- years and holding a valid Job-Contract / work-permit for minimum -2- years in foreign country.\r\nMinimum Gross Annual Income (average of Last 3 years) should be Rs. 5 lacs including co-applicants whose income is considered for eligibility of limit.\r\nPurpose\r\nFor any purpose except for financial speculation of any nature (Persons engaged in Property development/ property dealings/ brokers, share/stock brokers and persons engaged in any speculative activity NOT ELIGIBLE UNDER THE SCHEME)\r\n\r\nHUF / TRUST/ PUBLIC LIMITED COMPANY ARE NOT ELIGBLE UNDER THE SCHEME.', 'Null');

-- --------------------------------------------------------

--
-- Table structure for table `loanbooked`
--

CREATE TABLE `loanbooked` (
  `id` int(11) NOT NULL,
  `User_ac` text NOT NULL,
  `Loan_id` text NOT NULL,
  `Status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loanbooked`
--

INSERT INTO `loanbooked` (`id`, `User_ac`, `Loan_id`, `Status`) VALUES
(1, 'OWZM9N2YQE\r\n', 'XYZ12345', 'Reject'),
(2, 'KQG5MZWMMD', '978GW309CQ', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `Account_No` varchar(100) DEFAULT NULL,
  `Name` text DEFAULT NULL,
  `Photo` text DEFAULT NULL,
  `Phone` text DEFAULT NULL,
  `Email` text DEFAULT NULL,
  `Aadhar` text DEFAULT NULL,
  `Pan` text DEFAULT NULL,
  `Password` text DEFAULT NULL,
  `Loan_id` text DEFAULT NULL,
  `Amount` float DEFAULT NULL,
  `Balance` double DEFAULT NULL,
  `Intrest` double DEFAULT NULL,
  `Intrate` double DEFAULT NULL,
  `Loan_Date` date DEFAULT NULL,
  `Pay_Date` date DEFAULT NULL,
  `Payment` date DEFAULT NULL,
  `Login` tinyint(1) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Account_No`, `Name`, `Photo`, `Phone`, `Email`, `Aadhar`, `Pan`, `Password`, `Loan_id`, `Amount`, `Balance`, `Intrest`, `Intrate`, `Loan_Date`, `Pay_Date`, `Payment`, `Login`, `Status`) VALUES
(7, 'OWZM9N2YQE', 'Krishna Kumar Rajendra Prasad Pal', 'profile/user.png', '9819753541', 'krishnakumar.pal@somaiya.edu', '1234RFGG', 'JP12RT5423', 'Tata@123', 'XYZ12345', 10000000, 10000000, 600000, 3, '2021-08-06', '2023-01-15', '2021-07-06', 0, NULL),
(8, '5D7ECQLAOO', 'Chetan Prajapat', 'profile/user3.png', '8318031071', 'krishnapal@gmail.com', '1234RFGG', 'AAAAA1234A', 'Tata@123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(9, 'KQG5MZWMMD', 'Swati Pal', 'profile/icon.png', '9819753541', 'SumitVish@gmail.com', '1234RFGG', 'JP12RT5423', 'Tata@123', '978GW309CQ', 600000, 600000, 60000, 10, '2021-07-05', '2031-07-05', '2021-07-05', 0, 1),
(10, 'B7KKLQHZVB', 'Krishna Kumar Rajendra Prasad Pal', 'profile/newsbanner.png', '8318031071', 'SumitVish@gmail.com', '1234RFGG', 'AAAAA1234A', 'Tata@123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(11, 'NE9BMLLHWE', 'राजनाथ', 'profile/user3.png', '8318031071', 'kk.pl2545@gmail.com', '1234RFGG', 'GCJP12345678', 'Tata@123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Loan_id` (`Loan_id`);

--
-- Indexes for table `loanbooked`
--
ALTER TABLE `loanbooked`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `Account_No` (`Account_No`),
  ADD UNIQUE KEY `Account_No_2` (`Account_No`),
  ADD UNIQUE KEY `id_2` (`id`,`Account_No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `loanbooked`
--
ALTER TABLE `loanbooked`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
