<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:od="urn:schemas-microsoft-com:officedata" xmlns:my="http://schemas.microsoft.com/office/infopath/2003/myXSD/2018-05-07T13:30:50" xmlns:xd="http://schemas.microsoft.com/office/infopath/2003" version="1.0">
	<xsl:output encoding="UTF-8" method="xml"/>
	<xsl:template match="text() | *[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText">
		<xsl:copy-of select="."/>
	</xsl:template>
	<xsl:template match="/">
		<xsl:copy-of select="processing-instruction() | comment()"/>
		<xsl:choose>
			<xsl:when test="my:myFields">
				<xsl:apply-templates select="my:myFields" mode="_0"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:variable name="var">
					<xsl:element name="my:myFields"/>
				</xsl:variable>
				<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_0"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="my:ResponsibleMinister" mode="_5">
		<xsl:copy>
			<xsl:element name="my:TitleOfMinister">
				<xsl:copy-of select="my:TitleOfMinister/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:LeadMinister">
				<xsl:choose>
					<xsl:when test="my:LeadMinister/text()[1]">
						<xsl:copy-of select="my:LeadMinister/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>true</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:field1">
				<xsl:copy-of select="my:field1/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:ResponsibleDeputyHead" mode="_6">
		<xsl:copy>
			<xsl:element name="my:NameOfDeputyHead">
				<xsl:copy-of select="my:NameOfDeputyHead/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:TitleOfDeputyHead">
				<xsl:copy-of select="my:TitleOfDeputyHead/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:LeadDeputyHead">
				<xsl:choose>
					<xsl:when test="my:LeadDeputyHead/text()[1]">
						<xsl:copy-of select="my:LeadDeputyHead/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>true</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:AutomaticlegislativeOrRegulatoryReviewClause" mode="_8">
		<xsl:copy>
			<xsl:element name="my:AutomaticRegReviewCaluseIndicator">
				<xsl:choose>
					<xsl:when test="my:AutomaticRegReviewCaluseIndicator/text()[1]">
						<xsl:copy-of select="my:AutomaticRegReviewCaluseIndicator/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:Frequency">
				<xsl:copy-of select="my:Frequency/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:StatutoryProvision">
				<xsl:choose>
					<xsl:when test="my:StatutoryProvision/text()[1]">
						<xsl:copy-of select="my:StatutoryProvision/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TitleOfStatutoryProvision">
				<xsl:copy-of select="my:TitleOfStatutoryProvision/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:RegulationsUnderAct" mode="_7">
		<xsl:copy>
			<xsl:element name="my:RegulationId">
				<xsl:copy-of select="my:RegulationId/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:ProportionOfRegsetAttribution">
				<xsl:choose>
					<xsl:when test="my:ProportionOfRegsetAttribution/text()[1]">
						<xsl:copy-of select="my:ProportionOfRegsetAttribution/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>100</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:AutomaticlegislativeOrRegulatoryReviewClause">
					<xsl:apply-templates select="my:AutomaticlegislativeOrRegulatoryReviewClause[1]" mode="_8"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:AutomaticlegislativeOrRegulatoryReviewClause"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_8"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:Acts" mode="_4">
		<xsl:copy>
			<xsl:element name="my:ActID">
				<xsl:copy-of select="my:ActID/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:YearEnacted">
				<xsl:copy-of select="my:YearEnacted/text()[1]"/>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:ResponsibleMinister">
					<xsl:apply-templates select="my:ResponsibleMinister" mode="_5"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:ResponsibleMinister"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_5"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:ResponsibleDeputyHead">
					<xsl:apply-templates select="my:ResponsibleDeputyHead" mode="_6"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:ResponsibleDeputyHead"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_6"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:RegulationsUnderAct">
					<xsl:apply-templates select="my:RegulationsUnderAct" mode="_7"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:RegulationsUnderAct"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_7"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:CompositionOfRegulatuionSet" mode="_3">
		<xsl:copy>
			<xsl:choose>
				<xsl:when test="my:Acts">
					<xsl:apply-templates select="my:Acts" mode="_4"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:Acts"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_4"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:LinkToCanadaGazette" mode="_11">
		<xsl:copy>
			<xsl:copy-of select="./text()[1]"/>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:YearOfLastModification" mode="_10">
		<xsl:copy>
			<xsl:element name="my:YearOfLastModificationYYYY">
				<xsl:choose>
					<xsl:when test="my:YearOfLastModificationYYYY/text()[1]">
						<xsl:copy-of select="my:YearOfLastModificationYYYY/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:NatureOfModificationREFERENCE">
				<xsl:copy-of select="my:NatureOfModificationREFERENCE/text()[1]"/>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:LinkToCanadaGazette">
					<xsl:apply-templates select="my:LinkToCanadaGazette" mode="_11"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:LinkToCanadaGazette"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_11"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:TypeOfConsultations" mode="_14">
		<xsl:copy>
			<xsl:element name="my:PublicConsultations">
				<xsl:choose>
					<xsl:when test="my:PublicConsultations/text()[1]">
						<xsl:copy-of select="my:PublicConsultations/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:StakeholderConsultations">
				<xsl:choose>
					<xsl:when test="my:StakeholderConsultations/text()[1]">
						<xsl:copy-of select="my:StakeholderConsultations/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:GovernmentConsultations">
				<xsl:choose>
					<xsl:when test="my:GovernmentConsultations/text()[1]">
						<xsl:copy-of select="my:GovernmentConsultations/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:OtherConsultations">
				<xsl:choose>
					<xsl:when test="my:OtherConsultations/text()[1]">
						<xsl:copy-of select="my:OtherConsultations/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:OtherConsultationsDescription">
				<xsl:copy-of select="my:OtherConsultationsDescription/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:MechanismOfConsultation" mode="_15">
		<xsl:copy>
			<xsl:element name="my:InPerson">
				<xsl:choose>
					<xsl:when test="my:InPerson/text()[1]">
						<xsl:copy-of select="my:InPerson/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:Online">
				<xsl:choose>
					<xsl:when test="my:Online/text()[1]">
						<xsl:copy-of select="my:Online/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:WrittenSubmission">
				<xsl:choose>
					<xsl:when test="my:WrittenSubmission/text()[1]">
						<xsl:copy-of select="my:WrittenSubmission/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:OtherConsultationMechanism">
				<xsl:choose>
					<xsl:when test="my:OtherConsultationMechanism/text()[1]">
						<xsl:copy-of select="my:OtherConsultationMechanism/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:OtherConsulatationMechanismDescription">
				<xsl:copy-of select="my:OtherConsulatationMechanismDescription/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:LinkToWhatWeHeardDocument" mode="_16">
		<xsl:copy>
			<xsl:copy-of select="./text()[1]"/>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:LinkToConsultationDocument" mode="_17">
		<xsl:copy>
			<xsl:copy-of select="./text()[1]"/>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:Consultations" mode="_13">
		<xsl:copy>
			<xsl:choose>
				<xsl:when test="my:TypeOfConsultations">
					<xsl:apply-templates select="my:TypeOfConsultations[1]" mode="_14"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:TypeOfConsultations"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_14"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:MechanismOfConsultation">
					<xsl:apply-templates select="my:MechanismOfConsultation[1]" mode="_15"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:MechanismOfConsultation"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_15"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:LinkToWhatWeHeardDocument">
					<xsl:apply-templates select="my:LinkToWhatWeHeardDocument" mode="_16"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:LinkToWhatWeHeardDocument"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_16"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:LinkToConsultationDocument">
					<xsl:apply-templates select="my:LinkToConsultationDocument" mode="_17"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:LinkToConsultationDocument"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_17"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:element name="my:LengthOfTimeForConsultations">
				<xsl:copy-of select="my:LengthOfTimeForConsultations/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:ResourcesForReview" mode="_18">
		<xsl:copy>
			<xsl:element name="my:LengthOfTImeForComprehensiveChanges">
				<xsl:copy-of select="my:LengthOfTImeForComprehensiveChanges/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:LengthOfTImeForSpecificChanges">
				<xsl:copy-of select="my:LengthOfTImeForSpecificChanges/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:LengthOfTImeForTechnicalChanges">
				<xsl:copy-of select="my:LengthOfTImeForTechnicalChanges/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:NumberOfFTEYears">
				<xsl:copy-of select="my:NumberOfFTEYears/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:YearOfLastComprehensiveReview" mode="_12">
		<xsl:copy>
			<xsl:element name="my:YearOfLAstComprehensiveReviewYYY">
				<xsl:choose>
					<xsl:when test="my:YearOfLAstComprehensiveReviewYYY/text()[1]">
						<xsl:copy-of select="my:YearOfLAstComprehensiveReviewYYY/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:ObjectOfReview">
				<xsl:apply-templates select="my:ObjectOfReview/text() | my:ObjectOfReview/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
			<xsl:element name="my:PartOfStatutoryReview">
				<xsl:choose>
					<xsl:when test="my:PartOfStatutoryReview/text()[1]">
						<xsl:copy-of select="my:PartOfStatutoryReview/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:OtherRegulationAndOrNonRegulationInstruments">
				<xsl:apply-templates select="my:OtherRegulationAndOrNonRegulationInstruments/text() | my:OtherRegulationAndOrNonRegulationInstruments/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:Consultations">
					<xsl:apply-templates select="my:Consultations[1]" mode="_13"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:Consultations"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_13"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:ResourcesForReview">
					<xsl:apply-templates select="my:ResourcesForReview[1]" mode="_18"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:ResourcesForReview"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_18"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:PerformanceEvaluation" mode="_19">
		<xsl:copy>
			<xsl:element name="my:IndicatorsForEvaluationRegulatoryPerformance">
				<xsl:apply-templates select="my:IndicatorsForEvaluationRegulatoryPerformance/text() | my:IndicatorsForEvaluationRegulatoryPerformance/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
			<xsl:element name="my:LinkToEvaluationPlan">
				<xsl:copy-of select="my:LinkToEvaluationPlan/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:ListOfIncorporatedDocuments" mode="_22">
		<xsl:copy>
			<xsl:element name="my:ResponsibleOfficialName">
				<xsl:copy-of select="my:ResponsibleOfficialName/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:ResponsibleOfficialEmail">
				<xsl:copy-of select="my:ResponsibleOfficialEmail/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:IncorporatedDocumentLink">
				<xsl:copy-of select="my:IncorporatedDocumentLink/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:IncorporationByReference" mode="_21">
		<xsl:copy>
			<xsl:element name="my:IncorporatedReferenceUsedIndicator">
				<xsl:choose>
					<xsl:when test="my:IncorporatedReferenceUsedIndicator/text()[1]">
						<xsl:copy-of select="my:IncorporatedReferenceUsedIndicator/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TypeOfIncorporatedReferenceUsed">
				<xsl:copy-of select="my:TypeOfIncorporatedReferenceUsed/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:DescribeTheExtentToWhichIncorporationOfStandardsOrDocumentsAreNotAccredited">
				<xsl:apply-templates select="my:DescribeTheExtentToWhichIncorporationOfStandardsOrDocumentsAreNotAccredited/text() | my:DescribeTheExtentToWhichIncorporationOfStandardsOrDocumentsAreNotAccredited/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:ListOfIncorporatedDocuments">
					<xsl:apply-templates select="my:ListOfIncorporatedDocuments" mode="_22"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:ListOfIncorporatedDocuments"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_22"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:CurrentUsageOfMethods" mode="_23">
		<xsl:copy>
			<xsl:element name="my:IncorporationByReferenceUsed">
				<xsl:choose>
					<xsl:when test="my:IncorporationByReferenceUsed/text()[1]">
						<xsl:copy-of select="my:IncorporationByReferenceUsed/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:SystemsBasedUsed">
				<xsl:choose>
					<xsl:when test="my:SystemsBasedUsed/text()[1]">
						<xsl:copy-of select="my:SystemsBasedUsed/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:PerformanceBasedUsed">
				<xsl:choose>
					<xsl:when test="my:PerformanceBasedUsed/text()[1]">
						<xsl:copy-of select="my:PerformanceBasedUsed/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:RecognitionOfThirdPartyPrivateStandardsInRegulationsUsed">
				<xsl:choose>
					<xsl:when test="my:RecognitionOfThirdPartyPrivateStandardsInRegulationsUsed/text()[1]">
						<xsl:copy-of select="my:RecognitionOfThirdPartyPrivateStandardsInRegulationsUsed/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:InternationalRegulatoryCooperationIntegratedInRegulationsUsed">
				<xsl:choose>
					<xsl:when test="my:InternationalRegulatoryCooperationIntegratedInRegulationsUsed/text()[1]">
						<xsl:copy-of select="my:InternationalRegulatoryCooperationIntegratedInRegulationsUsed/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:ProvincialTerritorialRegulatoryCooperationIntegratedInRegulationsUsed">
				<xsl:choose>
					<xsl:when test="my:ProvincialTerritorialRegulatoryCooperationIntegratedInRegulationsUsed/text()[1]">
						<xsl:copy-of select="my:ProvincialTerritorialRegulatoryCooperationIntegratedInRegulationsUsed/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:RegulatorySandboxUsed">
				<xsl:choose>
					<xsl:when test="my:RegulatorySandboxUsed/text()[1]">
						<xsl:copy-of select="my:RegulatorySandboxUsed/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DescribeCurrentUsesOfRegulatorySandboxUsed">
				<xsl:apply-templates select="my:DescribeCurrentUsesOfRegulatorySandboxUsed/text() | my:DescribeCurrentUsesOfRegulatorySandboxUsed/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
			<xsl:element name="my:OtherMethodsUsed">
				<xsl:choose>
					<xsl:when test="my:OtherMethodsUsed/text()[1]">
						<xsl:copy-of select="my:OtherMethodsUsed/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DescripbeOtherMethodsUsed">
				<xsl:apply-templates select="my:DescripbeOtherMethodsUsed/text() | my:DescripbeOtherMethodsUsed/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:PlannedUsageOfMethods" mode="_24">
		<xsl:copy>
			<xsl:element name="my:IncorporationByReferencePlanned">
				<xsl:choose>
					<xsl:when test="my:IncorporationByReferencePlanned/text()[1]">
						<xsl:copy-of select="my:IncorporationByReferencePlanned/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:SystemsBasedPlanned">
				<xsl:choose>
					<xsl:when test="my:SystemsBasedPlanned/text()[1]">
						<xsl:copy-of select="my:SystemsBasedPlanned/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:PerformanceBasedPlanned">
				<xsl:choose>
					<xsl:when test="my:PerformanceBasedPlanned/text()[1]">
						<xsl:copy-of select="my:PerformanceBasedPlanned/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:RecognitionOfThirdPartyPrivateStandardsInRegulationsPlanned">
				<xsl:choose>
					<xsl:when test="my:RecognitionOfThirdPartyPrivateStandardsInRegulationsPlanned/text()[1]">
						<xsl:copy-of select="my:RecognitionOfThirdPartyPrivateStandardsInRegulationsPlanned/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:InternationalRegulatoryCooperationIntegratedInRegulationsPlanned">
				<xsl:choose>
					<xsl:when test="my:InternationalRegulatoryCooperationIntegratedInRegulationsPlanned/text()[1]">
						<xsl:copy-of select="my:InternationalRegulatoryCooperationIntegratedInRegulationsPlanned/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:ProvincialTerritorialRegulatoryCooperationIntegratedInRegulationsPlanned">
				<xsl:choose>
					<xsl:when test="my:ProvincialTerritorialRegulatoryCooperationIntegratedInRegulationsPlanned/text()[1]">
						<xsl:copy-of select="my:ProvincialTerritorialRegulatoryCooperationIntegratedInRegulationsPlanned/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:RegulatorySandboxPlanned">
				<xsl:choose>
					<xsl:when test="my:RegulatorySandboxPlanned/text()[1]">
						<xsl:copy-of select="my:RegulatorySandboxPlanned/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DesccribeRegulatorySandboxPlanned">
				<xsl:apply-templates select="my:DesccribeRegulatorySandboxPlanned/text() | my:DesccribeRegulatorySandboxPlanned/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
			<xsl:element name="my:OtherMethodsPlanned">
				<xsl:choose>
					<xsl:when test="my:OtherMethodsPlanned/text()[1]">
						<xsl:copy-of select="my:OtherMethodsPlanned/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DesccribeOtherRegulatoryMethodsPlanned">
				<xsl:apply-templates select="my:DesccribeOtherRegulatoryMethodsPlanned/text() | my:DesccribeOtherRegulatoryMethodsPlanned/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:RepealedRegulation" mode="_25">
		<xsl:copy>
			<xsl:element name="my:RegulationHasBeenRepealedAndNotReplaced">
				<xsl:choose>
					<xsl:when test="my:RegulationHasBeenRepealedAndNotReplaced/text()[1]">
						<xsl:copy-of select="my:RegulationHasBeenRepealedAndNotReplaced/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:RepealedNotReplacedRationale">
				<xsl:apply-templates select="my:RepealedNotReplacedRationale/text() | my:RepealedNotReplacedRationale/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:RegulatoryModernization" mode="_20">
		<xsl:copy>
			<xsl:element name="my:StatementOfRegulatoryBestPractice">
				<xsl:choose>
					<xsl:when test="my:StatementOfRegulatoryBestPractice/text()[1]">
						<xsl:copy-of select="my:StatementOfRegulatoryBestPractice/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:LinkToStatementOfRegulatoryBestPractice">
				<xsl:copy-of select="my:LinkToStatementOfRegulatoryBestPractice/text()[1]"/>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:IncorporationByReference">
					<xsl:apply-templates select="my:IncorporationByReference[1]" mode="_21"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:IncorporationByReference"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_21"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:CurrentUsageOfMethods">
					<xsl:apply-templates select="my:CurrentUsageOfMethods[1]" mode="_23"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:CurrentUsageOfMethods"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_23"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:PlannedUsageOfMethods">
					<xsl:apply-templates select="my:PlannedUsageOfMethods[1]" mode="_24"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:PlannedUsageOfMethods"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_24"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:RepealedRegulation">
					<xsl:apply-templates select="my:RepealedRegulation[1]" mode="_25"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:RepealedRegulation"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_25"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:element name="my:DescriptionOfBestPracticesSupportingSMEs">
				<xsl:apply-templates select="my:DescriptionOfBestPracticesSupportingSMEs/text() | my:DescriptionOfBestPracticesSupportingSMEs/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
			<xsl:element name="my:DescriptionOfAnyOtherBestPracticesSupportingInnovation">
				<xsl:apply-templates select="my:DescriptionOfAnyOtherBestPracticesSupportingInnovation/text() | my:DescriptionOfAnyOtherBestPracticesSupportingInnovation/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
			<xsl:element name="my:DescriptionOfChallengesOrConstraintsToRegulatoryModernization">
				<xsl:apply-templates select="my:DescriptionOfChallengesOrConstraintsToRegulatoryModernization/text() | my:DescriptionOfChallengesOrConstraintsToRegulatoryModernization/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
			<xsl:element name="my:DescribeHowAlignmentToConsiderationWIthOtherJurisdictionsAreUndertakenWhenDevelopingRegulations">
				<xsl:apply-templates select="my:DescribeHowAlignmentToConsiderationWIthOtherJurisdictionsAreUndertakenWhenDevelopingRegulations/text() | my:DescribeHowAlignmentToConsiderationWIthOtherJurisdictionsAreUndertakenWhenDevelopingRegulations/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
			<xsl:element name="my:OtherModernizationConsiderations">
				<xsl:apply-templates select="my:OtherModernizationConsiderations/text() | my:OtherModernizationConsiderations/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:PurposeOfDatabase" mode="_28">
		<xsl:copy>
			<xsl:element name="my:DBForRiskAssessment">
				<xsl:choose>
					<xsl:when test="my:DBForRiskAssessment/text()[1]">
						<xsl:copy-of select="my:DBForRiskAssessment/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DBForPermissions">
				<xsl:choose>
					<xsl:when test="my:DBForPermissions/text()[1]">
						<xsl:copy-of select="my:DBForPermissions/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DBForComplianceVerification">
				<xsl:choose>
					<xsl:when test="my:DBForComplianceVerification/text()[1]">
						<xsl:copy-of select="my:DBForComplianceVerification/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DBForEnforcement">
				<xsl:choose>
					<xsl:when test="my:DBForEnforcement/text()[1]">
						<xsl:copy-of select="my:DBForEnforcement/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DBForPublicReporting">
				<xsl:choose>
					<xsl:when test="my:DBForPublicReporting/text()[1]">
						<xsl:copy-of select="my:DBForPublicReporting/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DBForOtherPurposes">
				<xsl:choose>
					<xsl:when test="my:DBForOtherPurposes/text()[1]">
						<xsl:copy-of select="my:DBForOtherPurposes/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DBOtherPurposeDescription">
				<xsl:apply-templates select="my:DBOtherPurposeDescription/text() | my:DBOtherPurposeDescription/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:DBRelatedToBusiness" mode="_29">
		<xsl:copy>
			<xsl:element name="my:DBHoldsInformationRelatedToBusiness">
				<xsl:choose>
					<xsl:when test="my:DBHoldsInformationRelatedToBusiness/text()[1]">
						<xsl:copy-of select="my:DBHoldsInformationRelatedToBusiness/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DBUsesBusinessRegistrationNumbers">
				<xsl:choose>
					<xsl:when test="my:DBUsesBusinessRegistrationNumbers/text()[1]">
						<xsl:copy-of select="my:DBUsesBusinessRegistrationNumbers/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DBUsesNAICSCodes">
				<xsl:choose>
					<xsl:when test="my:DBUsesNAICSCodes/text()[1]">
						<xsl:copy-of select="my:DBUsesNAICSCodes/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:Infosource" mode="_30">
		<xsl:copy>
			<xsl:element name="my:InfosourceIndicator">
				<xsl:choose>
					<xsl:when test="my:InfosourceIndicator/text()[1]">
						<xsl:copy-of select="my:InfosourceIndicator/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:InfosourceLink">
				<xsl:copy-of select="my:InfosourceLink/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:DatabaseOnRegulatedParties" mode="_27">
		<xsl:copy>
			<xsl:element name="my:NameOfDatabase">
				<xsl:copy-of select="my:NameOfDatabase/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:DescriptionOfDatabase">
				<xsl:apply-templates select="my:DescriptionOfDatabase/text() | my:DescriptionOfDatabase/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
			<xsl:element name="my:NameOfDatabaseOfficial">
				<xsl:copy-of select="my:NameOfDatabaseOfficial/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:TitleOfDatabaseOfficial">
				<xsl:copy-of select="my:TitleOfDatabaseOfficial/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:EmailOfDatabaseOfficial">
				<xsl:copy-of select="my:EmailOfDatabaseOfficial/text()[1]"/>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:PurposeOfDatabase">
					<xsl:apply-templates select="my:PurposeOfDatabase[1]" mode="_28"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:PurposeOfDatabase"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_28"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:DBRelatedToBusiness">
					<xsl:apply-templates select="my:DBRelatedToBusiness[1]" mode="_29"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:DBRelatedToBusiness"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_29"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:element name="my:DBHoldsInformationRelatedToIndividuals">
				<xsl:choose>
					<xsl:when test="my:DBHoldsInformationRelatedToIndividuals/text()[1]">
						<xsl:copy-of select="my:DBHoldsInformationRelatedToIndividuals/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:Infosource">
					<xsl:apply-templates select="my:Infosource[1]" mode="_30"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:Infosource"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_30"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:DataHoldings" mode="_26">
		<xsl:copy>
			<xsl:choose>
				<xsl:when test="my:DatabaseOnRegulatedParties">
					<xsl:apply-templates select="my:DatabaseOnRegulatedParties" mode="_27"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:DatabaseOnRegulatedParties"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_27"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:Fall2018OmnibusSubmissionForRegulatoryChange" mode="_32">
		<xsl:copy>
			<xsl:element name="my:InterestedInFall2018OmnibusSubmission">
				<xsl:choose>
					<xsl:when test="my:InterestedInFall2018OmnibusSubmission/text()[1]">
						<xsl:copy-of select="my:InterestedInFall2018OmnibusSubmission/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DescriptionOfNatureOfChangeIncludingSystemAndOrTechnicalChanges">
				<xsl:apply-templates select="my:DescriptionOfNatureOfChangeIncludingSystemAndOrTechnicalChanges/text() | my:DescriptionOfNatureOfChangeIncludingSystemAndOrTechnicalChanges/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:UpComingRegulatoryAgenda" mode="_31">
		<xsl:copy>
			<xsl:element name="my:TopPrioritiesForRegulatoryModernization">
				<xsl:apply-templates select="my:TopPrioritiesForRegulatoryModernization/text() | my:TopPrioritiesForRegulatoryModernization/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
			<xsl:element name="my:DescribeAnyCurrentAndOrForeseeableResourcePressuresOnTheOrganizationToDeliverOnTopPrioritiesPlansAndOrForRegulatoryMod">
				<xsl:apply-templates select="my:DescribeAnyCurrentAndOrForeseeableResourcePressuresOnTheOrganizationToDeliverOnTopPrioritiesPlansAndOrForRegulatoryMod/text() | my:DescribeAnyCurrentAndOrForeseeableResourcePressuresOnTheOrganizationToDeliverOnTopPrioritiesPlansAndOrForRegulatoryMod/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
			<xsl:element name="my:DescribePlansForRegulatoryModernizationIfUnconstrainedByTimeaaResourcesOrProcesses">
				<xsl:apply-templates select="my:DescribePlansForRegulatoryModernizationIfUnconstrainedByTimeaaResourcesOrProcesses/text() | my:DescribePlansForRegulatoryModernizationIfUnconstrainedByTimeaaResourcesOrProcesses/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:Fall2018OmnibusSubmissionForRegulatoryChange">
					<xsl:apply-templates select="my:Fall2018OmnibusSubmissionForRegulatoryChange[1]" mode="_32"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:Fall2018OmnibusSubmissionForRegulatoryChange"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_32"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:element name="my:OtherCommentsOnUpcomingRegluatoryAgenda">
				<xsl:apply-templates select="my:OtherCommentsOnUpcomingRegluatoryAgenda/text() | my:OtherCommentsOnUpcomingRegluatoryAgenda/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:RegSetContacts" mode="_33">
		<xsl:copy>
			<xsl:element name="my:Name">
				<xsl:copy-of select="my:Name/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:Title">
				<xsl:copy-of select="my:Title/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:Email">
				<xsl:copy-of select="my:Email/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:Role">
				<xsl:copy-of select="my:Role/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:RegSetPolicyFeatures" mode="_9">
		<xsl:copy>
			<xsl:choose>
				<xsl:when test="my:YearOfLastModification">
					<xsl:apply-templates select="my:YearOfLastModification[1]" mode="_10"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:YearOfLastModification"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_10"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:YearOfLastComprehensiveReview">
					<xsl:apply-templates select="my:YearOfLastComprehensiveReview[1]" mode="_12"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:YearOfLastComprehensiveReview"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_12"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:PerformanceEvaluation">
					<xsl:apply-templates select="my:PerformanceEvaluation[1]" mode="_19"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:PerformanceEvaluation"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_19"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:RegulatoryModernization">
					<xsl:apply-templates select="my:RegulatoryModernization[1]" mode="_20"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:RegulatoryModernization"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_20"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:DataHoldings">
					<xsl:apply-templates select="my:DataHoldings[1]" mode="_26"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:DataHoldings"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_26"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:UpComingRegulatoryAgenda">
					<xsl:apply-templates select="my:UpComingRegulatoryAgenda[1]" mode="_31"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:UpComingRegulatoryAgenda"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_31"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:element name="my:OtherCommentsOnRegSetPolicyFeatures">
				<xsl:apply-templates select="my:OtherCommentsOnRegSetPolicyFeatures/text() | my:OtherCommentsOnRegSetPolicyFeatures/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:RegSetContacts">
					<xsl:apply-templates select="my:RegSetContacts" mode="_33"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:RegSetContacts"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_33"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:NatureOfTheRiskAssessment" mode="_36">
		<xsl:copy>
			<xsl:element name="my:InternalRiskAssessment">
				<xsl:choose>
					<xsl:when test="my:InternalRiskAssessment/text()[1]">
						<xsl:copy-of select="my:InternalRiskAssessment/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:QuantitativeMeasure">
				<xsl:choose>
					<xsl:when test="my:QuantitativeMeasure/text()[1]">
						<xsl:copy-of select="my:QuantitativeMeasure/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:InformedByExternalRiskManagementExperts">
				<xsl:choose>
					<xsl:when test="my:InformedByExternalRiskManagementExperts/text()[1]">
						<xsl:copy-of select="my:InformedByExternalRiskManagementExperts/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:PeerReviewedByRegulatoryCommunity">
				<xsl:choose>
					<xsl:when test="my:PeerReviewedByRegulatoryCommunity/text()[1]">
						<xsl:copy-of select="my:PeerReviewedByRegulatoryCommunity/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:OtherRiskAssessmentFeature">
				<xsl:choose>
					<xsl:when test="my:OtherRiskAssessmentFeature/text()[1]">
						<xsl:copy-of select="my:OtherRiskAssessmentFeature/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:OtherRiskAssessmentDescription">
				<xsl:apply-templates select="my:OtherRiskAssessmentDescription/text() | my:OtherRiskAssessmentDescription/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:RiskAssessmentFunction" mode="_35">
		<xsl:copy>
			<xsl:element name="my:FormalRiskAssessmantFunction">
				<xsl:choose>
					<xsl:when test="my:FormalRiskAssessmantFunction/text()[1]">
						<xsl:copy-of select="my:FormalRiskAssessmantFunction/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:FormalRiskAssessmentProcess">
				<xsl:choose>
					<xsl:when test="my:FormalRiskAssessmentProcess/text()[1]">
						<xsl:copy-of select="my:FormalRiskAssessmentProcess/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:NatureOfTheRiskAssessment">
					<xsl:apply-templates select="my:NatureOfTheRiskAssessment[1]" mode="_36"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:NatureOfTheRiskAssessment"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_36"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:RiskManagementFunction" mode="_37">
		<xsl:copy>
			<xsl:element name="my:ThereIsAnExplicitRiskManagmentFunction">
				<xsl:choose>
					<xsl:when test="my:ThereIsAnExplicitRiskManagmentFunction/text()[1]">
						<xsl:copy-of select="my:ThereIsAnExplicitRiskManagmentFunction/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:TheRiskManagmentFunctionIsSeparateFromOtherFunctions">
				<xsl:choose>
					<xsl:when test="my:TheRiskManagmentFunctionIsSeparateFromOtherFunctions/text()[1]">
						<xsl:copy-of select="my:TheRiskManagmentFunctionIsSeparateFromOtherFunctions/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DescribePrimaryRiskManagementTools">
				<xsl:apply-templates select="my:DescribePrimaryRiskManagementTools/text() | my:DescribePrimaryRiskManagementTools/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:PermissionFunction" mode="_38">
		<xsl:copy>
			<xsl:element name="my:ThereIsAPermissionsFunction">
				<xsl:choose>
					<xsl:when test="my:ThereIsAPermissionsFunction/text()[1]">
						<xsl:copy-of select="my:ThereIsAPermissionsFunction/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AnnualVolumeOfPermissions">
				<xsl:copy-of select="my:AnnualVolumeOfPermissions/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:ExAntePermissionsFunction">
				<xsl:choose>
					<xsl:when test="my:ExAntePermissionsFunction/text()[1]">
						<xsl:copy-of select="my:ExAntePermissionsFunction/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:Describethelevelofconfidanceinthepermissionsfunctioninservingthepopulationsubjecttotheregulation">
				<xsl:apply-templates select="my:Describethelevelofconfidanceinthepermissionsfunctioninservingthepopulationsubjecttotheregulation/text() | my:Describethelevelofconfidanceinthepermissionsfunctioninservingthepopulationsubjecttotheregulation/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
			<xsl:element name="my:OtherPermissionsFunctionsComments">
				<xsl:apply-templates select="my:OtherPermissionsFunctionsComments/text() | my:OtherPermissionsFunctionsComments/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:ComplianceInformation" mode="_41">
		<xsl:copy>
			<xsl:element name="my:ComplianceInformationIndicator">
				<xsl:choose>
					<xsl:when test="my:ComplianceInformationIndicator/text()[1]">
						<xsl:copy-of select="my:ComplianceInformationIndicator/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:ComplianceInformationURL">
				<xsl:copy-of select="my:ComplianceInformationURL/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:ComplianceGuidance" mode="_42">
		<xsl:copy>
			<xsl:element name="my:ComplianceGuidanceIndicator">
				<xsl:choose>
					<xsl:when test="my:ComplianceGuidanceIndicator/text()[1]">
						<xsl:copy-of select="my:ComplianceGuidanceIndicator/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:ComplianceGuidanceURL">
				<xsl:copy-of select="my:ComplianceGuidanceURL/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:ComplianceOnlineServiceTools" mode="_43">
		<xsl:copy>
			<xsl:element name="my:ComplianceOnlineServiceToolsIndicator">
				<xsl:choose>
					<xsl:when test="my:ComplianceOnlineServiceToolsIndicator/text()[1]">
						<xsl:copy-of select="my:ComplianceOnlineServiceToolsIndicator/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:ComplianceOnlineServiceToolsURL">
				<xsl:copy-of select="my:ComplianceOnlineServiceToolsURL/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:ComplianceOnlineOrInPersonAssistance" mode="_44">
		<xsl:copy>
			<xsl:element name="my:ComplianceOnlineOrInPersonAssistanceIndicator">
				<xsl:choose>
					<xsl:when test="my:ComplianceOnlineOrInPersonAssistanceIndicator/text()[1]">
						<xsl:copy-of select="my:ComplianceOnlineOrInPersonAssistanceIndicator/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:ComplianceOnlineOrInPersonAssistanceURL">
				<xsl:copy-of select="my:ComplianceOnlineOrInPersonAssistanceURL/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:CompliancePromotionActivities" mode="_40">
		<xsl:copy>
			<xsl:choose>
				<xsl:when test="my:ComplianceInformation">
					<xsl:apply-templates select="my:ComplianceInformation[1]" mode="_41"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:ComplianceInformation"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_41"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:ComplianceGuidance">
					<xsl:apply-templates select="my:ComplianceGuidance[1]" mode="_42"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:ComplianceGuidance"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_42"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:ComplianceOnlineServiceTools">
					<xsl:apply-templates select="my:ComplianceOnlineServiceTools[1]" mode="_43"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:ComplianceOnlineServiceTools"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_43"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:ComplianceOnlineOrInPersonAssistance">
					<xsl:apply-templates select="my:ComplianceOnlineOrInPersonAssistance[1]" mode="_44"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:ComplianceOnlineOrInPersonAssistance"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_44"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:element name="my:ComplianceOtherTools">
				<xsl:apply-templates select="my:ComplianceOtherTools/text() | my:ComplianceOtherTools/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:CompliancePromotionFunction" mode="_39">
		<xsl:copy>
			<xsl:element name="my:CompliancePromotionFunctionIndicator">
				<xsl:choose>
					<xsl:when test="my:CompliancePromotionFunctionIndicator/text()[1]">
						<xsl:copy-of select="my:CompliancePromotionFunctionIndicator/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:CompliancePromotionActivities">
					<xsl:apply-templates select="my:CompliancePromotionActivities[1]" mode="_40"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:CompliancePromotionActivities"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_40"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:ComplianceVerificationCrossDesignation" mode="_46">
		<xsl:copy>
			<xsl:element name="my:ComplianceVerificationCrossDesignationIndicator">
				<xsl:choose>
					<xsl:when test="my:ComplianceVerificationCrossDesignationIndicator/text()[1]">
						<xsl:copy-of select="my:ComplianceVerificationCrossDesignationIndicator/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:ComplianceVerificationCrossDesignationOrganizationType">
				<xsl:copy-of select="my:ComplianceVerificationCrossDesignationOrganizationType/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:ComplianceVerificationFunction" mode="_45">
		<xsl:copy>
			<xsl:element name="my:ComplianceVerificationIndicator">
				<xsl:choose>
					<xsl:when test="my:ComplianceVerificationIndicator/text()[1]">
						<xsl:copy-of select="my:ComplianceVerificationIndicator/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:ComplianceVerificationNameOfAdministrativeOrganization">
				<xsl:copy-of select="my:ComplianceVerificationNameOfAdministrativeOrganization/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:ComplianceVerificationNameOfOfficial">
				<xsl:copy-of select="my:ComplianceVerificationNameOfOfficial/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:ComplianceVerificationEmailOfOfficial">
				<xsl:copy-of select="my:ComplianceVerificationEmailOfOfficial/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:ComplianceVerificationLevelOfDelegation">
				<xsl:copy-of select="my:ComplianceVerificationLevelOfDelegation/text()[1]"/>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:ComplianceVerificationCrossDesignation">
					<xsl:apply-templates select="my:ComplianceVerificationCrossDesignation[1]" mode="_46"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:ComplianceVerificationCrossDesignation"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_46"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:EnforcementFunctionDisclosure" mode="_48">
		<xsl:copy>
			<xsl:element name="my:EnforcementFunctionDisclosureIndicator">
				<xsl:choose>
					<xsl:when test="my:EnforcementFunctionDisclosureIndicator/text()[1]">
						<xsl:copy-of select="my:EnforcementFunctionDisclosureIndicator/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:EnforcementFunctionDisclosureFrequencyOfUse">
				<xsl:copy-of select="my:EnforcementFunctionDisclosureFrequencyOfUse/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:EnforcementFunctionAdminMonetaryPenalty" mode="_49">
		<xsl:copy>
			<xsl:element name="my:EnforcementFunctionAdminMonetaryPenaltyIndicator">
				<xsl:choose>
					<xsl:when test="my:EnforcementFunctionAdminMonetaryPenaltyIndicator/text()[1]">
						<xsl:copy-of select="my:EnforcementFunctionAdminMonetaryPenaltyIndicator/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:EnforcementFunctionAdminMonetaryPenaltyFrequencyOfUse">
				<xsl:copy-of select="my:EnforcementFunctionAdminMonetaryPenaltyFrequencyOfUse/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:EnforcementFunctionCriminalProsecution" mode="_50">
		<xsl:copy>
			<xsl:element name="my:EnforcementFunctionCriminalProsecutionIndicator">
				<xsl:choose>
					<xsl:when test="my:EnforcementFunctionCriminalProsecutionIndicator/text()[1]">
						<xsl:copy-of select="my:EnforcementFunctionCriminalProsecutionIndicator/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:EnforcementFunctionCriminalProsecutionFrequencyOfUse">
				<xsl:copy-of select="my:EnforcementFunctionCriminalProsecutionFrequencyOfUse/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:EnforcementFunctionOther" mode="_51">
		<xsl:copy>
			<xsl:element name="my:EnforcementFunctionOtherIndicator">
				<xsl:choose>
					<xsl:when test="my:EnforcementFunctionOtherIndicator/text()[1]">
						<xsl:copy-of select="my:EnforcementFunctionOtherIndicator/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:EnforcementFunctionOtherDescription">
				<xsl:copy-of select="my:EnforcementFunctionOtherDescription/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:EnforcementFunctionOtherFrequencyOfUse">
				<xsl:copy-of select="my:EnforcementFunctionOtherFrequencyOfUse/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:EnforcementFunction" mode="_47">
		<xsl:copy>
			<xsl:element name="my:EnforcementFunctionIndicator">
				<xsl:choose>
					<xsl:when test="my:EnforcementFunctionIndicator/text()[1]">
						<xsl:copy-of select="my:EnforcementFunctionIndicator/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:EnforcementFunctionDisclosure">
					<xsl:apply-templates select="my:EnforcementFunctionDisclosure[1]" mode="_48"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:EnforcementFunctionDisclosure"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_48"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:EnforcementFunctionAdminMonetaryPenalty">
					<xsl:apply-templates select="my:EnforcementFunctionAdminMonetaryPenalty[1]" mode="_49"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:EnforcementFunctionAdminMonetaryPenalty"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_49"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:EnforcementFunctionCriminalProsecution">
					<xsl:apply-templates select="my:EnforcementFunctionCriminalProsecution[1]" mode="_50"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:EnforcementFunctionCriminalProsecution"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_50"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:EnforcementFunctionOther">
					<xsl:apply-templates select="my:EnforcementFunctionOther[1]" mode="_51"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:EnforcementFunctionOther"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_51"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:AppealsFunctionNatureOfAppeals" mode="_53">
		<xsl:copy>
			<xsl:element name="my:AppealsFunctionNatureOfAppealsBinding">
				<xsl:choose>
					<xsl:when test="my:AppealsFunctionNatureOfAppealsBinding/text()[1]">
						<xsl:copy-of select="my:AppealsFunctionNatureOfAppealsBinding/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AppealsFunctionNatureOfAppealsNonBinding">
				<xsl:choose>
					<xsl:when test="my:AppealsFunctionNatureOfAppealsNonBinding/text()[1]">
						<xsl:copy-of select="my:AppealsFunctionNatureOfAppealsNonBinding/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:AppealsFunction" mode="_52">
		<xsl:copy>
			<xsl:element name="my:AppealsFunctionIndicator">
				<xsl:choose>
					<xsl:when test="my:AppealsFunctionIndicator/text()[1]">
						<xsl:copy-of select="my:AppealsFunctionIndicator/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:AppealsFunctionFreequencyOfUse">
				<xsl:copy-of select="my:AppealsFunctionFreequencyOfUse/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:AppealsFunctionOfficialName">
				<xsl:copy-of select="my:AppealsFunctionOfficialName/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:AppealsFunctionOfficialTitle">
				<xsl:copy-of select="my:AppealsFunctionOfficialTitle/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:AppealsFunctionOfficialEmail">
				<xsl:copy-of select="my:AppealsFunctionOfficialEmail/text()[1]"/>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:AppealsFunctionNatureOfAppeals">
					<xsl:apply-templates select="my:AppealsFunctionNatureOfAppeals[1]" mode="_53"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:AppealsFunctionNatureOfAppeals"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_53"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:RegSetManDataAnalytics" mode="_54">
		<xsl:copy>
			<xsl:element name="my:RegSetManDataAnalyticsIndicator">
				<xsl:choose>
					<xsl:when test="my:RegSetManDataAnalyticsIndicator/text()[1]">
						<xsl:copy-of select="my:RegSetManDataAnalyticsIndicator/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:RegSetManDataAnalyticsDescription">
				<xsl:apply-templates select="my:RegSetManDataAnalyticsDescription/text() | my:RegSetManDataAnalyticsDescription/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:RegSetManagement" mode="_34">
		<xsl:copy>
			<xsl:choose>
				<xsl:when test="my:RiskAssessmentFunction">
					<xsl:apply-templates select="my:RiskAssessmentFunction[1]" mode="_35"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:RiskAssessmentFunction"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_35"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:RiskManagementFunction">
					<xsl:apply-templates select="my:RiskManagementFunction[1]" mode="_37"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:RiskManagementFunction"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_37"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:PermissionFunction">
					<xsl:apply-templates select="my:PermissionFunction[1]" mode="_38"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:PermissionFunction"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_38"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:CompliancePromotionFunction">
					<xsl:apply-templates select="my:CompliancePromotionFunction[1]" mode="_39"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:CompliancePromotionFunction"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_39"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:ComplianceVerificationFunction">
					<xsl:apply-templates select="my:ComplianceVerificationFunction[1]" mode="_45"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:ComplianceVerificationFunction"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_45"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:EnforcementFunction">
					<xsl:apply-templates select="my:EnforcementFunction[1]" mode="_47"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:EnforcementFunction"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_47"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:AppealsFunction">
					<xsl:apply-templates select="my:AppealsFunction[1]" mode="_52"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:AppealsFunction"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_52"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:RegSetManDataAnalytics">
					<xsl:apply-templates select="my:RegSetManDataAnalytics[1]" mode="_54"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:RegSetManDataAnalytics"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_54"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:element name="my:RegSetManagementOtherComments">
				<xsl:apply-templates select="my:RegSetManagementOtherComments/text() | my:RegSetManagementOtherComments/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:ByAuthorityType" mode="_57">
		<xsl:copy>
			<xsl:element name="my:AuthorityType">
				<xsl:copy-of select="my:AuthorityType/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:Dollars201213">
				<xsl:choose>
					<xsl:when test="my:Dollars201213/text()[1]">
						<xsl:copy-of select="my:Dollars201213/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:Dollars201314">
				<xsl:choose>
					<xsl:when test="my:Dollars201314/text()[1]">
						<xsl:copy-of select="my:Dollars201314/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:Dollars201415">
				<xsl:choose>
					<xsl:when test="my:Dollars201415/text()[1]">
						<xsl:copy-of select="my:Dollars201415/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:Dollars201516">
				<xsl:choose>
					<xsl:when test="my:Dollars201516/text()[1]">
						<xsl:copy-of select="my:Dollars201516/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:Dollars201617">
				<xsl:choose>
					<xsl:when test="my:Dollars201617/text()[1]">
						<xsl:copy-of select="my:Dollars201617/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:TotalOrganizationalExpenditures5Years" mode="_56">
		<xsl:copy>
			<xsl:choose>
				<xsl:when test="my:ByAuthorityType">
					<xsl:apply-templates select="my:ByAuthorityType" mode="_57"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:ByAuthorityType"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_57"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:TotalOrganizationalFTEs" mode="_58">
		<xsl:copy>
			<xsl:element name="my:FTE201213">
				<xsl:choose>
					<xsl:when test="my:FTE201213/text()[1]">
						<xsl:copy-of select="my:FTE201213/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:FTE201314">
				<xsl:choose>
					<xsl:when test="my:FTE201314/text()[1]">
						<xsl:copy-of select="my:FTE201314/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:FTE201415">
				<xsl:choose>
					<xsl:when test="my:FTE201415/text()[1]">
						<xsl:copy-of select="my:FTE201415/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:FTE201516">
				<xsl:choose>
					<xsl:when test="my:FTE201516/text()[1]">
						<xsl:copy-of select="my:FTE201516/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:FTE201617">
				<xsl:choose>
					<xsl:when test="my:FTE201617/text()[1]">
						<xsl:copy-of select="my:FTE201617/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:ByRegulatoryFunction" mode="_60">
		<xsl:copy>
			<xsl:element name="my:RegulatoryFunction">
				<xsl:copy-of select="my:RegulatoryFunction/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:RegFunDollars201213">
				<xsl:choose>
					<xsl:when test="my:RegFunDollars201213/text()[1]">
						<xsl:copy-of select="my:RegFunDollars201213/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:RegFunDollars201314">
				<xsl:choose>
					<xsl:when test="my:RegFunDollars201314/text()[1]">
						<xsl:copy-of select="my:RegFunDollars201314/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:RegFunDollars201415">
				<xsl:choose>
					<xsl:when test="my:RegFunDollars201415/text()[1]">
						<xsl:copy-of select="my:RegFunDollars201415/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:RegFunDollars201516">
				<xsl:choose>
					<xsl:when test="my:RegFunDollars201516/text()[1]">
						<xsl:copy-of select="my:RegFunDollars201516/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:RegFunDollars201617">
				<xsl:choose>
					<xsl:when test="my:RegFunDollars201617/text()[1]">
						<xsl:copy-of select="my:RegFunDollars201617/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:TotalExpendituresOnEachRegulatoryFunction5Years" mode="_59">
		<xsl:copy>
			<xsl:choose>
				<xsl:when test="my:ByRegulatoryFunction">
					<xsl:apply-templates select="my:ByRegulatoryFunction" mode="_60"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:ByRegulatoryFunction"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_60"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:ByRegFunctionBreakdown" mode="_62">
		<xsl:copy>
			<xsl:element name="my:RegFunFTEGroup">
				<xsl:copy-of select="my:RegFunFTEGroup/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:RegFunFTE201213">
				<xsl:choose>
					<xsl:when test="my:RegFunFTE201213/text()[1]">
						<xsl:copy-of select="my:RegFunFTE201213/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:RegFunFTE201314">
				<xsl:choose>
					<xsl:when test="my:RegFunFTE201314/text()[1]">
						<xsl:copy-of select="my:RegFunFTE201314/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:RegFunFTE201415">
				<xsl:choose>
					<xsl:when test="my:RegFunFTE201415/text()[1]">
						<xsl:copy-of select="my:RegFunFTE201415/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:RegFunFTE201516">
				<xsl:choose>
					<xsl:when test="my:RegFunFTE201516/text()[1]">
						<xsl:copy-of select="my:RegFunFTE201516/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:RegFunFTE201617">
				<xsl:choose>
					<xsl:when test="my:RegFunFTE201617/text()[1]">
						<xsl:copy-of select="my:RegFunFTE201617/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:TotalFTEsByRegFunction" mode="_61">
		<xsl:copy>
			<xsl:choose>
				<xsl:when test="my:ByRegFunctionBreakdown">
					<xsl:apply-templates select="my:ByRegFunctionBreakdown" mode="_62"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:ByRegFunctionBreakdown"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_62"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:RegSetFinancialInformation" mode="_55">
		<xsl:copy>
			<xsl:choose>
				<xsl:when test="my:TotalOrganizationalExpenditures5Years">
					<xsl:apply-templates select="my:TotalOrganizationalExpenditures5Years[1]" mode="_56"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:TotalOrganizationalExpenditures5Years"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_56"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:TotalOrganizationalFTEs">
					<xsl:apply-templates select="my:TotalOrganizationalFTEs[1]" mode="_58"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:TotalOrganizationalFTEs"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_58"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:TotalExpendituresOnEachRegulatoryFunction5Years">
					<xsl:apply-templates select="my:TotalExpendituresOnEachRegulatoryFunction5Years[1]" mode="_59"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:TotalExpendituresOnEachRegulatoryFunction5Years"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_59"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:TotalFTEsByRegFunction">
					<xsl:apply-templates select="my:TotalFTEsByRegFunction[1]" mode="_61"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:TotalFTEsByRegFunction"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_61"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:RegSetTitleAndDescription" mode="_2">
		<xsl:copy>
			<xsl:element name="my:IndividualRegOrSet">
				<xsl:copy-of select="my:IndividualRegOrSet/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:TitleOfRegulationSetOrIndividualReg">
				<xsl:copy-of select="my:TitleOfRegulationSetOrIndividualReg/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:SubjectMatterDomain">
				<xsl:copy-of select="my:SubjectMatterDomain/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:NAICSCode">
				<xsl:copy-of select="my:NAICSCode/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:Description">
				<xsl:apply-templates select="my:Description/text() | my:Description/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
			<xsl:element name="my:Rationale">
				<xsl:apply-templates select="my:Rationale/text() | my:Rationale/*[namespace-uri()='http://www.w3.org/1999/xhtml']" mode="RichText"/>
			</xsl:element>
			<xsl:element name="my:Importance">
				<xsl:copy-of select="my:Importance/text()[1]"/>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:CompositionOfRegulatuionSet">
					<xsl:apply-templates select="my:CompositionOfRegulatuionSet[1]" mode="_3"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:CompositionOfRegulatuionSet"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_3"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:RegSetPolicyFeatures">
					<xsl:apply-templates select="my:RegSetPolicyFeatures[1]" mode="_9"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:RegSetPolicyFeatures"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_9"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:RegSetManagement">
					<xsl:apply-templates select="my:RegSetManagement[1]" mode="_34"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:RegSetManagement"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_34"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:RegSetFinancialInformation">
					<xsl:apply-templates select="my:RegSetFinancialInformation[1]" mode="_55"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:RegSetFinancialInformation"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_55"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:RegSet" mode="_1">
		<xsl:copy>
			<xsl:choose>
				<xsl:when test="my:RegSetTitleAndDescription">
					<xsl:apply-templates select="my:RegSetTitleAndDescription[1]" mode="_2"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:RegSetTitleAndDescription"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_2"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:Signatures" mode="_63">
		<xsl:copy>
			<xsl:element name="my:CFOAttestationIndicator">
				<xsl:choose>
					<xsl:when test="my:CFOAttestationIndicator/text()[1]">
						<xsl:copy-of select="my:CFOAttestationIndicator/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:CFOAttestationName">
				<xsl:copy-of select="my:CFOAttestationName/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:CFOAttestationTitle">
				<xsl:copy-of select="my:CFOAttestationTitle/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:CFOAttestationDate">
				<xsl:choose>
					<xsl:when test="my:CFOAttestationDate/text()[1]">
						<xsl:copy-of select="my:CFOAttestationDate/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:ExecutiveAttestationindicator">
				<xsl:choose>
					<xsl:when test="my:ExecutiveAttestationindicator/text()[1]">
						<xsl:copy-of select="my:ExecutiveAttestationindicator/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:ExecutiveAttestationName">
				<xsl:copy-of select="my:ExecutiveAttestationName/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:ExecutiveAttestationTitle">
				<xsl:copy-of select="my:ExecutiveAttestationTitle/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:ExecutiveAttestationDate">
				<xsl:choose>
					<xsl:when test="my:ExecutiveAttestationDate/text()[1]">
						<xsl:copy-of select="my:ExecutiveAttestationDate/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:myFields" mode="_0">
		<xsl:copy>
			<xsl:element name="my:OrganizationID">
				<xsl:copy-of select="my:OrganizationID/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:DoYouAdministerAnActOrRegulation">
				<xsl:copy-of select="my:DoYouAdministerAnActOrRegulation/text()[1]"/>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:RegSet">
					<xsl:apply-templates select="my:RegSet[1]" mode="_1"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:RegSet"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_1"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:Signatures">
					<xsl:apply-templates select="my:Signatures[1]" mode="_63"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:Signatures"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_63"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>