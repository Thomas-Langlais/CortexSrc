<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:my="http://schemas.microsoft.com/office/infopath/2003/myXSD/2018-03-15T16:29:40" xmlns:od="urn:schemas-microsoft-com:officedata" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:xd="http://schemas.microsoft.com/office/infopath/2003" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns:xdExtension="http://schemas.microsoft.com/office/infopath/2003/xslt/extension" xmlns:xdXDocument="http://schemas.microsoft.com/office/infopath/2003/xslt/xDocument" xmlns:xdSolution="http://schemas.microsoft.com/office/infopath/2003/xslt/solution" xmlns:xdFormatting="http://schemas.microsoft.com/office/infopath/2003/xslt/formatting" xmlns:xdImage="http://schemas.microsoft.com/office/infopath/2003/xslt/xImage" xmlns:xdUtil="http://schemas.microsoft.com/office/infopath/2003/xslt/Util" xmlns:xdMath="http://schemas.microsoft.com/office/infopath/2003/xslt/Math" xmlns:xdDate="http://schemas.microsoft.com/office/infopath/2003/xslt/Date" xmlns:sig="http://www.w3.org/2000/09/xmldsig#" xmlns:xdSignatureProperties="http://schemas.microsoft.com/office/infopath/2003/SignatureProperties" xmlns:ipApp="http://schemas.microsoft.com/office/infopath/2006/XPathExtension/ipApp" xmlns:xdEnvironment="http://schemas.microsoft.com/office/infopath/2006/xslt/environment" xmlns:xdUser="http://schemas.microsoft.com/office/infopath/2006/xslt/User" xmlns:xdServerInfo="http://schemas.microsoft.com/office/infopath/2009/xslt/ServerInfo">
	<xsl:output method="html" indent="no"/>
	<xsl:template match="my:DRRFields">
		<html>
			<head>
				<meta content="text/html" http-equiv="Content-Type"></meta>
				<style controlStyle="controlStyle">@media screen 			{ 			BODY{margin-left:21px;background-position:21px 0px;} 			} 		BODY{color:windowtext;background-color:window;layout-grid:none;} 		.xdListItem {display:inline-block;width:100%;vertical-align:text-top;} 		.xdListBox,.xdComboBox{margin:1px;} 		.xdInlinePicture{margin:1px; BEHAVIOR: url(#default#urn::xdPicture) } 		.xdLinkedPicture{margin:1px; BEHAVIOR: url(#default#urn::xdPicture) url(#default#urn::controls/Binder) } 		.xdHyperlinkBox{word-wrap:break-word; text-overflow:ellipsis;overflow-x:hidden; OVERFLOW-Y: hidden; WHITE-SPACE:nowrap; display:inline-block;margin:1px;padding:5px;border: 1pt solid #dcdcdc;color:windowtext;BEHAVIOR: url(#default#urn::controls/Binder) url(#default#DataBindingUI)} 		.xdSection{border:1pt solid transparent ;margin:0px 0px 0px 0px;padding:0px 0px 0px 0px;} 		.xdRepeatingSection{border:1pt solid transparent;margin:0px 0px 0px 0px;padding:0px 0px 0px 0px;} 		.xdMultiSelectList{margin:1px;display:inline-block; border:1pt solid #dcdcdc; padding:1px 1px 1px 5px; text-indent:0; color:windowtext; background-color:window; overflow:auto; behavior: url(#default#DataBindingUI) url(#default#urn::controls/Binder) url(#default#MultiSelectHelper) url(#default#ScrollableRegion);} 		.xdMultiSelectListItem{display:block;white-space:nowrap}		.xdMultiSelectFillIn{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;overflow:hidden;text-align:left;}		.xdBehavior_Formatting {BEHAVIOR: url(#default#urn::controls/Binder) url(#default#Formatting);} 	 .xdBehavior_FormattingNoBUI{BEHAVIOR: url(#default#CalPopup) url(#default#urn::controls/Binder) url(#default#Formatting);} 	.xdExpressionBox{margin: 1px;padding:1px;word-wrap: break-word;text-overflow: ellipsis;overflow-x:hidden;}.xdBehavior_GhostedText,.xdBehavior_GhostedTextNoBUI{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#TextField) url(#default#GhostedText);}	.xdBehavior_GTFormatting{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#Formatting) url(#default#GhostedText);}	.xdBehavior_GTFormattingNoBUI{BEHAVIOR: url(#default#CalPopup) url(#default#urn::controls/Binder) url(#default#Formatting) url(#default#GhostedText);}	.xdBehavior_Boolean{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#BooleanHelper);}	.xdBehavior_Select{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#SelectHelper);}	.xdBehavior_ComboBox{BEHAVIOR: url(#default#ComboBox)} 	.xdBehavior_ComboBoxTextField{BEHAVIOR: url(#default#ComboBoxTextField);} 	.xdRepeatingTable{BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word;}.xdScrollableRegion{BEHAVIOR: url(#default#ScrollableRegion);} 		.xdLayoutRegion{display:inline-block;} 		.xdMaster{BEHAVIOR: url(#default#MasterHelper);} 		.xdActiveX{margin:1px; BEHAVIOR: url(#default#ActiveX);} 		.xdFileAttachment{display:inline-block;margin:1px;BEHAVIOR:url(#default#urn::xdFileAttachment);} 		.xdSharePointFileAttachment{display:inline-block;margin:2px;BEHAVIOR:url(#default#xdSharePointFileAttachment);} 		.xdAttachItem{display:inline-block;width:100%%;height:25px;margin:1px;BEHAVIOR:url(#default#xdSharePointFileAttachItem);} 		.xdSignatureLine{display:inline-block;margin:1px;background-color:transparent;border:1pt solid transparent;BEHAVIOR:url(#default#SignatureLine);} 		.xdHyperlinkBoxClickable{behavior: url(#default#HyperlinkBox)} 		.xdHyperlinkBoxButtonClickable{border-width:1px;border-style:outset;behavior: url(#default#HyperlinkBoxButton)} 		.xdPictureButton{background-color: transparent; padding: 0px; behavior: url(#default#PictureButton);} 		.xdPageBreak{display: none;}BODY{margin-right:21px;} 		.xdTextBoxRTL{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow:hidden;text-align:right;word-wrap:normal;} 		.xdRichTextBoxRTL{display:inline-block;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow-x:hidden;word-wrap:break-word;text-overflow:ellipsis;text-align:right;font-weight:normal;font-style:normal;text-decoration:none;vertical-align:baseline;} 		.xdDTTextRTL{height:100%;width:100%;margin-left:22px;overflow:hidden;padding:0px;white-space:nowrap;} 		.xdDTButtonRTL{margin-right:-21px;height:17px;width:20px;behavior: url(#default#DTPicker);} 		.xdMultiSelectFillinRTL{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;overflow:hidden;text-align:right;}.xdTextBox{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow:hidden;text-align:left;word-wrap:normal;} 		.xdRichTextBox{display:inline-block;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow-x:hidden;word-wrap:break-word;text-overflow:ellipsis;text-align:left;font-weight:normal;font-style:normal;text-decoration:none;vertical-align:baseline;} 		.xdDTPicker{;display:inline;margin:1px;margin-bottom: 2px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow:hidden;text-indent:0; layout-grid: none} 		.xdDTText{height:100%;width:100%;margin-right:22px;overflow:hidden;padding:0px;white-space:nowrap;} 		.xdDTButton{margin-left:-21px;height:17px;width:20px;behavior: url(#default#DTPicker);} 		.xdRepeatingTable TD {VERTICAL-ALIGN: top;}</style>
				<style tableEditor="TableStyleRulesID">TABLE.xdLayout TD {
	BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none
}
TABLE.msoUcTable TD {
	BORDER-TOP: 1pt solid; BORDER-RIGHT: 1pt solid; BORDER-BOTTOM: 1pt solid; BORDER-LEFT: 1pt solid
}
TABLE {
	BEHAVIOR: url (#default#urn::tables/NDTable)
}
</style>
				<style languageStyle="languageStyle">BODY {
	FONT-SIZE: 10pt; FONT-FAMILY: Calibri
}
SELECT {
	FONT-SIZE: 10pt; FONT-FAMILY: Calibri
}
TABLE {
	FONT-SIZE: 10pt; FONT-FAMILY: Calibri; TEXT-TRANSFORM: none; FONT-WEIGHT: normal; COLOR: black; FONT-STYLE: normal
}
.optionalPlaceholder {
	FONT-SIZE: 9pt; TEXT-DECORATION: none; FONT-FAMILY: Calibri; FONT-WEIGHT: normal; COLOR: #333333; FONT-STYLE: normal; PADDING-LEFT: 20px; BEHAVIOR: url(#default#xOptional)
}
.langFont {
	FONT-SIZE: 10pt; FONT-FAMILY: Calibri; WIDTH: 150px
}
.defaultInDocUI {
	FONT-SIZE: 9pt; FONT-FAMILY: Calibri
}
.optionalPlaceholder {
	PADDING-RIGHT: 20px
}
</style>
				<style themeStyle="urn:office.microsoft.com:themeSummer">TABLE {
	BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-COLLAPSE: collapse; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none
}
TD {
	BORDER-TOP-COLOR: #d8d8d8; BORDER-LEFT-COLOR: #d8d8d8; BORDER-BOTTOM-COLOR: #d8d8d8; BORDER-RIGHT-COLOR: #d8d8d8
}
TH {
	BORDER-TOP-COLOR: #000000; BORDER-LEFT-COLOR: #000000; COLOR: black; BORDER-BOTTOM-COLOR: #000000; BORDER-RIGHT-COLOR: #000000; BACKGROUND-COLOR: #f2f2f2
}
.xdTableHeader {
	COLOR: black; BACKGROUND-COLOR: #f2f2f2
}
.light1 {
	BACKGROUND-COLOR: #ffffff
}
.dark1 {
	BACKGROUND-COLOR: #000000
}
.light2 {
	BACKGROUND-COLOR: #f7f8f4
}
.dark2 {
	BACKGROUND-COLOR: #2b4b4d
}
.accent1 {
	BACKGROUND-COLOR: #6c9a7f
}
.accent2 {
	BACKGROUND-COLOR: #bb523d
}
.accent3 {
	BACKGROUND-COLOR: #c89d11
}
.accent4 {
	BACKGROUND-COLOR: #fccf10
}
.accent5 {
	BACKGROUND-COLOR: #568ea1
}
.accent6 {
	BACKGROUND-COLOR: #decf28
}
</style>
				<style tableStyle="Professional">TR.xdTitleRow {
	MIN-HEIGHT: 83px
}
TD.xdTitleCell {
	BORDER-TOP: #bfbfbf 1pt solid; BORDER-RIGHT: #bfbfbf 1pt solid; PADDING-BOTTOM: 14px; TEXT-ALIGN: center; PADDING-TOP: 32px; PADDING-LEFT: 22px; BORDER-LEFT: #bfbfbf 1pt solid; PADDING-RIGHT: 22px; BACKGROUND-COLOR: #ffffff; valign: bottom
}
TR.xdTitleRowWithHeading {
	MIN-HEIGHT: 69px
}
TD.xdTitleCellWithHeading {
	BORDER-TOP: #bfbfbf 1pt solid; BORDER-RIGHT: #bfbfbf 1pt solid; PADDING-BOTTOM: 0px; TEXT-ALIGN: center; PADDING-TOP: 32px; PADDING-LEFT: 22px; BORDER-LEFT: #bfbfbf 1pt solid; PADDING-RIGHT: 22px; BACKGROUND-COLOR: #ffffff; valign: bottom
}
TR.xdTitleRowWithSubHeading {
	MIN-HEIGHT: 75px
}
TD.xdTitleCellWithSubHeading {
	BORDER-TOP: #bfbfbf 1pt solid; BORDER-RIGHT: #bfbfbf 1pt solid; PADDING-BOTTOM: 6px; TEXT-ALIGN: center; PADDING-TOP: 32px; PADDING-LEFT: 22px; BORDER-LEFT: #bfbfbf 1pt solid; PADDING-RIGHT: 22px; BACKGROUND-COLOR: #ffffff; valign: bottom
}
TR.xdTitleRowWithOffsetBody {
	MIN-HEIGHT: 72px
}
TD.xdTitleCellWithOffsetBody {
	BORDER-TOP: #bfbfbf 1pt solid; BORDER-RIGHT: #bfbfbf 1pt solid; PADDING-BOTTOM: 2px; TEXT-ALIGN: left; PADDING-TOP: 32px; PADDING-LEFT: 22px; BORDER-LEFT: #bfbfbf 1pt solid; PADDING-RIGHT: 22px; BACKGROUND-COLOR: #ffffff; valign: bottom
}
TR.xdTitleHeadingRow {
	MIN-HEIGHT: 37px
}
TD.xdTitleHeadingCell {
	BORDER-RIGHT: #bfbfbf 1pt solid; PADDING-BOTTOM: 14px; TEXT-ALIGN: center; PADDING-TOP: 0px; PADDING-LEFT: 22px; BORDER-LEFT: #bfbfbf 1pt solid; PADDING-RIGHT: 22px; BACKGROUND-COLOR: #ffffff; valign: top
}
TR.xdTitleSubheadingRow {
	MIN-HEIGHT: 70px
}
TD.xdTitleSubheadingCell {
	BORDER-RIGHT: #bfbfbf 1pt solid; PADDING-BOTTOM: 16px; PADDING-TOP: 8px; PADDING-LEFT: 22px; BORDER-LEFT: #bfbfbf 1pt solid; PADDING-RIGHT: 22px; BACKGROUND-COLOR: #ffffff; valign: top
}
TD.xdVerticalFill {
	BORDER-TOP: #bfbfbf 1pt solid; BORDER-BOTTOM: #bfbfbf 1pt solid; BORDER-LEFT: #bfbfbf 1pt solid; BACKGROUND-COLOR: #354d3f
}
TD.xdTableContentCellWithVerticalOffset {
	BORDER-RIGHT: #bfbfbf 1pt solid; BORDER-BOTTOM: #bfbfbf 1pt solid; PADDING-BOTTOM: 2px; TEXT-ALIGN: left; PADDING-TOP: 32px; PADDING-LEFT: 95px; BORDER-LEFT: #bfbfbf 1pt solid; PADDING-RIGHT: 0px; BACKGROUND-COLOR: #ffffff; valign: bottom
}
TR.xdTableContentRow {
	MIN-HEIGHT: 140px
}
TD.xdTableContentCell {
	BORDER-RIGHT: #bfbfbf 1pt solid; BORDER-BOTTOM: #bfbfbf 1pt solid; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING-LEFT: 0px; BORDER-LEFT: #bfbfbf 1pt solid; PADDING-RIGHT: 0px; BACKGROUND-COLOR: #ffffff; valign: top
}
TD.xdTableContentCellWithVerticalFill {
	BORDER-RIGHT: #bfbfbf 1pt solid; BORDER-BOTTOM: #bfbfbf 1pt solid; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING-LEFT: 1px; BORDER-LEFT: #bfbfbf 1pt solid; PADDING-RIGHT: 1px; BACKGROUND-COLOR: #ffffff; valign: top
}
TD.xdTableStyleOneCol {
	PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px
}
TR.xdContentRowOneCol {
	MIN-HEIGHT: 45px; valign: center
}
TR.xdHeadingRow {
	MIN-HEIGHT: 27px
}
TD.xdHeadingCell {
	BORDER-TOP: #a6c2b2 1pt solid; BORDER-BOTTOM: #a6c2b2 1pt solid; PADDING-BOTTOM: 2px; TEXT-ALIGN: center; PADDING-TOP: 2px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; BACKGROUND-COLOR: #e1eae5; valign: bottom
}
TR.xdSubheadingRow {
	MIN-HEIGHT: 28px
}
TD.xdSubheadingCell {
	BORDER-BOTTOM: #a6c2b2 1pt solid; PADDING-BOTTOM: 4px; TEXT-ALIGN: center; PADDING-TOP: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; valign: bottom
}
TR.xdHeadingRowEmphasis {
	MIN-HEIGHT: 27px
}
TD.xdHeadingCellEmphasis {
	BORDER-TOP: #a6c2b2 1pt solid; BORDER-BOTTOM: #a6c2b2 1pt solid; PADDING-BOTTOM: 2px; TEXT-ALIGN: center; PADDING-TOP: 2px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; BACKGROUND-COLOR: #e1eae5; valign: bottom
}
TR.xdSubheadingRowEmphasis {
	MIN-HEIGHT: 28px
}
TD.xdSubheadingCellEmphasis {
	BORDER-BOTTOM: #a6c2b2 1pt solid; PADDING-BOTTOM: 4px; TEXT-ALIGN: center; PADDING-TOP: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; valign: bottom
}
TR.xdTableLabelControlStackedRow {
	MIN-HEIGHT: 45px
}
TD.xdTableLabelControlStackedCellLabel {
	PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 5px
}
TD.xdTableLabelControlStackedCellComponent {
	PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 22px
}
TR.xdTableRow {
	MIN-HEIGHT: 30px
}
TD.xdTableCellLabel {
	PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 5px
}
TD.xdTableCellComponent {
	PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 22px
}
TD.xdTableMiddleCell {
	PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px
}
TR.xdTableEmphasisRow {
	MIN-HEIGHT: 30px
}
TD.xdTableEmphasisCellLabel {
	PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 5px; BACKGROUND-COLOR: #c4d6cb
}
TD.xdTableEmphasisCellComponent {
	PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 22px; BACKGROUND-COLOR: #c4d6cb
}
TD.xdTableMiddleCellEmphasis {
	PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; BACKGROUND-COLOR: #c4d6cb
}
TR.xdTableOffsetRow {
	MIN-HEIGHT: 30px
}
TD.xdTableOffsetCellLabel {
	PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 5px; BACKGROUND-COLOR: #c4d6cb
}
TD.xdTableOffsetCellComponent {
	PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 22px; BACKGROUND-COLOR: #c4d6cb
}
P {
	FONT-SIZE: 11pt; MARGIN-TOP: 0px; COLOR: #354d3f
}
H1 {
	FONT-SIZE: 24pt; MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px; FONT-WEIGHT: normal; COLOR: #354d3f
}
H2 {
	FONT-SIZE: 16pt; MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px; FONT-WEIGHT: bold; COLOR: #354d3f
}
H3 {
	FONT-SIZE: 12pt; MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px; TEXT-TRANSFORM: uppercase; FONT-WEIGHT: normal; COLOR: #354d3f
}
H4 {
	FONT-SIZE: 10pt; MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px; FONT-WEIGHT: normal; COLOR: #262626; FONT-STYLE: italic
}
H5 {
	FONT-SIZE: 10pt; MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px; FONT-WEIGHT: bold; COLOR: #354d3f; FONT-STYLE: italic
}
H6 {
	FONT-SIZE: 10pt; MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px; FONT-WEIGHT: normal; COLOR: #262626
}
BODY {
	COLOR: black
}
</style>
			</head>
			<body>
				<div align="center">
					<table class="xdFormLayout" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 854px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none">
						<colgroup>
							<col style="WIDTH: 854px"></col>
						</colgroup>
						<tbody>
							<tr class="xdTitleRow">
								<td vAlign="bottom" class="xdTitleCell">
									<div align="center">
										<table class="xdFormLayout" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 794px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none">
											<colgroup>
												<col style="WIDTH: 794px"></col>
											</colgroup>
											<tbody>
												<tr class="xdTitleRow" style="MIN-HEIGHT: 317px">
													<td vAlign="bottom" class="xdTitleCell">
														<h1>
															<img style="HEIGHT: 83px; WIDTH: 755px" src="63A286C2.gif"/>
														</h1>
														<div> </div>
														<div>
															<u>
																<strong>
																	<font size="5">Departmental Results </font>
																</strong>
															</u>
														</div>
														<div align="left">
															<font size="3">
																<strong/>
															</font> </div>
														<div align="left">
															<font size="3">
																<strong>Instructions to Complete the Departmental Results Exercise:</strong>
															</font>
														</div>
														<div align="left">
															<div> </div>
														</div>
														<div align="left">
															<table class="xdFormLayout xdTableStyleTwoCol" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 603px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none">
																<colgroup>
																	<col style="WIDTH: 90px"></col>
																	<col style="WIDTH: 513px"></col>
																</colgroup>
																<tbody vAlign="top">
																	<tr class="xdTableRow" style="MIN-HEIGHT: 30px">
																		<td vAlign="top" style="BORDER-RIGHT-COLOR: " class="xdTableCellComponent">
																			<div>
																				<strong>Step 1. </strong>
																			</div>
																		</td>
																		<td vAlign="top" class="xdTableCellComponent">Complete the Departmental Profile first.</td>
																	</tr>
																</tbody>
															</table>
														</div>
													</td>
												</tr>
												<tr class="xdTableContentRow" style="MIN-HEIGHT: 400px">
													<td vAlign="top" class="xdTableContentCell">
														<div> </div>
														<div/>
														<div/>
														<div>
															<table class="xdFormLayout xdTableStyleTwoCol" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 789px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none">
																<colgroup>
																	<col style="WIDTH: 21px"></col>
																	<col style="WIDTH: 196px"></col>
																	<col style="WIDTH: 572px"></col>
																</colgroup>
																<tbody vAlign="top">
																	<tr class="xdHeadingRow" style="MIN-HEIGHT: 32px">
																		<td colSpan="3" style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 22px" class="xdHeadingCell">
																			<h2 align="left">3. Program Details</h2>
																		</td>
																	</tr>
																	<tr class="xdSubheadingRow" style="MIN-HEIGHT: 28px">
																		<td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: " class="xdSubheadingCell">
																			<h3> </h3>
																		</td>
																		<td colSpan="2" style="BORDER-TOP-COLOR: " class="xdSubheadingCell">
																			<div style="FONT-WEIGHT: normal" align="left"><xsl:apply-templates select="my:ProgramInventory" mode="_39"/>
																				<div class="optionalPlaceholder" xd:xmlToEdit="ProgramInventory_99" tabIndex="0" xd:action="xCollection::insert" align="left" style="WIDTH: 100%">Insert Additional Program</div>
																			</div>
																		</td>
																	</tr>
																	<tr class="xdTableRow">
																		<td vAlign="top" style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: " class="xdTableCellLabel">
																			<h4> </h4>
																		</td>
																		<td vAlign="top" style="BORDER-TOP-COLOR: " class="xdTableCellLabel">
																			<h4> </h4>
																		</td>
																		<td vAlign="top" style="BORDER-TOP-COLOR: " class="xdTableCellComponent"></td>
																	</tr>
																</tbody>
															</table>
														</div>
														<div> </div>
														<div align="center">
															<font style="FONT-SIZE: 10pt" face="Calibri">
																<img style="HEIGHT: 98px; WIDTH: 639px" src="17421420.gif" width="639" height="98" v:shapes="Rounded_x0020_Rectangle_x0020_22 Group_x0020_18 Oval_x0020_24 Freeform_x0020_25 Straight_x0020_Connector_x0020_26 Straight_x0020_Connector_x0020_27 Straight_x0020_Connector_x0020_28" xmlns:v="urn:v"/>
															</font>
														</div>
														<div> </div>
														<div style="MARGIN-BOTTOM: 1pt; MARGIN-TOP: 2pt; PADDING-LEFT: 0cm; PADDING-RIGHT: 0cm" align="right">
															<table class="msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 790px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" cellPadding="0" border="1">
																<colgroup>
																	<col style="WIDTH: 4px"></col>
																	<col style="WIDTH: 383px"></col>
																	<col style="WIDTH: 5px"></col>
																	<col style="WIDTH: 115px"></col>
																	<col style="WIDTH: 200px"></col>
																	<col style="WIDTH: 83px"></col>
																</colgroup>
																<tbody>
																	<tr style="MIN-HEIGHT: 4px">
																		<td style="BORDER-TOP-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-STYLE: none">
																			<font style="FONT-SIZE: 10pt" face="Calibri"></font>
																		</td>
																		<td style="BORDER-TOP-STYLE: none; BORDER-LEFT-STYLE: none; VERTICAL-ALIGN: middle; BORDER-BOTTOM-STYLE: none; PADDING-BOTTOM: 0px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 0px; BORDER-RIGHT-STYLE: none; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND-COLOR: #a6c2b2">
																			<div align="right">
																				<font style="BACKGROUND-COLOR: #a6c2b2">
																					<strong/>
																				</font>
																				<font style="FONT-SIZE: 16pt">4. </font>
																				<font style="FONT-SIZE: 10pt"></font>
																			</div>
																		</td>
																		<td colSpan="2" style="BORDER-TOP-STYLE: none; BORDER-LEFT-STYLE: none; VERTICAL-ALIGN: middle; BORDER-BOTTOM-STYLE: none; PADDING-BOTTOM: 0px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 10px; BORDER-RIGHT-STYLE: none; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND-COLOR: #a6c2b2">
																			<div align="right"><input title="" class="langFont" style="FONT-SIZE: small; WIDTH: 118px; MARGIN: 1px" size="15" type="button" value="Validate" xd:CtrlId="btnValidate" xd:xctname="Button"/>
																			</div>
																			<font style="FONT-SIZE: 10pt"></font>
																		</td>
																		<td style="BORDER-TOP-STYLE: none; BORDER-LEFT-STYLE: none; VERTICAL-ALIGN: middle; BORDER-BOTTOM-STYLE: none; PADDING-BOTTOM: 0px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 10px; BORDER-RIGHT-STYLE: none; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND-COLOR: #a6c2b2">
																			<div align="right">
																				<strong>
																					<font style="FONT-SIZE: 16pt">5.</font>
																				</strong><input title="" class="langFont" style="FONT-SIZE: small; WIDTH: 120px; MARGIN: 1px" size="13" type="button" value="Submit" xd:CtrlId="CTRL2" xd:xctname="Button"/>
																			</div>
																			<font style="FONT-SIZE: 10pt"></font>
																		</td>
																		<td style="BORDER-TOP-STYLE: none; BORDER-LEFT-STYLE: none; VERTICAL-ALIGN: middle; BORDER-BOTTOM-STYLE: none; PADDING-BOTTOM: 0px; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-STYLE: none; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND-COLOR: #a6c2b2">
																			<div align="right">
																				<font style="FONT-SIZE: 10pt"></font> </div>
																		</td>
																	</tr>
																	<tr style="MIN-HEIGHT: 25px">
																		<td style="BORDER-TOP-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-TOP-COLOR: ; BORDER-BOTTOM-STYLE: none; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-STYLE: none">
																			<div>
																				<font style="FONT-SIZE: 10pt" face="Calibri"></font>
																				<font style="FONT-SIZE: 10pt"></font> </div>
																		</td>
																		<td colSpan="2" style="BORDER-TOP-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-TOP-COLOR: ; BORDER-BOTTOM-STYLE: none; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-STYLE: none">
																			<div align="center">
																				<font style="FONT-SIZE: 10pt" face="Calibri"></font>
																				<font style="FONT-SIZE: 10pt"></font> </div>
																		</td>
																		<td colSpan="3" style="BORDER-TOP-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-TOP-COLOR: ; BORDER-BOTTOM-STYLE: none; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-STYLE: none">
																			<div align="right">
																				<font style="FONT-SIZE: 10pt" face="Calibri"></font>
																				<font style="FONT-SIZE: 10pt"></font> </div>
																		</td>
																	</tr>
																	<tr>
																		<td style="BORDER-TOP-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-TOP-COLOR: ; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none">
																			<div>
																				<font style="FONT-SIZE: 10pt" face="Calibri"></font>
																				<font style="FONT-SIZE: 10pt"></font> </div>
																		</td>
																		<td colSpan="2" style="BORDER-TOP-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-TOP-COLOR: ; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none">
																			<div align="center">
																				<font style="FONT-SIZE: 10pt" face="Calibri"></font>
																				<font style="FONT-SIZE: 10pt"></font> </div>
																		</td>
																		<td colSpan="3" style="BORDER-TOP-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-TOP-COLOR: ; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none">
																			<div align="right">
																				<font style="FONT-SIZE: 10pt" face="Calibri">
																					<img style="HEIGHT: 40px; WIDTH: 124px" src="60F42F2E.png"/>
																				</font>
																				<font style="FONT-SIZE: 10pt"></font>
																			</div>
																		</td>
																	</tr>
																</tbody>
															</table>
														</div>
														<div style="FONT-SIZE: 10pt; MARGIN-BOTTOM: 1pt; MARGIN-TOP: 2pt; PADDING-LEFT: 0cm; PADDING-RIGHT: 0cm">
															<span style="FONT-SIZE: 18pt">
																<font face="Calibri"></font>
															</span> </div>
														<div align="left">
															<strong>
																<font size="3">Definitions:</font>
															</strong>
														</div>
														<div align="left">
															<table class="msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 603px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" cellPadding="0" width="1405" border="1">
																<colgroup>
																	<col style="WIDTH: 11px" width="1405"></col>
																	<col style="WIDTH: 592px" width="1405"></col>
																</colgroup>
																<tbody>
																	<tr style="MIN-HEIGHT: 30pt">
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<div>
																				<font face="Calibri">
																					<font style="FONT-SIZE: 11pt; COLOR: black">
																						<strong/>
																					</font>
																				</font> </div>
																		</td>
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<font face="Calibri">
																				<font style="FONT-SIZE: 11pt; COLOR: black">
																					<strong>Core Responsibility (responsabilité essentielle): </strong>
																				</font>
																				<font style="FONT-SIZE: 11pt; COLOR: black">An enduring function or role performed by a department. The intentions of the department with respect to a Core Responsibility are reflected in one or more related Departmental Results that the department seeks to contribute to or influence. </font>
																			</font>
																		</td>
																	</tr>
																	<tr style="MIN-HEIGHT: 15.75pt">
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<div>
																				<font face="Calibri">
																					<font style="FONT-SIZE: 11pt; COLOR: black">
																						<strong/>
																					</font>
																				</font> </div>
																		</td>
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<font face="Calibri">
																				<font style="FONT-SIZE: 11pt; COLOR: black">
																					<strong>Data Collection Frequency (fréquence de la collecte des données): </strong>
																				</font>
																				<font style="FONT-SIZE: 11pt; COLOR: black">The frequency of data collection against the indicator, e.g. quarterly, annually, etc.</font>
																			</font>
																		</td>
																	</tr>
																	<tr style="MIN-HEIGHT: 15.75pt">
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<div>
																				<font face="Calibri">
																					<font style="FONT-SIZE: 11pt; COLOR: black">
																						<strong/>
																					</font>
																				</font> </div>
																		</td>
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<font face="Calibri">
																				<font style="FONT-SIZE: 11pt; COLOR: black">
																					<strong>Data Source (source(s) de données): </strong>
																				</font>
																				<font style="FONT-SIZE: 11pt; COLOR: black">What is the primary source of information for the indicator (e.g. survey, database)?</font>
																			</font>
																		</td>
																	</tr>
																	<tr style="MIN-HEIGHT: 15.75pt">
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<div>
																				<font face="Calibri">
																					<font style="FONT-SIZE: 11pt; COLOR: black">
																						<strong/>
																					</font>
																				</font> </div>
																		</td>
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<font face="Calibri">
																				<font style="FONT-SIZE: 11pt; COLOR: black">
																					<strong>Data Type (type de données):</strong>
																				</font>
																				<font style="FONT-SIZE: 11pt; COLOR: black"> Is the indicator a number, a range, a percentage, a percentage increase, qualitative, etc.?</font>
																			</font>
																		</td>
																	</tr>
																	<tr style="MIN-HEIGHT: 30pt">
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<div>
																				<font face="Calibri">
																					<font style="FONT-SIZE: 11pt; COLOR: black">
																						<strong/>
																					</font>
																				</font> </div>
																		</td>
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<font face="Calibri">
																				<font style="FONT-SIZE: 11pt; COLOR: black">
																					<strong>Departmental Result (résultat ministériel): </strong>
																				</font>
																				<font style="FONT-SIZE: 11pt; COLOR: black">Departmental Results represent the changes departments seek to influence. Departmental Results are often outside departments’ immediate control, but they should be influenced by Program-level outcomes.</font>
																			</font>
																		</td>
																	</tr>
																	<tr style="MIN-HEIGHT: 15.75pt">
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<div>
																				<font face="Calibri">
																					<font style="FONT-SIZE: 11pt; COLOR: black">
																						<strong/>
																					</font>
																				</font> </div>
																		</td>
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<font face="Calibri">
																				<font style="FONT-SIZE: 11pt; COLOR: black">
																					<strong>Departmental Result Indicator (indicateur de résultat ministériel): </strong>
																				</font>
																				<font style="FONT-SIZE: 11pt; COLOR: black">A factor or variable that provides a valid and reliable means to measure or describe progress on a Departmental Result. </font>
																			</font>
																		</td>
																	</tr>
																	<tr style="MIN-HEIGHT: 15.75pt">
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<div>
																				<font face="Calibri">
																					<font style="FONT-SIZE: 11pt; COLOR: black">
																						<strong/>
																					</font>
																				</font> </div>
																		</td>
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<font face="Calibri">
																				<font style="FONT-SIZE: 11pt; COLOR: black">
																					<strong>Departmental Results Framework (cadre ministériel des résultats): </strong>
																				</font>
																				<font style="FONT-SIZE: 11pt; COLOR: black">Consists of the department’s Core Responsibilities, Departmental Results and Departmental Result Indicators.</font>
																			</font>
																		</td>
																	</tr>
																	<tr style="MIN-HEIGHT: 30pt">
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<div>
																				<font face="Calibri">
																					<font style="FONT-SIZE: 11pt; COLOR: black">
																						<strong/>
																					</font>
																				</font> </div>
																		</td>
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<font face="Calibri">
																				<font style="FONT-SIZE: 11pt; COLOR: black">
																					<strong>Government of Canada Outcome (résultat attendu):</strong>
																				</font>
																				<font style="FONT-SIZE: 11pt; COLOR: black"> Long-term and enduring benefits to Canadians that more than one federal department or agency is working to achieve. For example, An Innovative and Knowledge-based Economy.</font>
																			</font>
																		</td>
																	</tr>
																	<tr style="MIN-HEIGHT: 30pt">
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<div>
																				<font face="Calibri">
																					<font style="FONT-SIZE: 11pt; COLOR: black">
																						<strong/>
																					</font>
																				</font> </div>
																		</td>
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<font face="Calibri">
																				<font style="FONT-SIZE: 11pt; COLOR: black">
																					<strong>Horizontal Initiative (initiative horizontale): </strong>
																				</font>
																				<font style="FONT-SIZE: 11pt; COLOR: black">A horizontal initiative is one in which two or more federal organizations, through an approved funding agreement, work toward achieving clearly defined shared outcomes, and which has been designated (e.g. by Cabinet, a central agency) as a horizontal initiative for managing and reporting purposes.</font>
																			</font>
																		</td>
																	</tr>
																	<tr style="MIN-HEIGHT: 15.75pt">
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<div>
																				<font face="Calibri">
																					<strong/>
																				</font> </div>
																		</td>
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<font face="Calibri">
																				<strong>Mandate Letter Commitment (engagement de lettre de mandat): </strong>
																				<font style="FONT-SIZE: 11pt; COLOR: black">A commitment included in a ministerial mandate letter. </font>
																			</font>
																		</td>
																	</tr>
																	<tr style="MIN-HEIGHT: 15.75pt">
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<div>
																				<font face="Calibri">
																					<font style="FONT-SIZE: 11pt; COLOR: black">
																						<strong/>
																					</font>
																				</font> </div>
																		</td>
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<font face="Calibri">
																				<font style="FONT-SIZE: 11pt; COLOR: black">
																					<strong>Method of Intervention (méthode d'intervention): R</strong>
																				</font>
																				<font style="FONT-SIZE: 11pt; COLOR: black">efers to the means by which policy objectives are pursued. It is the method used by a Program to achieve a desired outcome (e.g. regulations, transfer payments).</font>
																			</font>
																		</td>
																	</tr>
																	<tr style="MIN-HEIGHT: 15.75pt">
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<div>
																				<font face="Calibri">
																					<font style="FONT-SIZE: 11pt; COLOR: black">
																						<strong/>
																					</font>
																				</font> </div>
																		</td>
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<font face="Calibri">
																				<font style="FONT-SIZE: 11pt; COLOR: black">
																					<strong>Program (programme): </strong>
																				</font>
																				<font style="FONT-SIZE: 11pt; COLOR: black">Individual or groups of services, activities or combinations thereof that are managed together within the department and focus on a specific set of outputs, outcomes or service levels. </font>
																			</font>
																		</td>
																	</tr>
																	<tr style="MIN-HEIGHT: 15.75pt">
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<div>
																				<font face="Calibri">
																					<font style="FONT-SIZE: 11pt; COLOR: black">
																						<strong/>
																					</font>
																				</font> </div>
																		</td>
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<font face="Calibri">
																				<font style="FONT-SIZE: 11pt; COLOR: black">
																					<strong>Program Inventory (répertoire des programmes): </strong>
																				</font>
																				<font style="FONT-SIZE: 11pt; COLOR: black">Identifies all of the department’s programs and describes how resources are organized to contribute to the department’s Core Responsibilities and Results.</font>
																			</font>
																		</td>
																	</tr>
																	<tr style="MIN-HEIGHT: 15.75pt">
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<div>
																				<font face="Calibri">
																					<strong/>
																				</font> </div>
																		</td>
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<font face="Calibri">
																				<strong>Target (cible): </strong>
																				<font style="FONT-SIZE: 11pt; COLOR: black">What is the level of performance the Program plans to achieve? Information on the date by which the target should be achieved should also be recorded where relevant.</font>
																			</font>
																		</td>
																	</tr>
																	<tr style="MIN-HEIGHT: 15.75pt">
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<div>
																				<font face="Calibri">
																					<font style="FONT-SIZE: 11pt; COLOR: black">
																						<strong/>
																					</font>
																				</font> </div>
																		</td>
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<font face="Calibri">
																				<font style="FONT-SIZE: 11pt; COLOR: black">
																					<strong>Target Group (group cible): </strong>
																				</font>
																				<font style="FONT-SIZE: 11pt; COLOR: black">Refers to a group of people or organizations that a Program is intended to impact (e.g. seniors).</font>
																			</font>
																		</td>
																	</tr>
																	<tr style="MIN-HEIGHT: 45pt">
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<div>
																				<font face="Calibri">
																					<font style="FONT-SIZE: 11pt; COLOR: black">
																						<strong/>
																					</font>
																				</font> </div>
																		</td>
																		<td vAlign="bottom" style="FONT-SIZE: 11pt; BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none">
																			<font face="Calibri">
																				<font style="FONT-SIZE: 11pt; COLOR: black">
																					<strong>Threshold Values (Seuil pour les indicateurs de rendement): </strong>
																				</font>
																				<font style="FONT-SIZE: 11pt; COLOR: black">Values that identify an upper and lower limit for a target within which a result would be considered within an acceptable range of performance. Where a target is a specific number, the performance achieved may be close but not equal to the target. In such cases, the threshold identifies the range around the target for which the performance is still considered to acceptable. Where the target is a range, the threshold automatically adopts the same values as the target. Qualitative targets do not typically have thresholds. Please consult the Guide on Results for further information.</font>
																			</font>
																		</td>
																	</tr>
																</tbody>
															</table>
														</div>
														<div style="FONT-SIZE: 10pt; MARGIN-BOTTOM: 1pt; MARGIN-TOP: 2pt; PADDING-LEFT: 0cm; PADDING-RIGHT: 0cm">
															<span style="FONT-SIZE: 18pt"></span> </div>
														<div style="FONT-SIZE: 11pt; MARGIN-BOTTOM: 8pt; MARGIN-TOP: 0cm; PADDING-LEFT: 0cm; LINE-HEIGHT: normal; PADDING-RIGHT: 0cm">
															<font face="Calibri"></font> </div>
														<div style="FONT-SIZE: 11pt; MARGIN-BOTTOM: 8pt; MARGIN-TOP: 0cm; PADDING-LEFT: 0cm; LINE-HEIGHT: normal; PADDING-RIGHT: 0cm">
															<font face="Calibri"></font> </div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div align="center"> </div>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="my:ProgramInventory" mode="_39">
		<div title="" class="xdRepeatingSection xdRepeating" style="MARGIN-BOTTOM: 0px; WIDTH: 100%" align="left" xd:CtrlId="CTRL258" xd:xctname="RepeatingSection" tabIndex="-1" xd:widgetIndex="0">
			<div>
				<table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 708px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
					<colgroup>
						<col style="WIDTH: 160px"></col>
						<col style="WIDTH: 548px"></col>
					</colgroup>
					<tbody vAlign="top">
						<tr>
							<td style="BACKGROUND-COLOR: #f2f2f2">
								<div>
									<font size="2" face="Calibri">Program Name:</font>
								</div>
							</td>
							<td>
								<div>
									<font size="2" face="Calibri"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL259" xd:xctname="PlainText" xd:binding="my:ProgramNameEng" style="WIDTH: 100%">
											<xsl:value-of select="my:ProgramNameEng"/>
										</span>
									</font>
								</div>
							</td>
						</tr>
						<tr>
							<td style="BACKGROUND-COLOR: #f2f2f2">
								<div>
									<font size="2" face="Calibri">Description:</font>
								</div>
							</td>
							<td>
								<div><span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL260" xd:xctname="RichText" xd:binding="my:ProgramDescriptionEng" style="HEIGHT: 50px; WIDTH: 100%">
										<xsl:copy-of select="my:ProgramDescriptionEng/node()"/>
									</span>
								</div>
							</td>
						</tr>
						<tr>
							<td style="BACKGROUND-COLOR: #f2f2f2">
								<div>
									<font size="2" face="Calibri">Program Type:</font>
								</div>
							</td>
							<td>
								<div>
									<font size="2" face="Calibri"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL261" xd:xctname="PlainText" xd:binding="my:ProgramType" style="WIDTH: 100%">
											<xsl:value-of select="my:ProgramType"/>
										</span>
									</font>
								</div>
							</td>
						</tr>
						<tr>
							<td style="BACKGROUND-COLOR: #f2f2f2">
								<div>
									<font size="2" face="Calibri">CCoFoG Classification:</font>
								</div>
							</td>
							<td>
								<div>
									<font size="2" face="Calibri"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL262" xd:xctname="PlainText" xd:binding="my:CCoFoG" style="WIDTH: 100%">
											<xsl:value-of select="my:CCoFoG"/>
										</span>
									</font>
								</div>
							</td>
						</tr>
						<tr>
							<td style="BACKGROUND-COLOR: #f2f2f2">
								<div>
									<font size="2" face="Calibri">GoCO Classiffication:</font>
								</div>
							</td>
							<td>
								<div>
									<font size="2" face="Calibri"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL263" xd:xctname="PlainText" xd:binding="my:GOCO" style="WIDTH: 100%">
											<xsl:value-of select="my:GOCO"/>
										</span>
									</font>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div>
				<table title="" class="xdRepeatingTable msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 703px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" border="1" xd:CtrlId="CTRL264" xd:widgetIndex="0">
					<colgroup>
						<col style="WIDTH: 307px"></col>
						<col style="WIDTH: 396px"></col>
					</colgroup>
					<tbody class="xdTableHeader">
						<tr>
							<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
								<div>
									<h5 style="FONT-WEIGHT: normal">
										<strong>Horizontal Initiative Eng</strong>
									</h5>
								</div>
							</td>
							<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
								<div>
									<h5 style="FONT-WEIGHT: normal">
										<strong>Percentage Effort Directed To HI</strong>
									</h5>
								</div>
							</td>
						</tr>
					</tbody><tbody xd:xctname="RepeatingTable">
						<xsl:for-each select="my:HorizontalInitiative">
							<tr>
								<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL265" xd:xctname="PlainText" xd:binding="my:HorizontalInitiativeEng" style="WIDTH: 100%">
										<xsl:value-of select="my:HorizontalInitiativeEng"/>
									</span>
								</td>
								<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px"><span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL266" xd:xctname="PlainText" xd:binding="my:PercentageEffortDirectedToHI" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%">
										<xsl:attribute name="xd:num">
											<xsl:value-of select="my:PercentageEffortDirectedToHI"/>
										</xsl:attribute>
										<xsl:choose>
											<xsl:when test="function-available('xdFormatting:formatString')">
												<xsl:value-of select="xdFormatting:formatString(my:PercentageEffortDirectedToHI,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="my:PercentageEffortDirectedToHI"/>
											</xsl:otherwise>
										</xsl:choose>
									</span>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
				<div class="optionalPlaceholder" xd:xmlToEdit="HorizontalInitiative_106" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 703px">Insert item</div>
			</div>
			<div>
				<table title="" class="xdRepeatingTable msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 703px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" border="1" xd:CtrlId="CTRL267" xd:widgetIndex="0">
					<colgroup>
						<col style="WIDTH: 272px"></col>
						<col style="WIDTH: 431px"></col>
					</colgroup>
					<tbody class="xdTableHeader">
						<tr>
							<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
								<div>
									<h5 style="FONT-WEIGHT: normal">
										<strong>Program Target Group Eng</strong>
									</h5>
								</div>
							</td>
							<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
								<div>
									<h5 style="FONT-WEIGHT: normal">
										<strong>Target Group Portion Of Activity Percentage</strong>
									</h5>
								</div>
							</td>
						</tr>
					</tbody><tbody xd:xctname="RepeatingTable">
						<xsl:for-each select="my:ProgramTargetGroup">
							<tr>
								<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL268" xd:xctname="PlainText" xd:binding="my:ProgramTargetGroupEng" style="WIDTH: 100%">
										<xsl:value-of select="my:ProgramTargetGroupEng"/>
									</span>
								</td>
								<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px"><span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL269" xd:xctname="PlainText" xd:binding="my:TargetGroupPortionOfActivityPercentage" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%">
										<xsl:attribute name="xd:num">
											<xsl:value-of select="my:TargetGroupPortionOfActivityPercentage"/>
										</xsl:attribute>
										<xsl:choose>
											<xsl:when test="function-available('xdFormatting:formatString')">
												<xsl:value-of select="xdFormatting:formatString(my:TargetGroupPortionOfActivityPercentage,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="my:TargetGroupPortionOfActivityPercentage"/>
											</xsl:otherwise>
										</xsl:choose>
									</span>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
				<div class="optionalPlaceholder" xd:xmlToEdit="ProgramTargetGroup_109" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 703px">Insert item</div>
			</div>
			<div>
				<table title="" class="xdRepeatingTable msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 703px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" border="1" xd:CtrlId="CTRL270" xd:widgetIndex="0">
					<colgroup>
						<col style="WIDTH: 601px"></col>
						<col style="WIDTH: 102px"></col>
					</colgroup>
					<tbody class="xdTableHeader">
						<tr>
							<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
								<div>
									<h5 style="FONT-WEIGHT: normal">
										<strong>Method Of Intervention Eng</strong>
									</h5>
								</div>
							</td>
							<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
								<div>
									<h5 style="FONT-WEIGHT: normal">
										<strong>Percentage</strong>
									</h5>
								</div>
							</td>
						</tr>
					</tbody><tbody xd:xctname="RepeatingTable">
						<xsl:for-each select="my:MethodOfIntervention">
							<tr style="MIN-HEIGHT: 34px">
								<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
									<div>
										<select title="" class="xdComboBox xdBehavior_Select" style="WIDTH: 499px" size="1" xd:CtrlId="CTRL322" xd:xctname="dropdown" xd:binding="my:MethodOfInterventionEng" xd:boundProp="value" value="" tabIndex="0">
											<xsl:attribute name="value">
												<xsl:value-of select="my:MethodOfInterventionEng"/>
											</xsl:attribute>
											<xsl:choose>
												<xsl:when test="function-available('xdXDocument:GetDOM')">
													<option/>
													<xsl:variable name="val" select="my:MethodOfInterventionEng"/>
													<xsl:if test="not(xdXDocument:GetDOM(&quot;LkpSuperListExport&quot;)/dataroot/LkpSuperListExport[HeirType = 1][UID=$val] or $val='')">
														<option selected="selected">
															<xsl:attribute name="value">
																<xsl:value-of select="$val"/>
															</xsl:attribute>
															<xsl:value-of select="$val"/>
														</option>
													</xsl:if>
													<xsl:for-each select="xdXDocument:GetDOM(&quot;LkpSuperListExport&quot;)/dataroot/LkpSuperListExport[HeirType = 1]">
														<option>
															<xsl:attribute name="value">
																<xsl:value-of select="UID"/>
															</xsl:attribute>
															<xsl:if test="$val=UID">
																<xsl:attribute name="selected">selected</xsl:attribute>
															</xsl:if>
															<xsl:value-of select="TitleEng"/>
														</option>
													</xsl:for-each>
												</xsl:when>
												<xsl:otherwise>
													<option>
														<xsl:value-of select="my:MethodOfInterventionEng"/>
													</option>
												</xsl:otherwise>
											</xsl:choose>
										</select><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL271" xd:xctname="PlainText" xd:binding="my:MethodOfInterventionEng" style="WIDTH: 56px; COLOR: #bfbfbf">
											<xsl:value-of select="my:MethodOfInterventionEng"/>
										</span>
									</div>
								</td>
								<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px"><span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL324" xd:xctname="PlainText" xd:binding="my:MethodOfInterventionPercentage" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%">
										<xsl:attribute name="xd:num">
											<xsl:value-of select="my:MethodOfInterventionPercentage"/>
										</xsl:attribute>
										<xsl:choose>
											<xsl:when test="function-available('xdFormatting:formatString')">
												<xsl:value-of select="xdFormatting:formatString(my:MethodOfInterventionPercentage,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="my:MethodOfInterventionPercentage"/>
											</xsl:otherwise>
										</xsl:choose>
									</span>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
				<div class="optionalPlaceholder" xd:xmlToEdit="MethodOfIntervention_112" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 703px">Insert item</div>
			</div>
			<div>
				<table title="" class="xdRepeatingTable msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 703px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" border="1" xd:CtrlId="CTRL273" xd:widgetIndex="0">
					<colgroup>
						<col style="WIDTH: 326px"></col>
						<col style="WIDTH: 377px"></col>
					</colgroup>
					<tbody class="xdTableHeader">
						<tr>
							<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
								<div>
									<h5 style="FONT-WEIGHT: normal">
										<strong>Search Term Eng</strong>
									</h5>
								</div>
							</td>
							<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
								<div>
									<h5 style="FONT-WEIGHT: normal">
										<strong>Search Term French</strong>
									</h5>
								</div>
							</td>
						</tr>
					</tbody><tbody xd:xctname="RepeatingTable">
						<xsl:for-each select="my:Search">
							<tr>
								<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL274" xd:xctname="PlainText" xd:binding="my:SearchTermEng" style="WIDTH: 100%">
										<xsl:value-of select="my:SearchTermEng"/>
									</span>
								</td>
								<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL275" xd:xctname="PlainText" xd:binding="my:SearchTermFrench" style="WIDTH: 100%">
										<xsl:value-of select="my:SearchTermFrench"/>
									</span>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
				<div class="optionalPlaceholder" xd:xmlToEdit="Search_115" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 703px">Insert item</div>
			</div>
			<div>
				<table title="" class="xdRepeatingTable msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 704px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" border="1" xd:CtrlId="CTRL276" xd:widgetIndex="0">
					<colgroup>
						<col style="WIDTH: 352px"></col>
						<col style="WIDTH: 352px"></col>
					</colgroup>
					<tbody class="xdTableHeader">
						<tr>
							<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
								<div>
									<h5 style="FONT-WEIGHT: normal">
										<strong>Web Link Eng</strong>
									</h5>
								</div>
							</td>
							<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
								<div>
									<h5 style="FONT-WEIGHT: normal">
										<strong>Web Link French</strong>
									</h5>
								</div>
							</td>
						</tr>
					</tbody><tbody xd:xctname="RepeatingTable">
						<xsl:for-each select="my:WebLinks">
							<tr>
								<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px"><span class="xdHyperlinkBox xdBehavior_Formatting xdHyperlinkBoxClickable" tabIndex="-1" xd:CtrlId="CTRL277" xd:xctname="HyperlinkBox" xd:binding="my:WebLinkEng" xd:boundProp="href" tabStop="true" style="FONT-SIZE: 8pt; FONT-FAMILY: Segoe UI; WIDTH: 100%">
										<button class="xdHyperlinkBoxButtonClickable" tabIndex="0">
											<img style="vertical-align:bottom" src="res://infopath.exe/hyperlinkbox.png"/>
										</button>
										<span style="width:5px;"/>
										<xsl:choose>
											<xsl:when test="string-length(my:WebLinkEng)!=0">
												<A class="hyperlinkAnchor" tabIndex="0" style="">
													<xsl:attribute name="title">
														<xsl:value-of select="my:WebLinkEng"/>
													</xsl:attribute>
													<xsl:attribute name="href">
														<xsl:value-of select="my:WebLinkEng"/>
													</xsl:attribute>
													<xsl:value-of select="substring(normalize-space(my:WebLinkEng), 0, 256)"/>
												</A>
											</xsl:when>
											<xsl:otherwise>Click here to insert a hyperlink</xsl:otherwise>
										</xsl:choose>
									</span>
								</td>
								<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px"><span class="xdHyperlinkBox xdBehavior_Formatting xdHyperlinkBoxClickable" tabIndex="-1" xd:CtrlId="CTRL278" xd:xctname="HyperlinkBox" xd:binding="my:WebLinkFrench" xd:boundProp="href" tabStop="true" style="FONT-SIZE: 8pt; FONT-FAMILY: Segoe UI; WIDTH: 100%">
										<button class="xdHyperlinkBoxButtonClickable" tabIndex="0">
											<img style="vertical-align:bottom" src="res://infopath.exe/hyperlinkbox.png"/>
										</button>
										<span style="width:5px;"/>
										<xsl:choose>
											<xsl:when test="string-length(my:WebLinkFrench)!=0">
												<A class="hyperlinkAnchor" tabIndex="0" style="">
													<xsl:attribute name="title">
														<xsl:value-of select="my:WebLinkFrench"/>
													</xsl:attribute>
													<xsl:attribute name="href">
														<xsl:value-of select="my:WebLinkFrench"/>
													</xsl:attribute>
													<xsl:value-of select="substring(normalize-space(my:WebLinkFrench), 0, 256)"/>
												</A>
											</xsl:when>
											<xsl:otherwise>Click here to insert a hyperlink</xsl:otherwise>
										</xsl:choose>
									</span>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
				<div class="optionalPlaceholder" xd:xmlToEdit="WebLinks_118" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 704px">Insert item</div>
			</div>
			<div><xsl:apply-templates select="my:ProgramOutcomes" mode="_40"/>
				<div class="optionalPlaceholder" xd:xmlToEdit="ProgramOutcomes_100" tabIndex="0" xd:action="xCollection::insert" align="left" style="WIDTH: 739px">Insert Additional Program Outcome</div>
			</div>
			<div>
				<table title="" class="xdRepeatingTable msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 703px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" border="1" xd:CtrlId="CTRL299" xd:widgetIndex="0">
					<colgroup>
						<col style="WIDTH: 335px"></col>
						<col style="WIDTH: 368px"></col>
					</colgroup>
					<tbody class="xdTableHeader">
						<tr>
							<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
								<div>
									<h5 style="FONT-WEIGHT: normal">
										<strong>Commitment Item</strong>
									</h5>
								</div>
							</td>
							<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
								<div>
									<h5 style="FONT-WEIGHT: normal">
										<strong>Commitment Status</strong>
									</h5>
								</div>
							</td>
						</tr>
					</tbody><tbody xd:xctname="RepeatingTable">
						<xsl:for-each select="my:MandateLetterCommitment">
							<tr>
								<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL300" xd:xctname="PlainText" xd:binding="my:CommitmentItem" style="WIDTH: 100%">
										<xsl:value-of select="my:CommitmentItem"/>
									</span>
								</td>
								<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL301" xd:xctname="PlainText" xd:binding="my:CommitmentStatus" style="WIDTH: 100%">
										<xsl:value-of select="my:CommitmentStatus"/>
									</span>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
				<div class="optionalPlaceholder" xd:xmlToEdit="MandateLetterCommitment_121" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 703px">Insert item</div>
			</div>
			<div>
				<table title="" class="xdRepeatingTable msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 703px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" border="1" xd:CtrlId="CTRL302" xd:widgetIndex="0">
					<colgroup>
						<col style="WIDTH: 275px"></col>
						<col style="WIDTH: 428px"></col>
					</colgroup>
					<tbody class="xdTableHeader">
						<tr>
							<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
								<div>
									<h5 style="FONT-WEIGHT: normal">
										<strong>Attribution To DR</strong>
									</h5>
								</div>
							</td>
							<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
								<div>
									<h5 style="FONT-WEIGHT: normal">
										<strong>Attribution To DRPercentage</strong>
									</h5>
								</div>
							</td>
						</tr>
					</tbody><tbody xd:xctname="RepeatingTable">
						<xsl:for-each select="my:DRAttribution">
							<tr>
								<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL303" xd:xctname="PlainText" xd:binding="my:AttributionToDR" style="WIDTH: 100%">
										<xsl:value-of select="my:AttributionToDR"/>
									</span>
								</td>
								<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px"><span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL304" xd:xctname="PlainText" xd:binding="my:AttributionToDRPercentage" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%">
										<xsl:attribute name="xd:num">
											<xsl:value-of select="my:AttributionToDRPercentage"/>
										</xsl:attribute>
										<xsl:choose>
											<xsl:when test="function-available('xdFormatting:formatString')">
												<xsl:value-of select="xdFormatting:formatString(my:AttributionToDRPercentage,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="my:AttributionToDRPercentage"/>
											</xsl:otherwise>
										</xsl:choose>
									</span>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
				<div class="optionalPlaceholder" xd:xmlToEdit="DRAttribution_124" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 703px">Insert Additional Attribution to Departmental Result</div>
			</div>
			<div>
				<table title="" class="xdRepeatingTable msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 703px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" border="1" xd:CtrlId="CTRL305" xd:widgetIndex="0">
					<colgroup>
						<col style="WIDTH: 275px"></col>
						<col style="WIDTH: 428px"></col>
					</colgroup>
					<tbody class="xdTableHeader">
						<tr>
							<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
								<div>
									<h5 style="FONT-WEIGHT: normal">
										<strong>Attribution To CR</strong>
									</h5>
								</div>
							</td>
							<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
								<div>
									<h5 style="FONT-WEIGHT: normal">
										<strong>Attribution To CRPercentage</strong>
									</h5>
								</div>
							</td>
						</tr>
					</tbody><tbody xd:xctname="RepeatingTable">
						<xsl:for-each select="my:CRAttribution">
							<tr>
								<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
									<select title="" class="xdComboBox xdBehavior_Select" style="WIDTH: 100%" size="1" xd:CtrlId="CTRL328" xd:xctname="dropdown" xd:binding="my:AttributionToCR" xd:boundProp="value" value="" tabIndex="0">
										<xsl:attribute name="value">
											<xsl:value-of select="my:AttributionToCR"/>
										</xsl:attribute>
										<xsl:choose>
											<xsl:when test="function-available('xdXDocument:GetDOM')">
												<option/>
												<xsl:variable name="val" select="my:AttributionToCR"/>
												<xsl:if test="not(../../my:CoreResponsibility/my:CRNameEng[.=$val] or $val='')">
													<option selected="selected">
														<xsl:attribute name="value">
															<xsl:value-of select="$val"/>
														</xsl:attribute>
														<xsl:value-of select="$val"/>
													</option>
												</xsl:if>
												<xsl:for-each select="../../my:CoreResponsibility/my:CRNameEng">
													<option>
														<xsl:attribute name="value">
															<xsl:value-of select="."/>
														</xsl:attribute>
														<xsl:if test="$val=.">
															<xsl:attribute name="selected">selected</xsl:attribute>
														</xsl:if>
														<xsl:value-of select="."/>
													</option>
												</xsl:for-each>
											</xsl:when>
											<xsl:otherwise>
												<option>
													<xsl:value-of select="my:AttributionToCR"/>
												</option>
											</xsl:otherwise>
										</xsl:choose>
									</select>
								</td>
								<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px"><span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL307" xd:xctname="PlainText" xd:binding="my:AttributionToCRPercentage" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%">
										<xsl:attribute name="xd:num">
											<xsl:value-of select="my:AttributionToCRPercentage"/>
										</xsl:attribute>
										<xsl:choose>
											<xsl:when test="function-available('xdFormatting:formatString')">
												<xsl:value-of select="xdFormatting:formatString(my:AttributionToCRPercentage,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="my:AttributionToCRPercentage"/>
											</xsl:otherwise>
										</xsl:choose>
									</span>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
				<div class="optionalPlaceholder" xd:xmlToEdit="CRAttribution_127" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 703px">Insert Additional Attribution to Core Responsibility</div>
			</div>
			<div>Program Comments Eng:<span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL308" xd:xctname="PlainText" xd:binding="my:ProgramCommentsEng" style="WIDTH: 130px">
					<xsl:value-of select="my:ProgramCommentsEng"/>
				</span>
			</div>
			<div>Program Comments French:<span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL309" xd:xctname="PlainText" xd:binding="my:ProgramCommentsFrench" style="WIDTH: 130px">
					<xsl:value-of select="my:ProgramCommentsFrench"/>
				</span>
			</div>
			<div>
				<table title="" class="xdRepeatingTable msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 702px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" border="1" xd:CtrlId="CTRL310" xd:widgetIndex="0">
					<colgroup>
						<col style="WIDTH: 140px"></col>
						<col style="WIDTH: 125px"></col>
						<col style="WIDTH: 135px"></col>
						<col style="WIDTH: 177px"></col>
						<col style="WIDTH: 125px"></col>
					</colgroup>
					<tbody class="xdTableHeader">
						<tr>
							<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
								<div>
									<h5 style="FONT-WEIGHT: normal">
										<strong>Official Name</strong>
									</h5>
								</div>
							</td>
							<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
								<div>
									<h5 style="FONT-WEIGHT: normal">
										<strong>Official Title</strong>
									</h5>
								</div>
							</td>
							<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
								<div>
									<h5 style="FONT-WEIGHT: normal">
										<strong>Official Email</strong>
									</h5>
								</div>
							</td>
							<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
								<div>
									<h5 style="FONT-WEIGHT: normal">
										<strong>Official Telephone</strong>
									</h5>
								</div>
							</td>
							<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
								<div>
									<h5 style="FONT-WEIGHT: normal">
										<strong>Official Role</strong>
									</h5>
								</div>
							</td>
						</tr>
					</tbody><tbody xd:xctname="RepeatingTable">
						<xsl:for-each select="my:ProgramOfficial">
							<tr>
								<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL311" xd:xctname="PlainText" xd:binding="my:OfficialName" style="WIDTH: 100%">
										<xsl:value-of select="my:OfficialName"/>
									</span>
								</td>
								<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL312" xd:xctname="PlainText" xd:binding="my:OfficialTitle" style="WIDTH: 100%">
										<xsl:value-of select="my:OfficialTitle"/>
									</span>
								</td>
								<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL313" xd:xctname="PlainText" xd:binding="my:OfficialEmail" style="WIDTH: 100%">
										<xsl:value-of select="my:OfficialEmail"/>
									</span>
								</td>
								<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL314" xd:xctname="PlainText" xd:binding="my:OfficialTelephone" style="WIDTH: 100%">
										<xsl:value-of select="my:OfficialTelephone"/>
									</span>
								</td>
								<td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL315" xd:xctname="PlainText" xd:binding="my:OfficialRole" style="WIDTH: 100%">
										<xsl:value-of select="my:OfficialRole"/>
									</span>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
				<div class="optionalPlaceholder" xd:xmlToEdit="ProgramOfficial_132" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 702px">Insert Additional Program Official</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="my:ProgramOutcomes" mode="_40">
		<div title="" class="xdRepeatingSection xdRepeating" style="MARGIN-BOTTOM: 0px; WIDTH: 739px" align="left" xd:CtrlId="CTRL279" xd:xctname="RepeatingSection" tabIndex="-1" xd:widgetIndex="0">
			<div>
				<table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 708px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
					<colgroup>
						<col style="WIDTH: 158px"></col>
						<col style="WIDTH: 550px"></col>
					</colgroup>
					<tbody vAlign="top">
						<tr>
							<td style="BACKGROUND-COLOR: #f2f2f2">
								<div>
									<font size="2" face="Calibri">Program Outcome Code:</font>
								</div>
							</td>
							<td>
								<div>
									<font size="2" face="Calibri"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL280" xd:xctname="PlainText" xd:binding="my:ProgramOutcomeCode" style="WIDTH: 100%">
											<xsl:value-of select="my:ProgramOutcomeCode"/>
										</span>
									</font>
								</div>
							</td>
						</tr>
						<tr>
							<td style="BACKGROUND-COLOR: #f2f2f2">
								<div>
									<font size="2" face="Calibri">Program Outcome Eng:</font>
								</div>
							</td>
							<td>
								<div>
									<font size="2" face="Calibri"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL281" xd:xctname="PlainText" xd:binding="my:ProgramOutcomeEng" style="WIDTH: 100%">
											<xsl:value-of select="my:ProgramOutcomeEng"/>
										</span>
									</font>
								</div>
							</td>
						</tr>
						<tr>
							<td style="BACKGROUND-COLOR: #f2f2f2">
								<div>
									<font size="2" face="Calibri">Program Outcome Fra:</font>
								</div>
							</td>
							<td>
								<div>
									<font size="2" face="Calibri"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL282" xd:xctname="PlainText" xd:binding="my:ProgramOutcomeFra" style="WIDTH: 100%">
											<xsl:value-of select="my:ProgramOutcomeFra"/>
										</span>
									</font>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div><xsl:apply-templates select="my:ProgramOutcomeIndicators" mode="_41"/>
				<div class="optionalPlaceholder" xd:xmlToEdit="ProgramOutcomeIndicators_101" tabIndex="0" xd:action="xCollection::insert" align="left" style="WIDTH: 732px">Insert Additional Program Indicator</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="my:ProgramOutcomeIndicators" mode="_41">
		<div title="" class="xdRepeatingSection xdRepeating" style="MARGIN-BOTTOM: 0px; WIDTH: 732px" align="left" xd:CtrlId="CTRL283" xd:xctname="RepeatingSection" tabIndex="-1" xd:widgetIndex="0">
			<div>
				<table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 708px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
					<colgroup>
						<col style="WIDTH: 156px"></col>
						<col style="WIDTH: 552px"></col>
					</colgroup>
					<tbody vAlign="top">
						<tr>
							<td style="BACKGROUND-COLOR: #f2f2f2">
								<div>
									<font style="BACKGROUND-COLOR: #f2f2f2">Indicator Code:</font>
								</div>
							</td>
							<td style="BORDER-LEFT-COLOR: ">
								<div>
									<font size="2" face="Calibri"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL284" xd:xctname="PlainText" xd:binding="my:ProgramOutcomeIndicatorCode" style="WIDTH: 100%">
											<xsl:value-of select="my:ProgramOutcomeIndicatorCode"/>
										</span>
									</font>
								</div>
							</td>
						</tr>
						<tr style="MIN-HEIGHT: 24px">
							<td style="BACKGROUND-COLOR: #f2f2f2">
								<div>
									<font size="2" face="Calibri">
										<font style="BACKGROUND-COLOR: #f2f2f2">Indicator Name</font>:</font>
								</div>
							</td>
							<td style="BORDER-LEFT-COLOR: ">
								<div>
									<font size="2" face="Calibri"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL285" xd:xctname="PlainText" xd:binding="my:ProgramOutcomeIndicatorEng" style="WIDTH: 100%">
											<xsl:value-of select="my:ProgramOutcomeIndicatorEng"/>
										</span>
									</font>
								</div>
							</td>
						</tr>
						<tr>
							<td style="BORDER-BOTTOM-COLOR: ; BACKGROUND-COLOR: #f2f2f2">
								<div>
									<font size="2" face="Calibri">
										<font style="BACKGROUND-COLOR: #f2f2f2">Nom d'indicateur:</font>
									</font>
								</div>
							</td>
							<td style="BORDER-LEFT-COLOR: ">
								<div>
									<font size="2" face="Calibri"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL286" xd:xctname="PlainText" xd:binding="my:ProgramOutcomeIndicatorFra" style="WIDTH: 100%">
											<xsl:value-of select="my:ProgramOutcomeIndicatorFra"/>
										</span>
									</font>
								</div>
							</td>
						</tr>
						<tr>
							<td style="BACKGROUND-COLOR: #f2f2f2">
								<div>
									<font size="2" face="Calibri">
										<font style="BACKGROUND-COLOR: #f2f2f2">Datatype</font>:</font>
								</div>
							</td>
							<td style="BORDER-LEFT-COLOR: ">
								<div>
									<font size="2" face="Calibri"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL287" xd:xctname="PlainText" xd:binding="my:POIDataType" style="WIDTH: 100%">
											<xsl:value-of select="my:POIDataType"/>
										</span>
									</font>
								</div>
							</td>
						</tr>
						<tr>
							<td style="BACKGROUND-COLOR: #f2f2f2">
								<div>
									<font size="2" face="Calibri">
										<font style="BACKGROUND-COLOR: #f2f2f2">Data Source</font>:</font>
								</div>
							</td>
							<td style="BORDER-LEFT-COLOR: ">
								<div>
									<font size="2" face="Calibri"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL288" xd:xctname="PlainText" xd:binding="my:POISource" style="WIDTH: 100%">
											<xsl:value-of select="my:POISource"/>
										</span>
									</font>
								</div>
							</td>
						</tr>
						<tr>
							<td style="BACKGROUND-COLOR: #f2f2f2">
								<div>
									<font size="2" face="Calibri">
										<font style="BACKGROUND-COLOR: #f2f2f2">Collection Frequency</font>:</font>
								</div>
							</td>
							<td style="BORDER-LEFT-COLOR: ">
								<div>
									<font size="2" face="Calibri"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL289" xd:xctname="PlainText" xd:binding="my:POICollectionFrequency" style="WIDTH: 100%">
											<xsl:value-of select="my:POICollectionFrequency"/>
										</span>
									</font>
								</div>
							</td>
						</tr>
						<tr>
							<td style="BACKGROUND-COLOR: #f2f2f2">
								<div>
									<font size="2" face="Calibri">
										<font style="BACKGROUND-COLOR: #f2f2f2">If other, frequency</font>:</font>
								</div>
							</td>
							<td style="BORDER-LEFT-COLOR: ">
								<div>
									<font size="2" face="Calibri"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL290" xd:xctname="PlainText" xd:binding="my:POIDataCollectionFrequencyOtherText" style="WIDTH: 100%">
											<xsl:value-of select="my:POIDataCollectionFrequencyOtherText"/>
										</span>
									</font>
								</div>
							</td>
						</tr>
						<tr>
							<td style="BACKGROUND-COLOR: #f2f2f2">
								<div>
									<font size="2" face="Calibri">
										<font style="BACKGROUND-COLOR: #f2f2f2">Data Owner</font>:</font>
								</div>
							</td>
							<td style="BORDER-LEFT-COLOR: ">
								<div>
									<font size="2" face="Calibri"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL291" xd:xctname="PlainText" xd:binding="my:POIDataOwner" style="WIDTH: 100%">
											<xsl:value-of select="my:POIDataOwner"/>
										</span>
									</font>
								</div>
							</td>
						</tr>
						<tr>
							<td style="BACKGROUND-COLOR: #f2f2f2">
								<div>
									<font size="2" face="Calibri">
										<font style="BACKGROUND-COLOR: #f2f2f2">Target</font>:</font>
								</div>
							</td>
							<td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
								<div>
									<font size="2" face="Calibri"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL292" xd:xctname="PlainText" xd:binding="my:POITargetEng" style="WIDTH: 100%">
											<xsl:value-of select="my:POITargetEng"/>
										</span>
									</font>
								</div>
							</td>
						</tr>
						<tr>
							<td style="BORDER-TOP-COLOR: ; BACKGROUND-COLOR: #f2f2f2">
								<div>
									<font size="2" face="Calibri">
										<font style="BACKGROUND-COLOR: #f2f2f2">Target Date</font>:</font>
								</div>
							</td>
							<td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
								<div>
									<font size="2" face="Calibri">
										<div title="" class="xdDTPicker" style="WIDTH: 100%" noWrap="1" xd:CtrlId="CTRL293" xd:xctname="DTPicker"><span class="xdDTText xdBehavior_FormattingNoBUI" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="DTPicker_DTText" xd:binding="my:POITargetDate" xd:boundProp="xd:num" xd:datafmt="&quot;date&quot;,&quot;dateFormat:Short Date;&quot;" xd:innerCtrl="_DTText">
												<xsl:attribute name="xd:num">
													<xsl:value-of select="my:POITargetDate"/>
												</xsl:attribute>
												<xsl:choose>
													<xsl:when test="function-available('xdFormatting:formatString')">
														<xsl:value-of select="xdFormatting:formatString(my:POITargetDate,&quot;date&quot;,&quot;dateFormat:Short Date;&quot;)"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="my:POITargetDate"/>
													</xsl:otherwise>
												</xsl:choose>
											</span>
											<button class="xdDTButton" xd:xctname="DTPicker_DTButton" xd:innerCtrl="_DTButton" tabIndex="0">
												<img src="res://infopath.exe/calendar.gif" Linked="true"/>
											</button>
										</div>
									</font>
								</div>
							</td>
						</tr>
						<tr>
							<td style="BACKGROUND-COLOR: #f2f2f2">
								<div>
									<font size="2" face="Calibri">
										<font style="BACKGROUND-COLOR: #f2f2f2">Minimum Value</font>:</font>
								</div>
							</td>
							<td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
								<div>
									<font size="2" face="Calibri"><span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:CtrlId="CTRL294" xd:xctname="PlainText" xd:binding="my:POITargetMinimumValue" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" style="WIDTH: 100%">
											<xsl:attribute name="xd:num">
												<xsl:value-of select="my:POITargetMinimumValue"/>
											</xsl:attribute>
											<xsl:choose>
												<xsl:when test="function-available('xdFormatting:formatString')">
													<xsl:value-of select="xdFormatting:formatString(my:POITargetMinimumValue,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="my:POITargetMinimumValue"/>
												</xsl:otherwise>
											</xsl:choose>
										</span>
									</font>
								</div>
							</td>
						</tr>
						<tr>
							<td style="BACKGROUND-COLOR: #f2f2f2">
								<div>
									<font size="2" face="Calibri">
										<font style="BACKGROUND-COLOR: #f2f2f2">Maximum Value</font>:</font>
								</div>
							</td>
							<td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
								<div>
									<font size="2" face="Calibri"><span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL295" xd:xctname="PlainText" xd:binding="my:POITargetMaximumValue" style="WIDTH: 100%">
											<xsl:value-of select="my:POITargetMaximumValue"/>
										</span>
									</font>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div><xsl:apply-templates select="my:POIMethodology" mode="_44"/>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="my:POIMethodology" mode="_44">
		<div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 725px; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:CtrlId="CTRL318" xd:xctname="Section" tabIndex="-1" xd:widgetIndex="0">
			<div>
				<table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 724px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
					<colgroup>
						<col style="WIDTH: 155px"></col>
						<col style="WIDTH: 569px"></col>
					</colgroup>
					<tbody vAlign="top">
						<tr>
							<td style="BACKGROUND-COLOR: #f2f2f2">
								<div>
									<font size="2" face="Calibri">English Methodology:</font>
								</div>
							</td>
							<td>
								<div><span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL319" xd:xctname="RichText" xd:binding="my:POIMethodologyEng" style="HEIGHT: 50px; WIDTH: 100%">
										<xsl:copy-of select="my:POIMethodologyEng/node()"/>
									</span>
								</div>
							</td>
						</tr>
						<tr>
							<td style="BACKGROUND-COLOR: #f2f2f2">
								<div>
									<font size="2" face="Calibri">French Methodology:</font>
								</div>
							</td>
							<td>
								<div><span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:CtrlId="CTRL320" xd:xctname="RichText" xd:binding="my:POIMethodologyFra" style="HEIGHT: 50px; WIDTH: 100%">
										<xsl:copy-of select="my:POIMethodologyFra/node()"/>
									</span>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div> </div>
		</div>
	</xsl:template>
</xsl:stylesheet>
