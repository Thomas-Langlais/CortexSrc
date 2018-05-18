<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:my="http://schemas.microsoft.com/office/infopath/2003/myXSD/2018-05-07T13:30:50" xmlns:od="urn:schemas-microsoft-com:officedata" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:xd="http://schemas.microsoft.com/office/infopath/2003" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns:xdExtension="http://schemas.microsoft.com/office/infopath/2003/xslt/extension" xmlns:xdXDocument="http://schemas.microsoft.com/office/infopath/2003/xslt/xDocument" xmlns:xdSolution="http://schemas.microsoft.com/office/infopath/2003/xslt/solution" xmlns:xdFormatting="http://schemas.microsoft.com/office/infopath/2003/xslt/formatting" xmlns:xdImage="http://schemas.microsoft.com/office/infopath/2003/xslt/xImage" xmlns:xdUtil="http://schemas.microsoft.com/office/infopath/2003/xslt/Util" xmlns:xdMath="http://schemas.microsoft.com/office/infopath/2003/xslt/Math" xmlns:xdDate="http://schemas.microsoft.com/office/infopath/2003/xslt/Date" xmlns:sig="http://www.w3.org/2000/09/xmldsig#" xmlns:xdSignatureProperties="http://schemas.microsoft.com/office/infopath/2003/SignatureProperties" xmlns:ipApp="http://schemas.microsoft.com/office/infopath/2006/XPathExtension/ipApp" xmlns:xdEnvironment="http://schemas.microsoft.com/office/infopath/2006/xslt/environment" xmlns:xdUser="http://schemas.microsoft.com/office/infopath/2006/xslt/User" xmlns:xdServerInfo="http://schemas.microsoft.com/office/infopath/2009/xslt/ServerInfo">
  <xsl:output method="html" indent="no"/>
  <xsl:template match="my:myFields">
    <html>
      <head>
        <meta content="text/html" http-equiv="Content-Type"></meta>
        <style controlStyle="controlStyle">@media screen 			{ 			BODY{margin-left:21px;background-position:21px 0px;} 			} 		BODY{color:windowtext;background-color:window;layout-grid:none;} 		.xdListItem {display:inline-block;width:100%;vertical-align:text-top;} 		.xdListBox,.xdComboBox{margin:1px;} 		.xdInlinePicture{margin:1px; BEHAVIOR: url(#default#urn::xdPicture) } 		.xdLinkedPicture{margin:1px; BEHAVIOR: url(#default#urn::xdPicture) url(#default#urn::controls/Binder) } 		.xdHyperlinkBox{word-wrap:break-word; text-overflow:ellipsis;overflow-x:hidden; OVERFLOW-Y: hidden; WHITE-SPACE:nowrap; display:inline-block;margin:1px;padding:5px;border: 1pt solid #dcdcdc;color:windowtext;BEHAVIOR: url(#default#urn::controls/Binder) url(#default#DataBindingUI)} 		.xdSection{border:1pt solid transparent ;margin:0px 0px 0px 0px;padding:0px 0px 0px 0px;} 		.xdRepeatingSection{border:1pt solid transparent;margin:0px 0px 0px 0px;padding:0px 0px 0px 0px;} 		.xdMultiSelectList{margin:1px;display:inline-block; border:1pt solid #dcdcdc; padding:1px 1px 1px 5px; text-indent:0; color:windowtext; background-color:window; overflow:auto; behavior: url(#default#DataBindingUI) url(#default#urn::controls/Binder) url(#default#MultiSelectHelper) url(#default#ScrollableRegion);} 		.xdMultiSelectListItem{display:block;white-space:nowrap}		.xdMultiSelectFillIn{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;overflow:hidden;text-align:left;}		.xdBehavior_Formatting {BEHAVIOR: url(#default#urn::controls/Binder) url(#default#Formatting);} 	 .xdBehavior_FormattingNoBUI{BEHAVIOR: url(#default#CalPopup) url(#default#urn::controls/Binder) url(#default#Formatting);} 	.xdExpressionBox{margin: 1px;padding:1px;word-wrap: break-word;text-overflow: ellipsis;overflow-x:hidden;}.xdBehavior_GhostedText,.xdBehavior_GhostedTextNoBUI{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#TextField) url(#default#GhostedText);}	.xdBehavior_GTFormatting{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#Formatting) url(#default#GhostedText);}	.xdBehavior_GTFormattingNoBUI{BEHAVIOR: url(#default#CalPopup) url(#default#urn::controls/Binder) url(#default#Formatting) url(#default#GhostedText);}	.xdBehavior_Boolean{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#BooleanHelper);}	.xdBehavior_Select{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#SelectHelper);}	.xdBehavior_ComboBox{BEHAVIOR: url(#default#ComboBox)} 	.xdBehavior_ComboBoxTextField{BEHAVIOR: url(#default#ComboBoxTextField);} 	.xdRepeatingTable{BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word;}.xdScrollableRegion{BEHAVIOR: url(#default#ScrollableRegion);} 		.xdLayoutRegion{display:inline-block;} 		.xdMaster{BEHAVIOR: url(#default#MasterHelper);} 		.xdActiveX{margin:1px; BEHAVIOR: url(#default#ActiveX);} 		.xdFileAttachment{display:inline-block;margin:1px;BEHAVIOR:url(#default#urn::xdFileAttachment);} 		.xdSharePointFileAttachment{display:inline-block;margin:2px;BEHAVIOR:url(#default#xdSharePointFileAttachment);} 		.xdAttachItem{display:inline-block;width:100%%;height:25px;margin:1px;BEHAVIOR:url(#default#xdSharePointFileAttachItem);} 		.xdSignatureLine{display:inline-block;margin:1px;background-color:transparent;border:1pt solid transparent;BEHAVIOR:url(#default#SignatureLine);} 		.xdHyperlinkBoxClickable{behavior: url(#default#HyperlinkBox)} 		.xdHyperlinkBoxButtonClickable{border-width:1px;border-style:outset;behavior: url(#default#HyperlinkBoxButton)} 		.xdPictureButton{background-color: transparent; padding: 0px; behavior: url(#default#PictureButton);} 		.xdPageBreak{display: none;}BODY{margin-right:21px;} 		.xdTextBoxRTL{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow:hidden;text-align:right;word-wrap:normal;} 		.xdRichTextBoxRTL{display:inline-block;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow-x:hidden;word-wrap:break-word;text-overflow:ellipsis;text-align:right;font-weight:normal;font-style:normal;text-decoration:none;vertical-align:baseline;} 		.xdDTTextRTL{height:100%;width:100%;margin-left:22px;overflow:hidden;padding:0px;white-space:nowrap;} 		.xdDTButtonRTL{margin-right:-21px;height:17px;width:20px;behavior: url(#default#DTPicker);} 		.xdMultiSelectFillinRTL{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;overflow:hidden;text-align:right;}.xdTextBox{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow:hidden;text-align:left;word-wrap:normal;} 		.xdRichTextBox{display:inline-block;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow-x:hidden;word-wrap:break-word;text-overflow:ellipsis;text-align:left;font-weight:normal;font-style:normal;text-decoration:none;vertical-align:baseline;} 		.xdDTPicker{;display:inline;margin:1px;margin-bottom: 2px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow:hidden;text-indent:0; layout-grid: none} 		.xdDTText{height:100%;width:100%;margin-right:22px;overflow:hidden;padding:0px;white-space:nowrap;} 		.xdDTButton{margin-left:-21px;height:17px;width:20px;behavior: url(#default#DTPicker);} 		.xdRepeatingTable TD {VERTICAL-ALIGN: top;}</style>
        <style tableEditor="TableStyleRulesID">
          TABLE.xdLayout TD {
          BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none
          }
          TABLE.msoUcTable TD {
          BORDER-TOP: 1pt solid; BORDER-RIGHT: 1pt solid; BORDER-BOTTOM: 1pt solid; BORDER-LEFT: 1pt solid
          }
          TABLE {
          BEHAVIOR: url (#default#urn::tables/NDTable)
          }
        </style>
        <style languageStyle="languageStyle">
          BODY {
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
        <style themeStyle="urn:office.microsoft.com:themeSummer">
          TABLE {
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
        <style tableStyle="Professional">
          TR.xdTitleRow {
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
        <div align="center"></div>
        <div align="center">
          <table class="xdFormLayout" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 801px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none">
            <colgroup>
              <col style="WIDTH: 801px"></col>
            </colgroup>
            <tbody>
              <tr class="xdTitleRow">
                <td vAlign="bottom" class="xdTitleCell">
                  <h1 align="left">
                    <img style="HEIGHT: 83px; WIDTH: 755px" src="6F69EF15.gif"/>
                  </h1>
                </td>
              </tr>
              <tr class="xdTitleRow">
                <td style="BORDER-TOP-COLOR: ; VERTICAL-ALIGN: top; PADDING-BOTTOM: 14px; PADDING-TOP: 5px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px" class="xdTitleCell">
                  <div align="left">
                    <font color="#7f7f7f"></font> 
                  </div>
                  <div align="center">
                    <u>
                      <strong>
                        <font size="5">Regulatory Reviews Survey </font>
                      </strong>
                    </u>
                  </div>
                  <div align="left">
                    <font size="3">
                      <strong/>
                    </font> 
                  </div>
                  <div style="MARGIN-BOTTOM: 10pt" align="left">Budget 2018 committed the Government to pursuing a regulatory reform agenda focused on supporting innovation and business investment. The goal of the regulatory reform agenda is to make the Canadian regulatory system more agile, transparent and responsive, so that businesses across the country can explore and act on new approaches. Phase 1 of this reform will consist of both a horizontal review and targeted reviews of regulatory requirements and practices that are bottlenecks to innovation and growth in Canada. Specifically, the horizontal component of the Regulatory Reviews will compile and analyze the current stock of regulations, through surveying departments and using existing administrative data, which will inform the advice going forward regarding regulatory modernization.</div>
                  <div style="MARGIN-BOTTOM: 10pt" align="left">The creation and assessment of a Regulatory Inventory will consist of a two-phased approach: </div>
                  <ol style="MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px" type="1">
                    <li style="MARGIN-BOTTOM: 10pt">
                      <div align="left">
                        <font face="Calibri">
                          This template covers Phase 1 which involves departments providing descriptive information regarding their existing stock of regulations.  This includes providing pertinent information regarding regulatory policy, regulated parties and regulatory management.  Key program and financial information should be provided.  Completed templates (signed off by the responsible executive authority) should be returned by <font color="#ff0000">
                            <strong>INSERT DATE HERE. </strong>
                          </font> 
                        </font>
                      </div>
                    </li>
                    <li style="MARGIN-BOTTOM: 10pt">
                      <div align="left">
                        <font face="Calibri">
                          Based on the results of Phase 1, departments with data holdings related to regulated parties will be asked to submit their data to Statistics Canada.  Instructions on how to complete Phase 2 will be forthcoming with completed templates to be returned in <font color="#ff0000">
                            <strong>XXX</strong>
                          </font>.
                        </font>
                      </div>
                    </li>
                  </ol>
                  <div style="MARGIN-BOTTOM: 10pt" align="left">
                    <font face="Calibri">Each participating organization is being provided with an initial set of regulations and corresponding legislation from the Department of Justice, current as of April 26, 2018.  </font>
                  </div>
                  <div style="MARGIN-BOTTOM: 10pt" align="left">
                    <font face="Calibri">Organizations should complete the data collection template and note the following: </font>
                  </div>
                  <ul style="MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px" type="disc">
                    <li style="MARGIN-BOTTOM: 10pt">
                      <div align="left">
                        <font face="Calibri">Where applicable, consolidate regulations into ‘regulation sets’ as the unit of analysis (defined as ‘a set of individual regulations grouped by organization, which serve a similar purpose and can be grouped together to serve as one unit of analysis’); </font>
                      </div>
                    </li>
                    <li style="MARGIN-BOTTOM: 10pt">
                      <div align="left">
                        <font face="Calibri">Provide any omitted Acts and/or Regulations; and </font>
                      </div>
                    </li>
                    <li style="MARGIN-BOTTOM: 10pt">
                      <div align="left">
                        <font face="Calibri">Provide comments regarding barriers or opportunities for innovation and business investment.  </font>
                      </div>
                    </li>
                  </ul>
                  <div style="MARGIN-BOTTOM: 10pt" align="left">
                    <font face="Calibri">Please note that specific departmental regulatory information provided in Phase 1 will be collated into a new database; this information will then be released back to individual departments for their internal analysis and use.  </font>
                  </div>
                  <div style="MARGIN-BOTTOM: 10pt" align="left">
                    <font size="3" face="Calibri">
                      <strong>Questions:</strong>
                    </font>
                  </div>
                  <div style="MARGIN-BOTTOM: 10pt" align="left">
                    <font face="Calibri">
                      If you have any questions about the data collection template, please contact the designated Regulatory Reviews email address at: <font color="#ff0000">
                        <strong>INSERT GENERIC EMAILADDRESS.</strong>
                      </font>
                    </font>
                  </div>
                  <div align="left">
                    <font size="3">
                      <strong>Instructions to Complete the Horizontal Review:</strong>
                    </font>
                  </div>
                  <div align="left"> </div>
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
                        <tr class="xdTableRow">
                          <td vAlign="top" style="BORDER-RIGHT-COLOR: " class="xdTableCellComponent">
                            <div>
                              <strong>Step 2. </strong>
                            </div>
                          </td>
                          <td vAlign="top" class="xdTableCellComponent">Complete Regulation Sets next</td>
                        </tr>
                        <tr class="xdTableRow">
                          <td vAlign="top" style="BORDER-RIGHT-COLOR: " class="xdTableCellComponent">
                            <div>
                              <strong>Step 3. </strong>
                            </div>
                          </td>
                          <td vAlign="top" class="xdTableCellComponent">Include detailed Regulation Inventory for each Regulation Set.</td>
                        </tr>
                        <tr class="xdTableRow">
                          <td vAlign="top" style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: " class="xdTableCellComponent">
                            <div>
                              <strong>Step 4.</strong>
                            </div>
                          </td>
                          <td vAlign="top" style="BORDER-TOP-COLOR: " class="xdTableCellComponent">
                            <div>
                              Check for errors by clicking the <strong>Validate </strong>button.
                            </div>
                          </td>
                        </tr>
                        <tr class="xdTableRow">
                          <td vAlign="top" style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: " class="xdTableCellComponent">
                            <div>
                              <strong>Step 5.</strong>
                            </div>
                          </td>
                          <td vAlign="top" style="BORDER-TOP-COLOR: " class="xdTableCellComponent">
                            <div>
                              Submit document by clicking <strong>Submit.</strong>
                            </div>
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
        <div align="center">
          <table class="xdFormLayout" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 801px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none">
            <colgroup>
              <col style="WIDTH: 801px"></col>
            </colgroup>
            <tbody>
              <tr class="xdTableContentRow">
                <td vAlign="top" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM: #bfbfbf 1pt" class="xdTableContentCell">
                  <div align="center">
                    <table class="xdFormLayout" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 797px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none">
                      <colgroup>
                        <col style="WIDTH: 797px"></col>
                      </colgroup>
                      <tbody>
                        <tr class="xdTitleRow">
                          <td style="BORDER-TOP-COLOR: ; VERTICAL-ALIGN: top; PADDING-BOTTOM: 14px; PADDING-TOP: 5px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px" class="xdTitleCell">
                            <div align="center">
                              <font color="#7f7f7f"></font> 
                            </div>
                            <div align="center">
                              <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 750px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
                                <colgroup>
                                  <col style="WIDTH: 36px"></col>
                                  <col style="WIDTH: 50px"></col>
                                  <col style="WIDTH: 664px"></col>
                                </colgroup>
                                <tbody vAlign="top">
                                  <tr style="MIN-HEIGHT: 19px">
                                    <td colSpan="3" style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                                      <div>
                                        <span>
                                          <font size="3">
                                            <strong>
                                              Statement<font face="Arial">
                                                <font face="Calibri"> of Accuracy and Completeness - Chief Financial Officer</font>
                                              </font>
                                            </strong>
                                          </font>
                                        </span>
                                      </div>
                                    </td>
                                  </tr>
                                  <tr style="MIN-HEIGHT: 18px">
                                    <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                                      <div>
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div align="center">
                                        <font size="2" face="Calibri">
                                          <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL89" xd:binding="my:Signatures/my:CFOAttestationIndicator" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                                            <xsl:attribute name="xd:value">
                                              <xsl:value-of select="my:Signatures/my:CFOAttestationIndicator"/>
                                            </xsl:attribute>
                                            <xsl:if test="my:Signatures/my:CFOAttestationIndicator=&quot;true&quot;">
                                              <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                                            </xsl:if>
                                          </input>
                                        </font>
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                                      <div align="left">
                                        <font size="2" face="Calibri">I attest that I have reviewed this submission to the Treasury Board of Canada Secretariat, and confirm that the information provided has been completed using the most current and accurate information available to the organization to describe the financial information for this regulation or set of regulations. </font>
                                      </div>
                                    </td>
                                  </tr>
                                  <tr style="MIN-HEIGHT: 18px">
                                    <td style="BORDER-TOP-COLOR: ">
                                      <div>
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ">
                                      <div align="right">
                                        <font size="2" face="Calibri">Name:</font>
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ">
                                      <font size="2" face="Calibri">
                                        <div align="left">
                                          <span title="" class="xdTextBox" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL88" xd:binding="my:Signatures/my:CFOAttestationName" style="WIDTH: 100%; WHITE-SPACE: nowrap">
                                            <xsl:value-of select="my:Signatures/my:CFOAttestationName"/>
                                          </span>
                                        </div>
                                      </font>
                                    </td>
                                  </tr>
                                  <tr style="MIN-HEIGHT: 18px">
                                    <td style="BORDER-TOP-COLOR: ">
                                      <div>
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ">
                                      <div align="right">
                                        <font size="2" face="Calibri">Title:</font>
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ">
                                      <font size="2" face="Calibri">
                                        <span class="xdlabel">
                                          <div align="left">
                                            <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL87" xd:binding="my:Signatures/my:CFOAttestationTitle" style="WIDTH: 100%">
                                              <xsl:value-of select="my:Signatures/my:CFOAttestationTitle"/>
                                            </span>
                                          </div>
                                        </span>
                                      </font>
                                    </td>
                                  </tr>
                                  <tr style="MIN-HEIGHT: 18px">
                                    <td style="BORDER-TOP-COLOR: ">
                                      <div>
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                                      <div align="right">
                                        <font size="2" face="Calibri">Date:</font>
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                                      <font size="2" face="Calibri">
                                        <div align="left">
                                          <div title="" class="xdDTPicker" style="WIDTH: 100%" noWrap="1" xd:xctname="DTPicker" xd:CtrlId="CTRL86">
                                            <span class="xdDTText xdBehavior_FormattingNoBUI" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="DTPicker_DTText" xd:binding="my:Signatures/my:CFOAttestationDate" xd:boundProp="xd:num" xd:datafmt="&quot;date&quot;,&quot;dateFormat:Short Date;&quot;" xd:innerCtrl="_DTText">
                                              <xsl:attribute name="xd:num">
                                                <xsl:value-of select="my:Signatures/my:CFOAttestationDate"/>
                                              </xsl:attribute>
                                              <xsl:choose>
                                                <xsl:when test="function-available('xdFormatting:formatString')">
                                                  <xsl:value-of select="xdFormatting:formatString(my:Signatures/my:CFOAttestationDate,&quot;date&quot;,&quot;dateFormat:Short Date;&quot;)"/>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                  <xsl:value-of select="my:Signatures/my:CFOAttestationDate"/>
                                                </xsl:otherwise>
                                              </xsl:choose>
                                            </span>
                                            <button class="xdDTButton" xd:xctname="DTPicker_DTButton" xd:innerCtrl="_DTButton" tabIndex="0">
                                              <img src="res://infopath.exe/calendar.gif" Linked="true"/>
                                            </button>
                                          </div>
                                        </div>
                                      </font>
                                    </td>
                                  </tr>
                                  <tr style="MIN-HEIGHT: 18px">
                                    <td style="BORDER-TOP-COLOR: ">
                                      <div>
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                                      <div>
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                                      <div align="left">
                                        <font size="2" face="Calibri">
                                          <span class="xdlabel"></span>
                                        </font> 
                                      </div>
                                    </td>
                                  </tr>
                                  <tr style="MIN-HEIGHT: 19px">
                                    <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                                      <div>
                                        <font size="2" face="Calibri">
                                          <span style="FONT-SIZE: 12pt">
                                            <font face="Arial"></font>
                                          </span>
                                        </font> 
                                      </div>
                                    </td>
                                  </tr>
                                  <tr style="MIN-HEIGHT: 19px">
                                    <td colSpan="3" style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                                      <div>
                                        <span>
                                          <font style="FONT-SIZE: 12pt">
                                            <strong>Statement of Accuracy and Completeness - Responsible Executive</strong>
                                          </font>
                                        </span>
                                      </div>
                                    </td>
                                  </tr>
                                  <tr style="MIN-HEIGHT: 18px">
                                    <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                                      <div>
                                        <font size="2"></font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div align="center">
                                        <font size="2">
                                          <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL85" xd:binding="my:Signatures/my:ExecutiveAttestationindicator" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                                            <xsl:attribute name="xd:value">
                                              <xsl:value-of select="my:Signatures/my:ExecutiveAttestationindicator"/>
                                            </xsl:attribute>
                                            <xsl:if test="my:Signatures/my:ExecutiveAttestationindicator=&quot;true&quot;">
                                              <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                                            </xsl:if>
                                          </input>
                                        </font>
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                                      <div>
                                        <font size="2">I attest that I have this submission to the Treasury Board of Canada Secretariat, and confirm that the information provided has been completed using the most current and accurate information available to the organization to describe this regulation or set of regulations.  </font>
                                      </div>
                                    </td>
                                  </tr>
                                  <tr style="MIN-HEIGHT: 18px">
                                    <td style="BORDER-TOP-COLOR: ">
                                      <div>
                                        <font size="2"></font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ">
                                      <div align="right">
                                        <span class="xdlabel">Name:</span>
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ">
                                      <font size="2">
                                        <div align="left">
                                          <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL84" xd:binding="my:Signatures/my:ExecutiveAttestationName" style="WIDTH: 100%">
                                            <xsl:value-of select="my:Signatures/my:ExecutiveAttestationName"/>
                                          </span>
                                        </div>
                                      </font>
                                    </td>
                                  </tr>
                                  <tr style="MIN-HEIGHT: 18px">
                                    <td style="BORDER-TOP-COLOR: ">
                                      <div>
                                        <font size="2"></font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ">
                                      <div align="right">
                                        <font size="2">Title:</font>
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ">
                                      <font size="2">
                                        <div align="left">
                                          <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL83" xd:binding="my:Signatures/my:ExecutiveAttestationTitle" style="WIDTH: 100%">
                                            <xsl:value-of select="my:Signatures/my:ExecutiveAttestationTitle"/>
                                          </span>
                                        </div>
                                      </font>
                                    </td>
                                  </tr>
                                  <tr style="MIN-HEIGHT: 18px">
                                    <td style="BORDER-TOP-COLOR: ">
                                      <div>
                                        <font size="2"></font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                                      <div align="right">
                                        <font size="2">Date:</font>
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                                      <font size="2">
                                        <div align="left">
                                          <div title="" class="xdDTPicker" style="WIDTH: 100%" noWrap="1" xd:xctname="DTPicker" xd:CtrlId="CTRL82">
                                            <span class="xdDTText xdBehavior_FormattingNoBUI" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="DTPicker_DTText" xd:binding="my:Signatures/my:ExecutiveAttestationDate" xd:boundProp="xd:num" xd:datafmt="&quot;date&quot;,&quot;dateFormat:Short Date;&quot;" xd:innerCtrl="_DTText">
                                              <xsl:attribute name="xd:num">
                                                <xsl:value-of select="my:Signatures/my:ExecutiveAttestationDate"/>
                                              </xsl:attribute>
                                              <xsl:choose>
                                                <xsl:when test="function-available('xdFormatting:formatString')">
                                                  <xsl:value-of select="xdFormatting:formatString(my:Signatures/my:ExecutiveAttestationDate,&quot;date&quot;,&quot;dateFormat:Short Date;&quot;)"/>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                  <xsl:value-of select="my:Signatures/my:ExecutiveAttestationDate"/>
                                                </xsl:otherwise>
                                              </xsl:choose>
                                            </span>
                                            <button class="xdDTButton" xd:xctname="DTPicker_DTButton" xd:innerCtrl="_DTButton" tabIndex="0">
                                              <img src="res://infopath.exe/calendar.gif" Linked="true"/>
                                            </button>
                                          </div>
                                        </div>
                                      </font>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td colSpan="2" style="BORDER-TOP-COLOR: ">
                                      <div>
                                        <font size="2"></font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ">
                                      <div align="left">
                                        <font size="2"></font> 
                                      </div>
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                          </td>
                        </tr>
                        <tr class="xdTitleRow">
                          <td style="BORDER-TOP-COLOR: ; VERTICAL-ALIGN: top; PADDING-BOTTOM: 14px; PADDING-TOP: 5px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px" class="xdTitleCell">
                            <div align="center">
                              <font color="#7f7f7f"></font> 
                            </div>
                            <div align="center">
                              <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 771px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
                                <colgroup>
                                  <col style="WIDTH: 42px"></col>
                                  <col style="WIDTH: 39px"></col>
                                  <col style="WIDTH: 302px"></col>
                                  <col style="WIDTH: 23px"></col>
                                  <col style="WIDTH: 365px"></col>
                                </colgroup>
                                <tbody vAlign="top">
                                  <tr style="MIN-HEIGHT: 19px">
                                    <td colSpan="5" style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                                      <div align="left">
                                        <font size="3" face="Calibri">
                                          <strong>Organization</strong>
                                        </font>
                                      </div>
                                    </td>
                                  </tr>
                                  <tr style="MIN-HEIGHT: 18px">
                                    <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div align="left">
                                        <font size="2" face="Calibri">
                                          <font size="2" face="Calibri"></font>
                                        </font> 
                                      </div>
                                    </td>
                                    <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                                      <div align="left">
                                        <font size="2" face="Calibri">Organization Legal Name:</font>
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div align="left">
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-RIGHT: #000000 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                                      <div align="left">
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                  </tr>
                                  <tr style="MIN-HEIGHT: 26px">
                                    <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div align="left">
                                        <font size="2" face="Calibri">
                                          <font size="2" face="Calibri"></font>
                                        </font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div align="left">
                                        <font size="2" face="Calibri">
                                          <font size="2" face="Calibri"></font>
                                        </font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                                      <div align="left">
                                        <font size="2" face="Calibri">
                                          <font size="2" face="Calibri">
                                            <select title="" class="xdComboBox xdBehavior_Select" style="WIDTH: 100%" size="1" xd:xctname="dropdown" xd:CtrlId="CTRL3" xd:binding="my:OrganizationID" xd:boundProp="value" value="" tabIndex="0">
                                              <xsl:attribute name="value">
                                                <xsl:value-of select="my:OrganizationID"/>
                                              </xsl:attribute>
                                              <xsl:choose>
                                                <xsl:when test="function-available('xdXDocument:GetDOM')">
                                                  <option/>
                                                  <xsl:variable name="val" select="my:OrganizationID"/>
                                                  <xsl:if test="not(xdXDocument:GetDOM(&quot;OrgsAlphaSort&quot;)/OrgNameData/Organization[ID=$val] or $val='')">
                                                    <option selected="selected">
                                                      <xsl:attribute name="value">
                                                        <xsl:value-of select="$val"/>
                                                      </xsl:attribute>
                                                      <xsl:value-of select="$val"/>
                                                    </option>
                                                  </xsl:if>
                                                  <xsl:for-each select="xdXDocument:GetDOM(&quot;OrgsAlphaSort&quot;)/OrgNameData/Organization">
                                                    <option>
                                                      <xsl:attribute name="value">
                                                        <xsl:value-of select="ID"/>
                                                      </xsl:attribute>
                                                      <xsl:if test="$val=ID">
                                                        <xsl:attribute name="selected">selected</xsl:attribute>
                                                      </xsl:if>
                                                      <xsl:value-of select="OrgAppliedNameEng"/>
                                                    </option>
                                                  </xsl:for-each>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                  <option>
                                                    <xsl:value-of select="my:OrganizationID"/>
                                                  </option>
                                                </xsl:otherwise>
                                              </xsl:choose>
                                            </select>
                                          </font>
                                        </font>
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div align="left">
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-RIGHT: #000000 1pt; BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                                      <div align="left">
                                        <font size="2" face="Calibri">
                                          <select title="" class="xdComboBox xdBehavior_Select" style="WIDTH: 100%" size="1" xd:xctname="dropdown" xd:CtrlId="CTRL481" xd:binding="my:OrganizationID" xd:boundProp="value" value="" tabIndex="0">
                                            <xsl:attribute name="value">
                                              <xsl:value-of select="my:OrganizationID"/>
                                            </xsl:attribute>
                                            <xsl:choose>
                                              <xsl:when test="function-available('xdXDocument:GetDOM')">
                                                <option/>
                                                <xsl:variable name="val" select="my:OrganizationID"/>
                                                <xsl:if test="not(xdXDocument:GetDOM(&quot;OrgsAlphaSort&quot;)/OrgNameData/Organization[ID=$val] or $val='')">
                                                  <option selected="selected">
                                                    <xsl:attribute name="value">
                                                      <xsl:value-of select="$val"/>
                                                    </xsl:attribute>
                                                    <xsl:value-of select="$val"/>
                                                  </option>
                                                </xsl:if>
                                                <xsl:for-each select="xdXDocument:GetDOM(&quot;OrgsAlphaSort&quot;)/OrgNameData/Organization">
                                                  <option>
                                                    <xsl:attribute name="value">
                                                      <xsl:value-of select="ID"/>
                                                    </xsl:attribute>
                                                    <xsl:if test="$val=ID">
                                                      <xsl:attribute name="selected">selected</xsl:attribute>
                                                    </xsl:if>
                                                    <xsl:value-of select="OrgAppliedNameFra"/>
                                                  </option>
                                                </xsl:for-each>
                                              </xsl:when>
                                              <xsl:otherwise>
                                                <option>
                                                  <xsl:value-of select="my:OrganizationID"/>
                                                </option>
                                              </xsl:otherwise>
                                            </xsl:choose>
                                          </select>
                                        </font>
                                      </div>
                                    </td>
                                  </tr>
                                  <tr style="MIN-HEIGHT: 18px">
                                    <td style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div align="left">
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                    <td colSpan="2" style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                                      <div align="left">
                                        <span class="xdlabel">Do you administer an act or regulation?</span>
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div align="left">
                                        <font size="2" face="Calibri">
                                          <font size="2" face="Calibri"></font>
                                        </font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-RIGHT: #000000 1pt">
                                      <div align="left">
                                        <font size="2" face="Calibri">
                                          <font size="2" face="Calibri"></font>
                                        </font> 
                                      </div>
                                    </td>
                                  </tr>
                                  <tr style="MIN-HEIGHT: 23px">
                                    <td style="BORDER-RIGHT-COLOR: ">
                                      <div align="left">
                                        <span class="xdlabel"></span> 
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div align="left">
                                        <span class="xdlabel"></span> 
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                                      <div align="left">
                                        <font size="2" face="Calibri">
                                          <select title="" class="xdComboBox xdBehavior_Select" size="1" tabIndex="0" xd:xctname="dropdown" xd:CtrlId="CTRL4" xd:binding="my:DoYouAdministerAnActOrRegulation" xd:boundProp="value" style="FONT-FAMILY: Calibri; WIDTH: 100%">
                                            <xsl:attribute name="value">
                                              <xsl:value-of select="my:DoYouAdministerAnActOrRegulation"/>
                                            </xsl:attribute>
                                            <option>
                                              <xsl:if test="my:DoYouAdministerAnActOrRegulation=&quot;&quot;">
                                                <xsl:attribute name="selected">selected</xsl:attribute>
                                              </xsl:if>Select...
                                            </option>
                                            <option value="true">
                                              <xsl:if test="my:DoYouAdministerAnActOrRegulation=&quot;true&quot;">
                                                <xsl:attribute name="selected">selected</xsl:attribute>
                                              </xsl:if>Yes
                                            </option>
                                            <option value="false">
                                              <xsl:if test="my:DoYouAdministerAnActOrRegulation=&quot;false&quot;">
                                                <xsl:attribute name="selected">selected</xsl:attribute>
                                              </xsl:if>No
                                            </option>
                                          </select>
                                        </font>
                                      </div>
                                    </td>
                                    <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div align="left">
                                        <span class="xdlabel"></span> 
                                      </div>
                                    </td>
                                    <td style="BORDER-RIGHT: #000000 1pt; BORDER-LEFT-COLOR: ">
                                      <div align="left">
                                        <span class="xdlabel">
                                          <select title="" class="xdComboBox xdBehavior_Select" size="1" tabIndex="0" xd:xctname="dropdown" xd:CtrlId="CTRL5" xd:binding="my:DoYouAdministerAnActOrRegulation" xd:boundProp="value" style="FONT-FAMILY: Calibri; WIDTH: 100%">
                                            <xsl:attribute name="value">
                                              <xsl:value-of select="my:DoYouAdministerAnActOrRegulation"/>
                                            </xsl:attribute>
                                            <option>
                                              <xsl:if test="my:DoYouAdministerAnActOrRegulation=&quot;&quot;">
                                                <xsl:attribute name="selected">selected</xsl:attribute>
                                              </xsl:if>Select...
                                            </option>
                                            <option value="true">
                                              <xsl:if test="my:DoYouAdministerAnActOrRegulation=&quot;true&quot;">
                                                <xsl:attribute name="selected">selected</xsl:attribute>
                                              </xsl:if>Oui
                                            </option>
                                            <option value="false">
                                              <xsl:if test="my:DoYouAdministerAnActOrRegulation=&quot;false&quot;">
                                                <xsl:attribute name="selected">selected</xsl:attribute>
                                              </xsl:if>Non
                                            </option>
                                          </select>
                                        </span>
                                      </div>
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
                  <div align="center">
                    <font color="#7f7f7f"></font> 
                  </div>
                  <div align="center">
                    <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 751px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
                      <colgroup>
                        <col style="WIDTH: 46px"></col>
                        <col style="WIDTH: 37px"></col>
                        <col style="WIDTH: 86px"></col>
                        <col style="WIDTH: 22px"></col>
                        <col style="WIDTH: 172px"></col>
                        <col style="WIDTH: 23px"></col>
                        <col style="WIDTH: 365px"></col>
                      </colgroup>
                      <tbody vAlign="top">
                        <tr style="MIN-HEIGHT: 23px">
                          <td colSpan="7" style="BORDER-LEFT-WIDTH: 1pt; BORDER-RIGHT-WIDTH: 1pt; BORDER-LEFT-COLOR: #000000; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <font size="3" face="Calibri">
                                <strong>Regulation or Regulation Set</strong>
                              </font>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="4" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                            <div align="left">
                              <font size="2" face="Calibri">
                                <font size="2" face="Calibri">
                                  <font size="2" face="Calibri">
                                    <span class="xdlabel">Is this an individual regulation or a regulation set?</span>
                                  </font>
                                </font>
                              </font>
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-RIGHT: #000000 1pt; BORDER-TOP-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 4px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri">
                                <select title="" class="xdComboBox xdBehavior_Select" size="1" tabIndex="0" xd:xctname="dropdown" xd:CtrlId="CTRL108" xd:binding="my:RegSet/my:RegSetTitleAndDescription/my:IndividualRegOrSet" xd:boundProp="value" style="WIDTH: 100%">
                                  <xsl:attribute name="value">
                                    <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:IndividualRegOrSet"/>
                                  </xsl:attribute>
                                  <option>
                                    <xsl:if test="my:RegSet/my:RegSetTitleAndDescription/my:IndividualRegOrSet=&quot;&quot;">
                                      <xsl:attribute name="selected">selected</xsl:attribute>
                                    </xsl:if>Select...
                                  </option>
                                  <option value="IndividualReg">
                                    <xsl:if test="my:RegSet/my:RegSetTitleAndDescription/my:IndividualRegOrSet=&quot;IndividualReg&quot;">
                                      <xsl:attribute name="selected">selected</xsl:attribute>
                                    </xsl:if>Individual Regulation
                                  </option>
                                  <option value="RegSet">
                                    <xsl:if test="my:RegSet/my:RegSetTitleAndDescription/my:IndividualRegOrSet=&quot;RegSet&quot;">
                                      <xsl:attribute name="selected">selected</xsl:attribute>
                                    </xsl:if>Set of Regulations
                                  </option>
                                </select>
                              </font>
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-RIGHT: #000000 1pt; BORDER-TOP-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="4" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                            <div align="left">
                              <font size="2" face="Calibri">
                                <font size="2" face="Calibri">
                                  <font size="2" face="Calibri">
                                    <span class="xdlabel">Title of Regulation or Regulation Set:</span>
                                  </font>
                                </font>
                              </font>
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-RIGHT: #000000 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 24px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="5" style="BORDER-LEFT-WIDTH: 1pt; BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: #000000; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <font size="2" face="Calibri">
                                <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL109" xd:binding="my:RegSet/my:RegSetTitleAndDescription/my:TitleOfRegulationSetOrIndividualReg" style="WIDTH: 100%">
                                  <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:TitleOfRegulationSetOrIndividualReg"/>
                                </span>
                              </font>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="4" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                            <div align="left">
                              <font size="2" face="Calibri">Subject Matter Domain:</font>
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-RIGHT: #000000 1pt; BORDER-TOP-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 4px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri">
                                <select title="" class="xdComboBox xdBehavior_Select" size="1" tabIndex="0" xd:xctname="dropdown" xd:CtrlId="CTRL110" xd:binding="my:RegSet/my:RegSetTitleAndDescription/my:SubjectMatterDomain" xd:boundProp="value" style="WIDTH: 100%">
                                  <xsl:attribute name="value">
                                    <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:SubjectMatterDomain"/>
                                  </xsl:attribute>
                                  <option>
                                    <xsl:if test="my:RegSet/my:RegSetTitleAndDescription/my:SubjectMatterDomain=&quot;&quot;">
                                      <xsl:attribute name="selected">selected</xsl:attribute>
                                    </xsl:if>Select...
                                  </option>
                                  <option value="HealthAndSafety">
                                    <xsl:if test="my:RegSet/my:RegSetTitleAndDescription/my:SubjectMatterDomain=&quot;HealthAndSafety&quot;">
                                      <xsl:attribute name="selected">selected</xsl:attribute>
                                    </xsl:if>Health And Safety
                                  </option>
                                  <option value="EconomicDevelopment">
                                    <xsl:if test="my:RegSet/my:RegSetTitleAndDescription/my:SubjectMatterDomain=&quot;EconomicDevelopment&quot;">
                                      <xsl:attribute name="selected">selected</xsl:attribute>
                                    </xsl:if>Economic Development
                                  </option>
                                  <option value="SustainableDevelopment">
                                    <xsl:if test="my:RegSet/my:RegSetTitleAndDescription/my:SubjectMatterDomain=&quot;SustainableDevelopment&quot;">
                                      <xsl:attribute name="selected">selected</xsl:attribute>
                                    </xsl:if>Sustainable Development
                                  </option>
                                  <option value="Public SafetySecurity">
                                    <xsl:if test="my:RegSet/my:RegSetTitleAndDescription/my:SubjectMatterDomain=&quot;Public SafetySecurity&quot;">
                                      <xsl:attribute name="selected">selected</xsl:attribute>
                                    </xsl:if>Public Safety / Security
                                  </option>
                                </select>
                              </font>
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-RIGHT: #000000 1pt; BORDER-TOP-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="4" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                            <div align="left">
                              <font size="2" face="Calibri">
                                <span class="xdlabel">NAICS Code:</span>
                              </font>
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-RIGHT: #000000 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 26px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri">
                                <span class="xdlabel">
                                  <select title="" class="xdComboBox xdBehavior_Select" style="WIDTH: 100%" size="1" xd:xctname="dropdown" xd:CtrlId="CTRL111" xd:binding="my:RegSet/my:RegSetTitleAndDescription/my:NAICSCode" xd:boundProp="value" value="" tabIndex="0">
                                    <xsl:attribute name="value">
                                      <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:NAICSCode"/>
                                    </xsl:attribute>
                                    <xsl:choose>
                                      <xsl:when test="function-available('xdXDocument:GetDOM')">
                                        <option/>
                                        <xsl:variable name="val" select="my:RegSet/my:RegSetTitleAndDescription/my:NAICSCode"/>
                                        <xsl:if test="not(xdXDocument:GetDOM(&quot;lkpNAICS-SCIAN&quot;)/dataroot/lkpNAICS-SCIAN[Level &lt;= 4][NAICSSCIANCode=$val] or $val='')">
                                          <option selected="selected">
                                            <xsl:attribute name="value">
                                              <xsl:value-of select="$val"/>
                                            </xsl:attribute>
                                            <xsl:value-of select="$val"/>
                                          </option>
                                        </xsl:if>
                                        <xsl:for-each select="xdXDocument:GetDOM(&quot;lkpNAICS-SCIAN&quot;)/dataroot/lkpNAICS-SCIAN[Level &lt;= 4]">
                                          <option>
                                            <xsl:attribute name="value">
                                              <xsl:value-of select="NAICSSCIANCode"/>
                                            </xsl:attribute>
                                            <xsl:if test="$val=NAICSSCIANCode">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>
                                            <xsl:value-of select="NAICSSCIANCode"/>
                                          </option>
                                        </xsl:for-each>
                                      </xsl:when>
                                      <xsl:otherwise>
                                        <option>
                                          <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:NAICSCode"/>
                                        </option>
                                      </xsl:otherwise>
                                    </xsl:choose>
                                  </select>
                                </span>
                              </font>
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri">
                                <span class="xdlabel"></span>
                              </font> 
                            </div>
                          </td>
                          <td colSpan="3" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <font size="2" face="Calibri">
                                <span class="xdlabel">
                                  <select title="" class="xdComboBox xdBehavior_Select" style="WIDTH: 100%" size="1" xd:xctname="dropdown" xd:CtrlId="CTRL483" xd:binding="my:RegSet/my:RegSetTitleAndDescription/my:NAICSCode" xd:boundProp="value" value="" tabIndex="0">
                                    <xsl:attribute name="value">
                                      <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:NAICSCode"/>
                                    </xsl:attribute>
                                    <xsl:choose>
                                      <xsl:when test="function-available('xdXDocument:GetDOM')">
                                        <option/>
                                        <xsl:variable name="val" select="my:RegSet/my:RegSetTitleAndDescription/my:NAICSCode"/>
                                        <xsl:if test="not(xdXDocument:GetDOM(&quot;lkpNAICS-SCIAN&quot;)/dataroot/lkpNAICS-SCIAN[Level &lt;= 4][NAICSSCIANCode=$val] or $val='')">
                                          <option selected="selected">
                                            <xsl:attribute name="value">
                                              <xsl:value-of select="$val"/>
                                            </xsl:attribute>
                                            <xsl:value-of select="$val"/>
                                          </option>
                                        </xsl:if>
                                        <xsl:for-each select="xdXDocument:GetDOM(&quot;lkpNAICS-SCIAN&quot;)/dataroot/lkpNAICS-SCIAN[Level &lt;= 4]">
                                          <option>
                                            <xsl:attribute name="value">
                                              <xsl:value-of select="NAICSSCIANCode"/>
                                            </xsl:attribute>
                                            <xsl:if test="$val=NAICSSCIANCode">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>
                                            <xsl:value-of select="ClassTitle"/>
                                          </option>
                                        </xsl:for-each>
                                      </xsl:when>
                                      <xsl:otherwise>
                                        <option>
                                          <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:NAICSCode"/>
                                        </option>
                                      </xsl:otherwise>
                                    </xsl:choose>
                                  </select>
                                </span>
                              </font>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <font size="2" face="Calibri">
                                <font size="2" face="Calibri">
                                  <span class="xdlabel">Describe the overall purpose of the regulation set:</span>
                                </font>
                              </font>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="5" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL112" xd:binding="my:RegSet/my:RegSetTitleAndDescription/my:Description" style="HEIGHT: 50px; WIDTH: 100%">
                                <xsl:copy-of select="my:RegSet/my:RegSetTitleAndDescription/my:Description/node()"/>
                              </span>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <font size="2" face="Calibri">
                                <font size="2" face="Calibri">
                                  <span class="xdlabel">Provide the rationale as to why this set of regulations have been grouped together:</span>
                                </font>
                              </font>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="5" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <span title="Please Enter a description of the Regulation Set and why it is a natural grouping." class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL113" xd:binding="my:RegSet/my:RegSetTitleAndDescription/my:Rationale" style="HEIGHT: 50px; WIDTH: 100%">
                                <xsl:copy-of select="my:RegSet/my:RegSetTitleAndDescription/my:Rationale/node()"/>
                              </span>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM: #000000 1pt; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <font size="2" face="Calibri">
                                <span class="xdlabel">Rank the importance of this regulation set in carrying out the mandate of the organization:</span>
                              </font>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-TOP: #000000 1pt; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="5" style="BORDER-TOP: #000000 1pt; BORDER-RIGHT-WIDTH: 1pt; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <select title="" class="xdComboBox xdBehavior_Select" size="1" tabIndex="0" xd:xctname="dropdown" xd:CtrlId="CTRL114" xd:binding="my:RegSet/my:RegSetTitleAndDescription/my:Importance" xd:boundProp="value" style="WIDTH: 100%">
                                <xsl:attribute name="value">
                                  <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:Importance"/>
                                </xsl:attribute>
                                <option>
                                  <xsl:if test="my:RegSet/my:RegSetTitleAndDescription/my:Importance=&quot;&quot;">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                  </xsl:if>Select...
                                </option>
                                <option value="VeryImportant">
                                  <xsl:if test="my:RegSet/my:RegSetTitleAndDescription/my:Importance=&quot;VeryImportant&quot;">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                  </xsl:if>Very Important
                                </option>
                                <option value="Important">
                                  <xsl:if test="my:RegSet/my:RegSetTitleAndDescription/my:Importance=&quot;Important&quot;">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                  </xsl:if>Important
                                </option>
                                <option value="SomewhatImportant">
                                  <xsl:if test="my:RegSet/my:RegSetTitleAndDescription/my:Importance=&quot;SomewhatImportant&quot;">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                  </xsl:if>Somewhat Important
                                </option>
                                <option value="NotImportant">
                                  <xsl:if test="my:RegSet/my:RegSetTitleAndDescription/my:Importance=&quot;NotImportant&quot;">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                  </xsl:if>Not Important
                                </option>
                              </select>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td colSpan="7" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <font size="3" face="Calibri">
                                <strong/>
                              </font> 
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td colSpan="7" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <font size="3" face="Calibri">
                                <strong>Composition of Regulation Set:</strong>
                              </font>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <xsl:apply-templates select="my:RegSet/my:RegSetTitleAndDescription/my:CompositionOfRegulatuionSet/my:Acts" mode="_8"/>
                              <div class="optionalPlaceholder" xd:xmlToEdit="Acts_83" tabIndex="0" xd:action="xCollection::insert" align="left" style="WIDTH: 701px">Insert Additional Act in Regulation Set</div>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 4px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-RIGHT: #000000 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 22px">
                          <td colSpan="7" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <font size="3" face="Calibri">
                                <strong>Regulation Set Policy Features:</strong>
                              </font>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <xsl:apply-templates select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetPolicyFeatures" mode="_34"/>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 4px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-RIGHT: #000000 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td colSpan="7" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <font size="3" face="Calibri">
                                <strong>Management of Regulation Set:</strong>
                              </font>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <strong>
                                <font size="3">Risk Assessment Function (check all that apply): </font>
                              </strong>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 697px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
                                <colgroup>
                                  <col style="WIDTH: 31px"></col>
                                  <col style="WIDTH: 31px"></col>
                                  <col style="WIDTH: 22px"></col>
                                  <col style="WIDTH: 293px"></col>
                                  <col style="WIDTH: 320px"></col>
                                </colgroup>
                                <tbody vAlign="top">
                                  <tr>
                                    <td>
                                      <div>
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div align="center">
                                        <font size="2" face="Calibri">
                                          <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL374" xd:binding="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RiskAssessmentFunction/my:FormalRiskAssessmantFunction" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                                            <xsl:attribute name="xd:value">
                                              <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RiskAssessmentFunction/my:FormalRiskAssessmantFunction"/>
                                            </xsl:attribute>
                                            <xsl:if test="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RiskAssessmentFunction/my:FormalRiskAssessmantFunction=&quot;true&quot;">
                                              <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                                            </xsl:if>
                                          </input>
                                        </font>
                                      </div>
                                    </td>
                                    <td colSpan="3" style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                                      <div align="left">
                                        <font size="2" face="Calibri">Formal Risk Assessment Function</font>
                                      </div>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td style="BORDER-BOTTOM-COLOR: ">
                                      <div>
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div align="center">
                                        <font size="2" face="Calibri">
                                          <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL375" xd:binding="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RiskAssessmentFunction/my:FormalRiskAssessmentProcess" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                                            <xsl:attribute name="xd:value">
                                              <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RiskAssessmentFunction/my:FormalRiskAssessmentProcess"/>
                                            </xsl:attribute>
                                            <xsl:if test="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RiskAssessmentFunction/my:FormalRiskAssessmentProcess=&quot;true&quot;">
                                              <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                                            </xsl:if>
                                          </input>
                                        </font>
                                      </div>
                                    </td>
                                    <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                                      <div align="left">
                                        <font size="2" face="Calibri">Formal Risk Assessment Process</font>
                                      </div>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td style="BORDER-BOTTOM-COLOR: ">
                                      <div>
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div align="center">
                                        <font size="2" face="Calibri">
                                          <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL377" xd:binding="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RiskAssessmentFunction/my:NatureOfTheRiskAssessment/my:InternalRiskAssessment" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                                            <xsl:attribute name="xd:value">
                                              <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RiskAssessmentFunction/my:NatureOfTheRiskAssessment/my:InternalRiskAssessment"/>
                                            </xsl:attribute>
                                            <xsl:if test="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RiskAssessmentFunction/my:NatureOfTheRiskAssessment/my:InternalRiskAssessment=&quot;true&quot;">
                                              <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                                            </xsl:if>
                                          </input>
                                        </font>
                                      </div>
                                    </td>
                                    <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                                      <div align="left">
                                        <font size="2" face="Calibri">Internal Risk Assessment</font>
                                      </div>
                                    </td>
                                  </tr>
                                  <tr style="MIN-HEIGHT: 23px">
                                    <td style="BORDER-RIGHT-COLOR: ">
                                      <div>
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div align="center">
                                        <font size="2" face="Calibri">
                                          <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL378" xd:binding="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RiskAssessmentFunction/my:NatureOfTheRiskAssessment/my:QuantitativeMeasure" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                                            <xsl:attribute name="xd:value">
                                              <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RiskAssessmentFunction/my:NatureOfTheRiskAssessment/my:QuantitativeMeasure"/>
                                            </xsl:attribute>
                                            <xsl:if test="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RiskAssessmentFunction/my:NatureOfTheRiskAssessment/my:QuantitativeMeasure=&quot;true&quot;">
                                              <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                                            </xsl:if>
                                          </input>
                                        </font>
                                      </div>
                                    </td>
                                    <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                                      <div align="left">
                                        <font size="2" face="Calibri">Quantitative Measure</font>
                                      </div>
                                    </td>
                                  </tr>
                                  <tr style="MIN-HEIGHT: 23px">
                                    <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div>
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div align="center">
                                        <font size="2" face="Calibri">
                                          <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL379" xd:binding="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RiskAssessmentFunction/my:NatureOfTheRiskAssessment/my:InformedByExternalRiskManagementExperts" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                                            <xsl:attribute name="xd:value">
                                              <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RiskAssessmentFunction/my:NatureOfTheRiskAssessment/my:InformedByExternalRiskManagementExperts"/>
                                            </xsl:attribute>
                                            <xsl:if test="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RiskAssessmentFunction/my:NatureOfTheRiskAssessment/my:InformedByExternalRiskManagementExperts=&quot;true&quot;">
                                              <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                                            </xsl:if>
                                          </input>
                                        </font>
                                      </div>
                                    </td>
                                    <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                                      <div align="left">
                                        <font size="2" face="Calibri">Informed By External Risk Management Experts</font>
                                      </div>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td style="BORDER-RIGHT-COLOR: ">
                                      <div>
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div align="center">
                                        <font size="2" face="Calibri">
                                          <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL380" xd:binding="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RiskAssessmentFunction/my:NatureOfTheRiskAssessment/my:PeerReviewedByRegulatoryCommunity" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                                            <xsl:attribute name="xd:value">
                                              <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RiskAssessmentFunction/my:NatureOfTheRiskAssessment/my:PeerReviewedByRegulatoryCommunity"/>
                                            </xsl:attribute>
                                            <xsl:if test="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RiskAssessmentFunction/my:NatureOfTheRiskAssessment/my:PeerReviewedByRegulatoryCommunity=&quot;true&quot;">
                                              <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                                            </xsl:if>
                                          </input>
                                        </font>
                                      </div>
                                    </td>
                                    <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                                      <div align="left">
                                        <font size="2" face="Calibri">Peer Reviewed By Regulatory Community</font>
                                      </div>
                                    </td>
                                  </tr>
                                  <tr style="MIN-HEIGHT: 23px">
                                    <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div>
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div align="center">
                                        <font size="2" face="Calibri">
                                          <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL381" xd:binding="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RiskAssessmentFunction/my:NatureOfTheRiskAssessment/my:OtherRiskAssessmentFeature" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                                            <xsl:attribute name="xd:value">
                                              <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RiskAssessmentFunction/my:NatureOfTheRiskAssessment/my:OtherRiskAssessmentFeature"/>
                                            </xsl:attribute>
                                            <xsl:if test="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RiskAssessmentFunction/my:NatureOfTheRiskAssessment/my:OtherRiskAssessmentFeature=&quot;true&quot;">
                                              <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                                            </xsl:if>
                                          </input>
                                        </font>
                                      </div>
                                    </td>
                                    <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                                      <div align="left">
                                        <font size="2" face="Calibri">Other Risk Assessment Feature</font>
                                      </div>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td style="BORDER-RIGHT-COLOR: ">
                                      <div>
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div>
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                    <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                                      <div align="left">
                                        <font size="2" face="Calibri">Other Risk Assessment Description:</font>
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                                      <div>
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div>
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div>
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                                      <div>
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                    <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                                      <div>
                                        <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL382" xd:binding="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RiskAssessmentFunction/my:NatureOfTheRiskAssessment/my:OtherRiskAssessmentDescription" style="HEIGHT: 50px; WIDTH: 100%">
                                          <xsl:copy-of select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RiskAssessmentFunction/my:NatureOfTheRiskAssessment/my:OtherRiskAssessmentDescription/node()"/>
                                        </span>
                                      </div>
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <strong>
                                <font size="3">Risk Management Function:</font>
                              </strong>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <xsl:apply-templates select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RiskManagementFunction" mode="_55"/>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <strong>
                                <font size="3">Permissions Function:</font>
                              </strong>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <xsl:apply-templates select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:PermissionFunction" mode="_56"/>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <strong>
                                <font size="3">Compliance Promotion Function:</font>
                              </strong>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <xsl:apply-templates select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:CompliancePromotionFunction" mode="_57"/>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <strong>
                                <font size="3">Compliance Verification Function:</font>
                              </strong>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <xsl:apply-templates select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:ComplianceVerificationFunction" mode="_63"/>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <strong>
                                <font size="3">Enforcement Function:</font>
                              </strong>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <xsl:apply-templates select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:EnforcementFunction" mode="_65"/>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <strong>
                                <font size="3">Appeals Function:</font>
                              </strong>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <xsl:apply-templates select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:AppealsFunction" mode="_69"/>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <strong>
                                <font size="3">Data Analytics:</font>
                              </strong>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 698px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
                                <colgroup>
                                  <col style="WIDTH: 28px"></col>
                                  <col style="WIDTH: 192px"></col>
                                  <col style="WIDTH: 478px"></col>
                                </colgroup>
                                <tbody vAlign="top">
                                  <tr>
                                    <td style="BORDER-LEFT-COLOR: ">
                                      <div>
                                        <font size="2" face="Calibri">
                                          <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL443" xd:binding="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RegSetManDataAnalytics/my:RegSetManDataAnalyticsIndicator" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                                            <xsl:attribute name="xd:value">
                                              <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RegSetManDataAnalytics/my:RegSetManDataAnalyticsIndicator"/>
                                            </xsl:attribute>
                                            <xsl:if test="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RegSetManDataAnalytics/my:RegSetManDataAnalyticsIndicator=&quot;true&quot;">
                                              <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                                            </xsl:if>
                                          </input>
                                        </font>
                                      </div>
                                    </td>
                                    <td style="BORDER-LEFT-COLOR: ">
                                      <div align="left">
                                        <font size="2" face="Calibri">Data Analytics Indicator:</font>
                                      </div>
                                    </td>
                                    <td>
                                      <div>
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td style="BORDER-LEFT-COLOR: ">
                                      <div>
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                    <td style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                                      <div align="left">
                                        <font size="2" face="Calibri">Data Analytics Description:</font>
                                      </div>
                                    </td>
                                    <td style="BORDER-BOTTOM-COLOR: ">
                                      <div> </div>
                                    </td>
                                  </tr>
                                  <tr style="MIN-HEIGHT: 19px">
                                    <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div>
                                        <font size="2" face="Calibri"></font> 
                                      </div>
                                    </td>
                                    <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                                      <div>
                                        <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL444" xd:binding="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RegSetManDataAnalytics/my:RegSetManDataAnalyticsDescription" style="HEIGHT: 50px; WIDTH: 100%">
                                          <xsl:copy-of select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetManagement/my:RegSetManDataAnalytics/my:RegSetManDataAnalyticsDescription/node()"/>
                                        </span>
                                      </div>
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <strong>
                                <font size="3"></font>
                              </strong> 
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 22px">
                          <td colSpan="7" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <font size="3" face="Calibri">
                                <strong>Financial and FTE Information:</strong>
                              </font>
                            </div>
                            <!--EndFragment-->
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <strong>
                                <font size="3">Total Organizational Expenditures as per Public Accounts Authorities (Cash Basis)</font>
                              </strong>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left"></div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <table title="" class="xdRepeatingTable msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 697px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" border="1" xd:CtrlId="CTRL74" xd:widgetIndex="0">
                                <colgroup>
                                  <col style="WIDTH: 141px"></col>
                                  <col style="WIDTH: 112px"></col>
                                  <col style="WIDTH: 110px"></col>
                                  <col style="WIDTH: 111px"></col>
                                  <col style="WIDTH: 111px"></col>
                                  <col style="WIDTH: 112px"></col>
                                </colgroup>
                                <tbody class="xdTableHeader">
                                  <tr style="MIN-HEIGHT: 23px">
                                    <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div style="FONT-WEIGHT: normal">
                                        <strong>
                                          <font size="3">Authority Type</font>
                                        </strong>
                                      </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div align="center">
                                        <font size="3" face="Calibri">
                                          <strong>2012-13</strong>
                                        </font>
                                      </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div align="center">
                                        <font size="3" face="Calibri">
                                          <strong>2013-14</strong>
                                        </font>
                                      </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div align="center">
                                        <font size="3" face="Calibri">
                                          <strong>2014-15</strong>
                                        </font>
                                      </div>
                                      <!--EndFragment-->
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div align="center">
                                        <font size="3" face="Calibri">
                                          <strong>2015-16</strong>
                                        </font>
                                      </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div align="center">
                                        <font size="3" face="Calibri">
                                          <strong>2016-17</strong>
                                        </font>
                                      </div>
                                    </td>
                                  </tr>
                                </tbody>
                                <tbody xd:xctname="RepeatingTable">
                                  <xsl:for-each select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetFinancialInformation/my:TotalOrganizationalExpenditures5Years/my:ByAuthorityType">
                                    <tr style="MIN-HEIGHT: 24px">
                                      <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                        <select title="" class="xdComboBox xdBehavior_Select" size="1" tabIndex="0" xd:xctname="dropdown" xd:CtrlId="CTRL81" xd:binding="my:AuthorityType" xd:boundProp="value" style="WIDTH: 100%">
                                          <xsl:attribute name="value">
                                            <xsl:value-of select="my:AuthorityType"/>
                                          </xsl:attribute>
                                          <option>
                                            <xsl:if test="my:AuthorityType=&quot;&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Select...
                                          </option>
                                          <option value="OperatingVote">
                                            <xsl:if test="my:AuthorityType=&quot;OperatingVote&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Operating Vote(s)
                                          </option>
                                          <option value="CapitalVotes">
                                            <xsl:if test="my:AuthorityType=&quot;CapitalVotes&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Capital Vote(s)
                                          </option>
                                          <option value="TransferVotes">
                                            <xsl:if test="my:AuthorityType=&quot;TransferVotes&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Transfer Vote(s)
                                          </option>
                                          <option value="ProgramVote(s)">
                                            <xsl:if test="my:AuthorityType=&quot;ProgramVote(s)&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>ProgramVote(s)
                                          </option>
                                          <option value="StatutoryVotes">
                                            <xsl:if test="my:AuthorityType=&quot;StatutoryVotes&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Statutory Vote(s)
                                          </option>
                                          <option value="CentralVotes">
                                            <xsl:if test="my:AuthorityType=&quot;CentralVotes&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Central Vote(s)
                                          </option>
                                          <option value="OtherAuthorities">
                                            <xsl:if test="my:AuthorityType=&quot;OtherAuthorities&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Other Authorities
                                          </option>
                                        </select>
                                      </td>
                                      <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                        <div align="right">
                                          <span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL76" xd:binding="my:Dollars201213" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%; WHITE-SPACE: nowrap; TEXT-ALIGN: right">
                                            <xsl:attribute name="xd:num">
                                              <xsl:value-of select="my:Dollars201213"/>
                                            </xsl:attribute>
                                            <xsl:choose>
                                              <xsl:when test="function-available('xdFormatting:formatString')">
                                                <xsl:value-of select="xdFormatting:formatString(my:Dollars201213,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
                                              </xsl:when>
                                              <xsl:otherwise>
                                                <xsl:value-of select="my:Dollars201213"/>
                                              </xsl:otherwise>
                                            </xsl:choose>
                                          </span>
                                        </div>
                                      </td>
                                      <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                        <div align="right">
                                          <span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL77" xd:binding="my:Dollars201314" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%; WHITE-SPACE: nowrap; TEXT-ALIGN: right">
                                            <xsl:attribute name="xd:num">
                                              <xsl:value-of select="my:Dollars201314"/>
                                            </xsl:attribute>
                                            <xsl:choose>
                                              <xsl:when test="function-available('xdFormatting:formatString')">
                                                <xsl:value-of select="xdFormatting:formatString(my:Dollars201314,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
                                              </xsl:when>
                                              <xsl:otherwise>
                                                <xsl:value-of select="my:Dollars201314"/>
                                              </xsl:otherwise>
                                            </xsl:choose>
                                          </span>
                                        </div>
                                      </td>
                                      <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                        <div align="right">
                                          <span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL78" xd:binding="my:Dollars201415" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%; WHITE-SPACE: nowrap; TEXT-ALIGN: right">
                                            <xsl:attribute name="xd:num">
                                              <xsl:value-of select="my:Dollars201415"/>
                                            </xsl:attribute>
                                            <xsl:choose>
                                              <xsl:when test="function-available('xdFormatting:formatString')">
                                                <xsl:value-of select="xdFormatting:formatString(my:Dollars201415,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
                                              </xsl:when>
                                              <xsl:otherwise>
                                                <xsl:value-of select="my:Dollars201415"/>
                                              </xsl:otherwise>
                                            </xsl:choose>
                                          </span>
                                        </div>
                                      </td>
                                      <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                        <div align="right">
                                          <span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL79" xd:binding="my:Dollars201516" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%; WHITE-SPACE: nowrap; TEXT-ALIGN: right">
                                            <xsl:attribute name="xd:num">
                                              <xsl:value-of select="my:Dollars201516"/>
                                            </xsl:attribute>
                                            <xsl:choose>
                                              <xsl:when test="function-available('xdFormatting:formatString')">
                                                <xsl:value-of select="xdFormatting:formatString(my:Dollars201516,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
                                              </xsl:when>
                                              <xsl:otherwise>
                                                <xsl:value-of select="my:Dollars201516"/>
                                              </xsl:otherwise>
                                            </xsl:choose>
                                          </span>
                                        </div>
                                      </td>
                                      <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                        <div align="right">
                                          <span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL80" xd:binding="my:Dollars201617" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%; WHITE-SPACE: nowrap; TEXT-ALIGN: right">
                                            <xsl:attribute name="xd:num">
                                              <xsl:value-of select="my:Dollars201617"/>
                                            </xsl:attribute>
                                            <xsl:choose>
                                              <xsl:when test="function-available('xdFormatting:formatString')">
                                                <xsl:value-of select="xdFormatting:formatString(my:Dollars201617,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
                                              </xsl:when>
                                              <xsl:otherwise>
                                                <xsl:value-of select="my:Dollars201617"/>
                                              </xsl:otherwise>
                                            </xsl:choose>
                                          </span>
                                        </div>
                                      </td>
                                    </tr>
                                  </xsl:for-each>
                                </tbody>
                                <tbody class="xdTableFooter">
                                  <tr style="MIN-HEIGHT: 19px">
                                    <td style="BORDER-RIGHT: medium none; BORDER-TOP-COLOR: ; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div> </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; BORDER-TOP-COLOR: ; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div> </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; BORDER-TOP-COLOR: ; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div> </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; BORDER-TOP-COLOR: ; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div> </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; BORDER-TOP-COLOR: ; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div> </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; BORDER-TOP-COLOR: ; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div> </div>
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                              <div class="optionalPlaceholder" xd:xmlToEdit="ByAuthorityType_45" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 697px">Insert Additional Authority Financial Profile</div>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <strong>
                                <font size="3">Total Organizational Full Time Equivalents</font>
                              </strong>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 65px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 698px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
                                <colgroup>
                                  <col style="WIDTH: 143px"></col>
                                  <col style="WIDTH: 111px"></col>
                                  <col style="WIDTH: 111px"></col>
                                  <col style="WIDTH: 110px"></col>
                                  <col style="WIDTH: 111px"></col>
                                  <col style="WIDTH: 112px"></col>
                                </colgroup>
                                <tbody vAlign="top">
                                  <tr>
                                    <td style="BORDER-RIGHT-COLOR: ; BACKGROUND-COLOR: #f2f2f2">
                                      <div align="center">
                                        <font size="3" face="Calibri">
                                          <strong/>
                                        </font> 
                                      </div>
                                    </td>
                                    <td style="BACKGROUND-COLOR: #f2f2f2">
                                      <div align="center">
                                        <font size="3" face="Calibri">
                                          <strong>2012-13</strong>
                                        </font>
                                      </div>
                                    </td>
                                    <td style="BACKGROUND-COLOR: #f2f2f2">
                                      <div align="center">
                                        <font size="3" face="Calibri">
                                          <strong>2013-14</strong>
                                        </font>
                                      </div>
                                    </td>
                                    <td style="BACKGROUND-COLOR: #f2f2f2">
                                      <div align="center">
                                        <font size="3" face="Calibri">
                                          <strong>2014-15</strong>
                                        </font>
                                      </div>
                                    </td>
                                    <td style="BACKGROUND-COLOR: #f2f2f2">
                                      <div align="center">
                                        <font size="3" face="Calibri">
                                          <strong>2015-16</strong>
                                        </font>
                                      </div>
                                    </td>
                                    <td style="BACKGROUND-COLOR: #f2f2f2">
                                      <div align="center">
                                        <font size="3" face="Calibri">
                                          <strong>2016-17</strong>
                                        </font>
                                      </div>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                                      <div align="right">
                                        <font size="2" face="Calibri">FTEs</font>
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px">
                                      <div align="right">
                                        <font size="2" face="Calibri">
                                          <span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL66" xd:binding="my:RegSet/my:RegSetTitleAndDescription/my:RegSetFinancialInformation/my:TotalOrganizationalFTEs/my:FTE201213" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%; WHITE-SPACE: nowrap; TEXT-ALIGN: right">
                                            <xsl:attribute name="xd:num">
                                              <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetFinancialInformation/my:TotalOrganizationalFTEs/my:FTE201213"/>
                                            </xsl:attribute>
                                            <xsl:choose>
                                              <xsl:when test="function-available('xdFormatting:formatString')">
                                                <xsl:value-of select="xdFormatting:formatString(my:RegSet/my:RegSetTitleAndDescription/my:RegSetFinancialInformation/my:TotalOrganizationalFTEs/my:FTE201213,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
                                              </xsl:when>
                                              <xsl:otherwise>
                                                <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetFinancialInformation/my:TotalOrganizationalFTEs/my:FTE201213"/>
                                              </xsl:otherwise>
                                            </xsl:choose>
                                          </span>
                                        </font>
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px">
                                      <div align="right">
                                        <span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL65" xd:binding="my:RegSet/my:RegSetTitleAndDescription/my:RegSetFinancialInformation/my:TotalOrganizationalFTEs/my:FTE201314" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%; WHITE-SPACE: nowrap; TEXT-ALIGN: right">
                                          <xsl:attribute name="xd:num">
                                            <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetFinancialInformation/my:TotalOrganizationalFTEs/my:FTE201314"/>
                                          </xsl:attribute>
                                          <xsl:choose>
                                            <xsl:when test="function-available('xdFormatting:formatString')">
                                              <xsl:value-of select="xdFormatting:formatString(my:RegSet/my:RegSetTitleAndDescription/my:RegSetFinancialInformation/my:TotalOrganizationalFTEs/my:FTE201314,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
                                            </xsl:when>
                                            <xsl:otherwise>
                                              <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetFinancialInformation/my:TotalOrganizationalFTEs/my:FTE201314"/>
                                            </xsl:otherwise>
                                          </xsl:choose>
                                        </span>
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px">
                                      <div align="right">
                                        <font size="2" face="Calibri">
                                          <span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL60" xd:binding="my:RegSet/my:RegSetTitleAndDescription/my:RegSetFinancialInformation/my:TotalOrganizationalFTEs/my:FTE201415" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%; WHITE-SPACE: nowrap; TEXT-ALIGN: right">
                                            <xsl:attribute name="xd:num">
                                              <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetFinancialInformation/my:TotalOrganizationalFTEs/my:FTE201415"/>
                                            </xsl:attribute>
                                            <xsl:choose>
                                              <xsl:when test="function-available('xdFormatting:formatString')">
                                                <xsl:value-of select="xdFormatting:formatString(my:RegSet/my:RegSetTitleAndDescription/my:RegSetFinancialInformation/my:TotalOrganizationalFTEs/my:FTE201415,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
                                              </xsl:when>
                                              <xsl:otherwise>
                                                <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetFinancialInformation/my:TotalOrganizationalFTEs/my:FTE201415"/>
                                              </xsl:otherwise>
                                            </xsl:choose>
                                          </span>
                                        </font>
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px">
                                      <div align="right">
                                        <font size="2" face="Calibri">
                                          <span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL58" xd:binding="my:RegSet/my:RegSetTitleAndDescription/my:RegSetFinancialInformation/my:TotalOrganizationalFTEs/my:FTE201516" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%; WHITE-SPACE: nowrap; TEXT-ALIGN: right">
                                            <xsl:attribute name="xd:num">
                                              <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetFinancialInformation/my:TotalOrganizationalFTEs/my:FTE201516"/>
                                            </xsl:attribute>
                                            <xsl:choose>
                                              <xsl:when test="function-available('xdFormatting:formatString')">
                                                <xsl:value-of select="xdFormatting:formatString(my:RegSet/my:RegSetTitleAndDescription/my:RegSetFinancialInformation/my:TotalOrganizationalFTEs/my:FTE201516,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
                                              </xsl:when>
                                              <xsl:otherwise>
                                                <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetFinancialInformation/my:TotalOrganizationalFTEs/my:FTE201516"/>
                                              </xsl:otherwise>
                                            </xsl:choose>
                                          </span>
                                        </font>
                                      </div>
                                    </td>
                                    <td style="BORDER-TOP-COLOR: ; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px">
                                      <div align="right">
                                        <font size="2" face="Calibri">
                                          <span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL57" xd:binding="my:RegSet/my:RegSetTitleAndDescription/my:RegSetFinancialInformation/my:TotalOrganizationalFTEs/my:FTE201617" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%; WHITE-SPACE: nowrap; TEXT-ALIGN: right">
                                            <xsl:attribute name="xd:num">
                                              <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetFinancialInformation/my:TotalOrganizationalFTEs/my:FTE201617"/>
                                            </xsl:attribute>
                                            <xsl:choose>
                                              <xsl:when test="function-available('xdFormatting:formatString')">
                                                <xsl:value-of select="xdFormatting:formatString(my:RegSet/my:RegSetTitleAndDescription/my:RegSetFinancialInformation/my:TotalOrganizationalFTEs/my:FTE201617,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
                                              </xsl:when>
                                              <xsl:otherwise>
                                                <xsl:value-of select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetFinancialInformation/my:TotalOrganizationalFTEs/my:FTE201617"/>
                                              </xsl:otherwise>
                                            </xsl:choose>
                                          </span>
                                        </font>
                                      </div>
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 4px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-RIGHT: #000000 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <font size="3" face="Calibri">
                                <strong>Expenditures on Each Regulatory Function in this Regulation Set:</strong>
                              </font>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <table title="" class="xdRepeatingTable msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 697px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" border="1" xd:CtrlId="CTRL90" xd:widgetIndex="0">
                                <colgroup>
                                  <col style="WIDTH: 147px"></col>
                                  <col style="WIDTH: 105px"></col>
                                  <col style="WIDTH: 111px"></col>
                                  <col style="WIDTH: 111px"></col>
                                  <col style="WIDTH: 111px"></col>
                                  <col style="WIDTH: 112px"></col>
                                </colgroup>
                                <tbody class="xdTableHeader">
                                  <tr style="MIN-HEIGHT: 23px">
                                    <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div style="FONT-WEIGHT: normal">
                                        <strong>
                                          <font size="3">Regulatory Function</font>
                                        </strong>
                                      </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div align="center">
                                        <font size="3" face="Calibri">
                                          <strong>2012-13</strong>
                                        </font>
                                      </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div align="center">
                                        <font size="3" face="Calibri">
                                          <strong>2013-14</strong>
                                        </font>
                                      </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div align="center">
                                        <font size="3" face="Calibri">
                                          <strong>2014-15</strong>
                                        </font>
                                      </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div align="center">
                                        <font size="3" face="Calibri">
                                          <strong>2015-16</strong>
                                        </font>
                                      </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div align="center">
                                        <font size="3" face="Calibri">
                                          <strong>2016-17</strong>
                                        </font>
                                      </div>
                                    </td>
                                  </tr>
                                </tbody>
                                <tbody xd:xctname="RepeatingTable">
                                  <xsl:for-each select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetFinancialInformation/my:TotalExpendituresOnEachRegulatoryFunction5Years/my:ByRegulatoryFunction">
                                    <tr>
                                      <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                        <select title="" class="xdComboBox xdBehavior_Select" size="1" tabIndex="0" xd:xctname="dropdown" xd:CtrlId="CTRL97" xd:binding="my:RegulatoryFunction" xd:boundProp="value" style="WIDTH: 100%">
                                          <xsl:attribute name="value">
                                            <xsl:value-of select="my:RegulatoryFunction"/>
                                          </xsl:attribute>
                                          <option>
                                            <xsl:if test="my:RegulatoryFunction=&quot;&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Select...
                                          </option>
                                          <option value="RiskAssessment">
                                            <xsl:if test="my:RegulatoryFunction=&quot;RiskAssessment&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Risk Assessment
                                          </option>
                                          <option value="Permissions">
                                            <xsl:if test="my:RegulatoryFunction=&quot;Permissions&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Permissions
                                          </option>
                                          <option value="CompliancePromotion">
                                            <xsl:if test="my:RegulatoryFunction=&quot;CompliancePromotion&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>CompliancePromotion
                                          </option>
                                          <option value="ComplianceVerification">
                                            <xsl:if test="my:RegulatoryFunction=&quot;ComplianceVerification&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Compliance Verification
                                          </option>
                                          <option value="Enforcement">
                                            <xsl:if test="my:RegulatoryFunction=&quot;Enforcement&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Enforcement
                                          </option>
                                          <option value="Appeals">
                                            <xsl:if test="my:RegulatoryFunction=&quot;Appeals&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Appeals
                                          </option>
                                          <option value="Other">
                                            <xsl:if test="my:RegulatoryFunction=&quot;Other&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Other
                                          </option>
                                        </select>
                                      </td>
                                      <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                        <div align="right">
                                          <span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL92" xd:binding="my:RegFunDollars201213" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%; WHITE-SPACE: nowrap; TEXT-ALIGN: right">
                                            <xsl:attribute name="xd:num">
                                              <xsl:value-of select="my:RegFunDollars201213"/>
                                            </xsl:attribute>
                                            <xsl:choose>
                                              <xsl:when test="function-available('xdFormatting:formatString')">
                                                <xsl:value-of select="xdFormatting:formatString(my:RegFunDollars201213,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
                                              </xsl:when>
                                              <xsl:otherwise>
                                                <xsl:value-of select="my:RegFunDollars201213"/>
                                              </xsl:otherwise>
                                            </xsl:choose>
                                          </span>
                                        </div>
                                      </td>
                                      <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                        <div align="right">
                                          <span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL93" xd:binding="my:RegFunDollars201314" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%; WHITE-SPACE: nowrap; TEXT-ALIGN: right">
                                            <xsl:attribute name="xd:num">
                                              <xsl:value-of select="my:RegFunDollars201314"/>
                                            </xsl:attribute>
                                            <xsl:choose>
                                              <xsl:when test="function-available('xdFormatting:formatString')">
                                                <xsl:value-of select="xdFormatting:formatString(my:RegFunDollars201314,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
                                              </xsl:when>
                                              <xsl:otherwise>
                                                <xsl:value-of select="my:RegFunDollars201314"/>
                                              </xsl:otherwise>
                                            </xsl:choose>
                                          </span>
                                        </div>
                                      </td>
                                      <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                        <div align="right">
                                          <span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL94" xd:binding="my:RegFunDollars201415" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%; WHITE-SPACE: nowrap; TEXT-ALIGN: right">
                                            <xsl:attribute name="xd:num">
                                              <xsl:value-of select="my:RegFunDollars201415"/>
                                            </xsl:attribute>
                                            <xsl:choose>
                                              <xsl:when test="function-available('xdFormatting:formatString')">
                                                <xsl:value-of select="xdFormatting:formatString(my:RegFunDollars201415,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
                                              </xsl:when>
                                              <xsl:otherwise>
                                                <xsl:value-of select="my:RegFunDollars201415"/>
                                              </xsl:otherwise>
                                            </xsl:choose>
                                          </span>
                                        </div>
                                      </td>
                                      <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                        <div align="right">
                                          <span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL95" xd:binding="my:RegFunDollars201516" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%; WHITE-SPACE: nowrap; TEXT-ALIGN: right">
                                            <xsl:attribute name="xd:num">
                                              <xsl:value-of select="my:RegFunDollars201516"/>
                                            </xsl:attribute>
                                            <xsl:choose>
                                              <xsl:when test="function-available('xdFormatting:formatString')">
                                                <xsl:value-of select="xdFormatting:formatString(my:RegFunDollars201516,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
                                              </xsl:when>
                                              <xsl:otherwise>
                                                <xsl:value-of select="my:RegFunDollars201516"/>
                                              </xsl:otherwise>
                                            </xsl:choose>
                                          </span>
                                        </div>
                                      </td>
                                      <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                        <div align="right">
                                          <span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL96" xd:binding="my:RegFunDollars201617" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%; WHITE-SPACE: nowrap; TEXT-ALIGN: right">
                                            <xsl:attribute name="xd:num">
                                              <xsl:value-of select="my:RegFunDollars201617"/>
                                            </xsl:attribute>
                                            <xsl:choose>
                                              <xsl:when test="function-available('xdFormatting:formatString')">
                                                <xsl:value-of select="xdFormatting:formatString(my:RegFunDollars201617,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
                                              </xsl:when>
                                              <xsl:otherwise>
                                                <xsl:value-of select="my:RegFunDollars201617"/>
                                              </xsl:otherwise>
                                            </xsl:choose>
                                          </span>
                                        </div>
                                      </td>
                                    </tr>
                                  </xsl:for-each>
                                </tbody>
                                <tbody class="xdTableFooter">
                                  <tr>
                                    <td style="BORDER-RIGHT: medium none; BORDER-TOP-COLOR: ; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div> </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; BORDER-TOP-COLOR: ; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div> </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; BORDER-TOP-COLOR: ; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div> </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; BORDER-TOP-COLOR: ; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div> </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; BORDER-TOP-COLOR: ; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div> </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; BORDER-TOP-COLOR: ; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div> </div>
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                              <div class="optionalPlaceholder" xd:xmlToEdit="ByRegulatoryFunction_53" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 697px">Insert Additional Function Fincncial Profile</div>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 4px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-RIGHT: #000000 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <font size="3" face="Calibri">
                                <strong>Full Time Equivalents on Each Regulatory Function in this Regulation Set:</strong>
                              </font>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <table title="" class="xdRepeatingTable msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 697px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" border="1" xd:CtrlId="CTRL98" xd:widgetIndex="0">
                                <colgroup>
                                  <col style="WIDTH: 145px"></col>
                                  <col style="WIDTH: 107px"></col>
                                  <col style="WIDTH: 111px"></col>
                                  <col style="WIDTH: 111px"></col>
                                  <col style="WIDTH: 111px"></col>
                                  <col style="WIDTH: 112px"></col>
                                </colgroup>
                                <tbody class="xdTableHeader">
                                  <tr style="MIN-HEIGHT: 23px">
                                    <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div style="FONT-WEIGHT: normal">
                                        <strong>
                                          <font size="3">Regulatory Function</font>
                                        </strong>
                                      </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div align="center">
                                        <font size="3" face="Calibri">
                                          <strong>2012-13</strong>
                                        </font>
                                      </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div style="FONT-WEIGHT: normal">
                                        <font size="3">
                                          <strong>2013-14</strong>
                                        </font>
                                      </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div style="FONT-WEIGHT: normal">
                                        <font size="3">
                                          <strong>2014-15</strong>
                                        </font>
                                      </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div style="FONT-WEIGHT: normal">
                                        <font size="3">
                                          <strong>2015-16</strong>
                                        </font>
                                      </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div style="FONT-WEIGHT: normal">
                                        <font size="3">
                                          <strong>2016-17</strong>
                                        </font>
                                      </div>
                                    </td>
                                  </tr>
                                </tbody>
                                <tbody xd:xctname="RepeatingTable">
                                  <xsl:for-each select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetFinancialInformation/my:TotalFTEsByRegFunction/my:ByRegFunctionBreakdown">
                                    <tr>
                                      <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                        <select title="" class="xdComboBox xdBehavior_Select" size="1" tabIndex="0" xd:xctname="dropdown" xd:CtrlId="CTRL105" xd:binding="my:RegFunFTEGroup" xd:boundProp="value" style="WIDTH: 100%">
                                          <xsl:attribute name="value">
                                            <xsl:value-of select="my:RegFunFTEGroup"/>
                                          </xsl:attribute>
                                          <option>
                                            <xsl:if test="my:RegFunFTEGroup=&quot;&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Select...
                                          </option>
                                          <option value="RiskAssessment">
                                            <xsl:if test="my:RegFunFTEGroup=&quot;RiskAssessment&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Risk Assessment
                                          </option>
                                          <option value="Permissions">
                                            <xsl:if test="my:RegFunFTEGroup=&quot;Permissions&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Permissions
                                          </option>
                                          <option value="CompliancePromotion">
                                            <xsl:if test="my:RegFunFTEGroup=&quot;CompliancePromotion&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Compliance Promotion
                                          </option>
                                          <option value="ComplianceVerification">
                                            <xsl:if test="my:RegFunFTEGroup=&quot;ComplianceVerification&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Compliance Verification
                                          </option>
                                          <option value="Enforcement">
                                            <xsl:if test="my:RegFunFTEGroup=&quot;Enforcement&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Enforcement
                                          </option>
                                          <option value="Appeals">
                                            <xsl:if test="my:RegFunFTEGroup=&quot;Appeals&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Appeals
                                          </option>
                                          <option value="Other">
                                            <xsl:if test="my:RegFunFTEGroup=&quot;Other&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Other
                                          </option>
                                        </select>
                                      </td>
                                      <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                        <span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL100" xd:binding="my:RegFunFTE201213" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%; WHITE-SPACE: nowrap; TEXT-ALIGN: right">
                                          <xsl:attribute name="xd:num">
                                            <xsl:value-of select="my:RegFunFTE201213"/>
                                          </xsl:attribute>
                                          <xsl:choose>
                                            <xsl:when test="function-available('xdFormatting:formatString')">
                                              <xsl:value-of select="xdFormatting:formatString(my:RegFunFTE201213,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
                                            </xsl:when>
                                            <xsl:otherwise>
                                              <xsl:value-of select="my:RegFunFTE201213"/>
                                            </xsl:otherwise>
                                          </xsl:choose>
                                        </span>
                                      </td>
                                      <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                        <span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL101" xd:binding="my:RegFunFTE201314" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%; WHITE-SPACE: nowrap; TEXT-ALIGN: right">
                                          <xsl:attribute name="xd:num">
                                            <xsl:value-of select="my:RegFunFTE201314"/>
                                          </xsl:attribute>
                                          <xsl:choose>
                                            <xsl:when test="function-available('xdFormatting:formatString')">
                                              <xsl:value-of select="xdFormatting:formatString(my:RegFunFTE201314,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
                                            </xsl:when>
                                            <xsl:otherwise>
                                              <xsl:value-of select="my:RegFunFTE201314"/>
                                            </xsl:otherwise>
                                          </xsl:choose>
                                        </span>
                                      </td>
                                      <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                        <span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL102" xd:binding="my:RegFunFTE201415" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%; WHITE-SPACE: nowrap; TEXT-ALIGN: right">
                                          <xsl:attribute name="xd:num">
                                            <xsl:value-of select="my:RegFunFTE201415"/>
                                          </xsl:attribute>
                                          <xsl:choose>
                                            <xsl:when test="function-available('xdFormatting:formatString')">
                                              <xsl:value-of select="xdFormatting:formatString(my:RegFunFTE201415,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
                                            </xsl:when>
                                            <xsl:otherwise>
                                              <xsl:value-of select="my:RegFunFTE201415"/>
                                            </xsl:otherwise>
                                          </xsl:choose>
                                        </span>
                                      </td>
                                      <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                        <span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL103" xd:binding="my:RegFunFTE201516" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%; WHITE-SPACE: nowrap; TEXT-ALIGN: right">
                                          <xsl:attribute name="xd:num">
                                            <xsl:value-of select="my:RegFunFTE201516"/>
                                          </xsl:attribute>
                                          <xsl:choose>
                                            <xsl:when test="function-available('xdFormatting:formatString')">
                                              <xsl:value-of select="xdFormatting:formatString(my:RegFunFTE201516,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
                                            </xsl:when>
                                            <xsl:otherwise>
                                              <xsl:value-of select="my:RegFunFTE201516"/>
                                            </xsl:otherwise>
                                          </xsl:choose>
                                        </span>
                                      </td>
                                      <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                        <span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL104" xd:binding="my:RegFunFTE201617" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 100%; WHITE-SPACE: nowrap; TEXT-ALIGN: right">
                                          <xsl:attribute name="xd:num">
                                            <xsl:value-of select="my:RegFunFTE201617"/>
                                          </xsl:attribute>
                                          <xsl:choose>
                                            <xsl:when test="function-available('xdFormatting:formatString')">
                                              <xsl:value-of select="xdFormatting:formatString(my:RegFunFTE201617,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
                                            </xsl:when>
                                            <xsl:otherwise>
                                              <xsl:value-of select="my:RegFunFTE201617"/>
                                            </xsl:otherwise>
                                          </xsl:choose>
                                        </span>
                                      </td>
                                    </tr>
                                  </xsl:for-each>
                                </tbody>
                                <tbody class="xdTableFooter">
                                  <tr>
                                    <td style="BORDER-RIGHT: medium none; BORDER-TOP-COLOR: ; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div> </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; BORDER-TOP-COLOR: ; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div> </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; BORDER-TOP-COLOR: ; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div> </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; BORDER-TOP-COLOR: ; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div> </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; BORDER-TOP-COLOR: ; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div> </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; BORDER-TOP-COLOR: ; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div> </div>
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                              <div class="optionalPlaceholder" xd:xmlToEdit="ByRegFunctionBreakdown_68" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 697px">Insert Additional Function FTE Profile</div>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 4px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-RIGHT: #000000 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td colSpan="7" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <font size="3" face="Calibri">
                                <strong>Contacts:</strong>
                              </font>
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 18px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="6" style="BORDER-RIGHT-WIDTH: 1pt; BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: #000000; PADDING-RIGHT: 1px">
                            <div align="left">
                              <table title="" class="xdRepeatingTable msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 696px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" border="1" xd:CtrlId="CTRL459" xd:widgetIndex="0">
                                <colgroup>
                                  <col style="WIDTH: 171px"></col>
                                  <col style="WIDTH: 162px"></col>
                                  <col style="WIDTH: 190px"></col>
                                  <col style="WIDTH: 173px"></col>
                                </colgroup>
                                <tbody class="xdTableHeader">
                                  <tr>
                                    <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div>
                                        <h5 style="FONT-WEIGHT: normal">
                                          <strong>Name</strong>
                                        </h5>
                                      </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div>
                                        <h5 style="FONT-WEIGHT: normal">
                                          <strong>Title</strong>
                                        </h5>
                                      </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div>
                                        <h5 style="FONT-WEIGHT: normal">
                                          <strong>Email</strong>
                                        </h5>
                                      </div>
                                    </td>
                                    <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                      <div>
                                        <h5 style="FONT-WEIGHT: normal">
                                          <strong>Role</strong>
                                        </h5>
                                      </div>
                                    </td>
                                  </tr>
                                </tbody>
                                <tbody xd:xctname="RepeatingTable">
                                  <xsl:for-each select="my:RegSet/my:RegSetTitleAndDescription/my:RegSetPolicyFeatures/my:RegSetContacts">
                                    <tr style="MIN-HEIGHT: 26px">
                                      <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                        <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL460" xd:binding="my:Name" style="WIDTH: 100%">
                                          <xsl:value-of select="my:Name"/>
                                        </span>
                                      </td>
                                      <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                        <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL461" xd:binding="my:Title" style="WIDTH: 100%">
                                          <xsl:value-of select="my:Title"/>
                                        </span>
                                      </td>
                                      <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                        <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL462" xd:binding="my:Email" style="WIDTH: 100%">
                                          <xsl:value-of select="my:Email"/>
                                        </span>
                                      </td>
                                      <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                                        <select title="" class="xdComboBox xdBehavior_Select" size="1" tabIndex="0" xd:xctname="dropdown" xd:CtrlId="CTRL463" xd:binding="my:Role" xd:boundProp="value" style="WIDTH: 100%">
                                          <xsl:attribute name="value">
                                            <xsl:value-of select="my:Role"/>
                                          </xsl:attribute>
                                          <option>
                                            <xsl:if test="my:Role=&quot;&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Select...
                                          </option>
                                          <option value="AccountableExecutive">
                                            <xsl:if test="my:Role=&quot;AccountableExecutive&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Accountable Executive
                                          </option>
                                          <option value="SeniorOfficial">
                                            <xsl:if test="my:Role=&quot;SeniorOfficial&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Senior Official
                                          </option>
                                          <option value="Policy Specialist">
                                            <xsl:if test="my:Role=&quot;Policy Specialist&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Policy Specialist
                                          </option>
                                          <option value="CommunicationsOfficial">
                                            <xsl:if test="my:Role=&quot;CommunicationsOfficial&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Communications Official
                                          </option>
                                          <option value="ProgramFinance">
                                            <xsl:if test="my:Role=&quot;ProgramFinance&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Program Finance
                                          </option>
                                          <option value="CorporateFinance">
                                            <xsl:if test="my:Role=&quot;CorporateFinance&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Corporate Finance
                                          </option>
                                          <option value="OperationsSpecialist">
                                            <xsl:if test="my:Role=&quot;OperationsSpecialist&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Operations Specialist
                                          </option>
                                          <option value="LegalOfficial">
                                            <xsl:if test="my:Role=&quot;LegalOfficial&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Legal Official
                                          </option>
                                          <option value="EnforcementOfficial">
                                            <xsl:if test="my:Role=&quot;EnforcementOfficial&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Enforcement Official
                                          </option>
                                          <option value="OtherProgram">
                                            <xsl:if test="my:Role=&quot;OtherProgram&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Other Program
                                          </option>
                                          <option value="OtherCorporate">
                                            <xsl:if test="my:Role=&quot;OtherCorporate&quot;">
                                              <xsl:attribute name="selected">selected</xsl:attribute>
                                            </xsl:if>Other Corporate
                                          </option>
                                        </select>
                                      </td>
                                    </tr>
                                  </xsl:for-each>
                                </tbody>
                              </table>
                              <div class="optionalPlaceholder" xd:xmlToEdit="RegSetContacts_972" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 696px">Insert Additional Contact for this Regulation Set</div>
                            </div>
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                        </tr>
                        <tr style="MIN-HEIGHT: 4px">
                          <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                          <td style="BORDER-RIGHT: #000000 1pt; BORDER-TOP-COLOR: ">
                            <div align="left">
                              <font size="2" face="Calibri"></font> 
                            </div>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                  <div align="center"> </div>
                </td>
              </tr>
              <tr class="xdTableContentRow">
                <td vAlign="top" style="BORDER-TOP: #bfbfbf 1pt" class="xdTableContentCell">
                  <div align="center">
                    <font color="#7f7f7f"></font> 
                  </div>
                  <div align="center">
                    <table class="msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; TEXT-DECORATION: ; BORDER-LEFT-STYLE: none; WIDTH: 759px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" borderColor="#cead00" border="1">
                      <colgroup style="TEXT-DECORATION: ">
                        <col style="TEXT-DECORATION: ; WIDTH: 348px"></col>
                        <col style="WIDTH: 26px"></col>
                        <col style="TEXT-DECORATION: ; WIDTH: 5px"></col>
                        <col style="TEXT-DECORATION: ; WIDTH: 112px"></col>
                        <col style="TEXT-DECORATION: ; WIDTH: 196px"></col>
                        <col style="TEXT-DECORATION: ; WIDTH: 72px"></col>
                      </colgroup>
                      <tbody style="TEXT-DECORATION: ">
                        <tr style="TEXT-DECORATION: ; MIN-HEIGHT: 34px">
                          <td style="BORDER-TOP-STYLE: none; TEXT-DECORATION: ; BORDER-LEFT-STYLE: none; VERTICAL-ALIGN: middle; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none">
                            <div style="TEXT-DECORATION: ">
                              <font color="#bfbfbf" size="2" face="Calibri">
                                <font color="#bfbfbf" size="2" face="Calibri"></font>
                              </font> 
                            </div>
                          </td>
                          <td style="BORDER-TOP-STYLE: none; TEXT-DECORATION: ; BORDER-LEFT-STYLE: none; VERTICAL-ALIGN: middle; BORDER-BOTTOM-STYLE: none; BORDER-LEFT-COLOR: ; BORDER-RIGHT-STYLE: none">
                            <div style="TEXT-DECORATION: ">
                              <font color="#bfbfbf" size="2" face="Calibri">
                                <font color="#bfbfbf" size="2" face="Calibri">
                                  <strong style="TEXT-DECORATION: ">4.</strong>
                                </font>
                              </font>
                            </div>
                          </td>
                          <td colSpan="2" style="BORDER-TOP-STYLE: none; TEXT-DECORATION: ; BORDER-LEFT-STYLE: none; VERTICAL-ALIGN: middle; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none">
                            <div style="TEXT-DECORATION: ">
                              <font color="#bfbfbf" size="2" face="Calibri">
                                <font color="#bfbfbf" size="2" face="Calibri">
                                  <input title="" class="langFont" style="FONT-SIZE: small; WIDTH: 112px; FONT-WEIGHT: bold; MARGIN: 1px" size="14" type="button" value="Validate" xd:xctname="Button" xd:CtrlId="CTRL1_5" tabIndex="0"/>
                                </font>
                              </font>
                            </div>
                          </td>
                          <td style="BORDER-TOP-STYLE: none; TEXT-DECORATION: ; BORDER-LEFT-STYLE: none; VERTICAL-ALIGN: middle; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none">
                            <div style="TEXT-DECORATION: ">
                              <font color="#bfbfbf" size="2" face="Calibri">
                                <font color="#bfbfbf" size="2" face="Calibri">
                                  <strong style="TEXT-DECORATION: ">
                                    5.  <input title="" class="langFont" style="FONT-SIZE: small; WIDTH: 112px; FONT-WEIGHT: bold; MARGIN: 1px" size="14" type="button" value="Save" xd:xctname="Button" xd:CtrlId="CTRL2" tabIndex="0"/>
                                  </strong>
                                </font>
                              </font>
                            </div>
                          </td>
                          <td style="BORDER-TOP-STYLE: none; TEXT-DECORATION: ; BORDER-LEFT-STYLE: none; VERTICAL-ALIGN: middle; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none">
                            <div style="TEXT-DECORATION: ">
                              <font color="#bfbfbf" size="2" face="Calibri">
                                <font color="#bfbfbf" size="2" face="Calibri"></font>
                              </font> 
                            </div>
                          </td>
                        </tr>
                        <tr style="TEXT-DECORATION: ; MIN-HEIGHT: 18px">
                          <td colSpan="3" style="BORDER-TOP-STYLE: none; TEXT-DECORATION: ; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none; BORDER-LEFT-COLOR: ; BORDER-RIGHT-STYLE: none">
                            <div style="TEXT-DECORATION: ">
                              <font color="#bfbfbf" size="2" face="Calibri">
                                <font color="#bfbfbf" size="2" face="Calibri"></font>
                              </font> 
                            </div>
                          </td>
                          <td colSpan="3" style="BORDER-TOP-STYLE: none; TEXT-DECORATION: ; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none">
                            <div style="TEXT-DECORATION: ">
                              <font color="#bfbfbf" size="2" face="Calibri">
                                <font color="#bfbfbf" size="2" face="Calibri"></font>
                              </font> 
                            </div>
                          </td>
                        </tr>
                        <tr style="TEXT-DECORATION: ">
                          <td colSpan="3" style="BORDER-TOP-STYLE: none; TEXT-DECORATION: ; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none; BORDER-LEFT-COLOR: ; BORDER-RIGHT-STYLE: none">
                            <div style="TEXT-DECORATION: ">
                              <font color="#bfbfbf" size="2" face="Calibri">
                                <font color="#bfbfbf" size="2" face="Calibri"></font>
                              </font> 
                            </div>
                          </td>
                          <td colSpan="3" style="BORDER-TOP-STYLE: none; TEXT-DECORATION: ; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none">
                            <div align="right">
                              <font color="#bfbfbf" size="2" face="Calibri">
                                <font color="#bfbfbf" size="2" face="Calibri">
                                  <img style="HEIGHT: 47px; WIDTH: 146px" src="36442B31.png"/>
                                </font>
                              </font>
                            </div>
                          </td>
                        </tr>
                        <tr style="TEXT-DECORATION: ; MIN-HEIGHT: 22px">
                          <td colSpan="3" style="BORDER-TOP-STYLE: none; TEXT-DECORATION: ; BORDER-LEFT-STYLE: none; BORDER-TOP-COLOR: ; BORDER-BOTTOM-STYLE: none; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-STYLE: none">
                            <div style="TEXT-DECORATION: ">
                              <font color="#bfbfbf" size="2" face="Calibri">
                                <font color="#bfbfbf" size="2" face="Calibri"></font>
                              </font> 
                            </div>
                          </td>
                          <td colSpan="3" style="BORDER-TOP-STYLE: none; TEXT-DECORATION: ; BORDER-LEFT-STYLE: none; BORDER-TOP-COLOR: ; BORDER-BOTTOM-STYLE: none; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-STYLE: none">
                            <div style="TEXT-DECORATION: ">
                              <font color="#bfbfbf" size="2" face="Calibri">
                                <font color="#bfbfbf" size="2" face="Calibri"></font>
                              </font> 
                            </div>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                  <div align="center">
                    <font color="#7f7f7f"></font> 
                  </div>
                </td>
              </tr>
              <tr class="xdTableContentRow">
                <td vAlign="top" style="BORDER-TOP-COLOR: " class="xdTableContentCell">
                  <div align="center">
                    <table class="msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; TEXT-DECORATION: ; BORDER-LEFT-STYLE: none; WIDTH: 759px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" borderColor="#cead00" border="1">
                      <colgroup style="TEXT-DECORATION: ">
                        <col style="TEXT-DECORATION: ; WIDTH: 17px"></col>
                        <col style="WIDTH: 742px"></col>
                      </colgroup>
                      <tbody style="TEXT-DECORATION: ">
                        <tr style="TEXT-DECORATION: ; MIN-HEIGHT: 19px">
                          <td colSpan="2" style="BORDER-TOP-STYLE: none; TEXT-DECORATION: ; BORDER-LEFT-STYLE: none; BORDER-TOP-COLOR: ; BORDER-BOTTOM-STYLE: none; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-STYLE: none; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                            <div style="TEXT-DECORATION: ">
                              <font size="2" face="Calibri">
                                <font size="2" face="Calibri">
                                  <font size="2" face="Calibri">
                                    <strong>Definitions:</strong>
                                  </font>
                                </font>
                              </font>
                            </div>
                          </td>
                        </tr>
                        <tr style="TEXT-DECORATION: ; MIN-HEIGHT: 19px">
                          <td style="BORDER-TOP-STYLE: none; TEXT-DECORATION: ; BORDER-LEFT-STYLE: none; BORDER-TOP-COLOR: ; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-RIGHT-COLOR: ">
                            <div style="TEXT-DECORATION: ">
                              <font size="2" face="Calibri">
                                <font size="2" face="Calibri"></font>
                              </font> 
                            </div>
                          </td>
                          <td style="BORDER-TOP-STYLE: none; TEXT-DECORATION: ; BORDER-LEFT-STYLE: none; BORDER-TOP-COLOR: ; BORDER-BOTTOM-STYLE: none; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-STYLE: none; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                            <div style="TEXT-DECORATION: ">
                              <font size="2" face="Calibri">
                                <font size="2" face="Calibri">
                                  <strong style="TEXT-DECORATION: ">Definition 1 (Définition 1): </strong>English definition here
                                </font>
                              </font>
                            </div>
                          </td>
                        </tr>
                        <tr style="TEXT-DECORATION: ; MIN-HEIGHT: 19px">
                          <td style="BORDER-TOP-STYLE: none; TEXT-DECORATION: ; BORDER-LEFT-STYLE: none; BORDER-TOP-COLOR: ; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-RIGHT-COLOR: ">
                            <div style="TEXT-DECORATION: ">
                              <font size="2" face="Calibri">
                                <font size="2" face="Calibri"></font>
                              </font> 
                            </div>
                          </td>
                          <td style="BORDER-TOP-STYLE: none; TEXT-DECORATION: ; BORDER-LEFT-STYLE: none; BORDER-TOP-COLOR: ; BORDER-BOTTOM-STYLE: none; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-STYLE: none; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                            <div style="TEXT-DECORATION: ">
                              <font size="2" face="Calibri">
                                <font size="2" face="Calibri">
                                  <strong style="TEXT-DECORATION: "></strong>
                                </font>
                              </font> 
                            </div>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                  <div align="center"> </div>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
        <div align="center">q</div>
        <div align="center"> </div>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="my:Acts" mode="_8">
    <div title="" class="xdRepeatingSection xdRepeating" style="MARGIN-BOTTOM: 0px; WIDTH: 701px" align="left" xd:xctname="RepeatingSection" xd:CtrlId="CTRL116" tabIndex="-1" xd:widgetIndex="0">
      <div> </div>
      <div>
        <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 696px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
          <colgroup>
            <col style="WIDTH: 41px"></col>
            <col style="WIDTH: 89px"></col>
            <col style="WIDTH: 216px"></col>
            <col style="WIDTH: 216px"></col>
            <col style="WIDTH: 134px"></col>
          </colgroup>
          <tbody vAlign="top">
            <tr style="MIN-HEIGHT: 19px">
              <td colSpan="5" style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <select title="" class="xdComboBox xdBehavior_Select" style="FONT-SIZE: small; WIDTH: 100%; FONT-WEIGHT: bold" size="1" xd:xctname="dropdown" xd:CtrlId="CTRL118" xd:binding="my:ActID" xd:boundProp="value" value="" tabIndex="0">
                    <xsl:attribute name="value">
                      <xsl:value-of select="my:ActID"/>
                    </xsl:attribute>
                    <xsl:choose>
                      <xsl:when test="function-available('xdXDocument:GetDOM')">
                        <option/>
                        <xsl:variable name="val" select="my:ActID"/>
                        <xsl:if test="not(xdXDocument:GetDOM(&quot;tblActs&quot;)/dataroot/tblActs[ActUID=$val] or $val='')">
                          <option selected="selected">
                            <xsl:attribute name="value">
                              <xsl:value-of select="$val"/>
                            </xsl:attribute>
                            <xsl:value-of select="$val"/>
                          </option>
                        </xsl:if>
                        <xsl:for-each select="xdXDocument:GetDOM(&quot;tblActs&quot;)/dataroot/tblActs">
                          <option>
                            <xsl:attribute name="value">
                              <xsl:value-of select="ActUID"/>
                            </xsl:attribute>
                            <xsl:if test="$val=ActUID">
                              <xsl:attribute name="selected">selected</xsl:attribute>
                            </xsl:if>
                            <xsl:value-of select="TitleEng"/>
                          </option>
                        </xsl:for-each>
                      </xsl:when>
                      <xsl:otherwise>
                        <option>
                          <xsl:value-of select="my:ActID"/>
                        </option>
                      </xsl:otherwise>
                    </xsl:choose>
                  </select>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri">Year Enacted: </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri">
                    <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL119" xd:binding="my:YearEnacted" style="WIDTH: 100%">
                      <xsl:value-of select="my:YearEnacted"/>
                    </span>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 18px">
              <td style="BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="4" style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <table title="" class="xdRepeatingTable msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 652px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" border="1" xd:CtrlId="CTRL120" xd:widgetIndex="0">
                    <colgroup>
                      <col style="WIDTH: 104px"></col>
                      <col style="WIDTH: 416px"></col>
                      <col style="WIDTH: 132px"></col>
                    </colgroup>
                    <tbody xd:xctname="RepeatingTable">
                      <xsl:for-each select="my:ResponsibleMinister">
                        <tr>
                          <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                            <div align="left">Minister:</div>
                          </td>
                          <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                            <div align="left">
                              <select title="" class="xdComboBox xdBehavior_Select" size="1" tabIndex="0" xd:xctname="dropdown" xd:CtrlId="CTRL128" xd:binding="my:TitleOfMinister" xd:boundProp="value" style="WIDTH: 100%">
                                <xsl:attribute name="value">
                                  <xsl:value-of select="my:TitleOfMinister"/>
                                </xsl:attribute>
                                <option value="">
                                  <xsl:if test="my:TitleOfMinister=&quot;&quot;">
                                    <xsl:attribute name="selected">selected</xsl:attribute>
                                  </xsl:if>Select...
                                </option>
                              </select>
                            </div>
                          </td>
                          <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                            <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL122" xd:binding="my:LeadMinister" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                              <xsl:attribute name="xd:value">
                                <xsl:value-of select="my:LeadMinister"/>
                              </xsl:attribute>
                              <xsl:if test="my:LeadMinister=&quot;true&quot;">
                                <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                              </xsl:if>
                            </input>Lead Minister
                          </td>
                        </tr>
                      </xsl:for-each>
                    </tbody>
                  </table>
                  <div class="optionalPlaceholder" xd:xmlToEdit="ResponsibleMinister_84" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 652px">Insert Additional Minster</div>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 19px">
              <td style="BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="4" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <table title="" class="xdRepeatingTable msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 652px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" border="1" xd:CtrlId="CTRL124" xd:widgetIndex="0">
                    <colgroup>
                      <col style="WIDTH: 171px"></col>
                      <col style="WIDTH: 349px"></col>
                      <col style="WIDTH: 132px"></col>
                    </colgroup>
                    <tbody class="xdTableHeader">
                      <tr>
                        <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px; BACKGROUND-COLOR: transparent">
                          <div>Name of Deputy Head:</div>
                        </td>
                        <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px; BACKGROUND-COLOR: transparent">
                          <div>Title  of Deputy Head:</div>
                        </td>
                        <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px; BACKGROUND-COLOR: transparent">
                          <div>
                            <font color="#ffffff"></font> 
                          </div>
                        </td>
                      </tr>
                    </tbody>
                    <tbody xd:xctname="RepeatingTable">
                      <xsl:for-each select="my:ResponsibleDeputyHead">
                        <tr>
                          <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                            <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL125" xd:binding="my:NameOfDeputyHead" style="WIDTH: 100%">
                              <xsl:value-of select="my:NameOfDeputyHead"/>
                            </span>
                          </td>
                          <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                            <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL126" xd:binding="my:TitleOfDeputyHead" style="WIDTH: 100%">
                              <xsl:value-of select="my:TitleOfDeputyHead"/>
                            </span>
                          </td>
                          <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                            <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL127" xd:binding="my:LeadDeputyHead" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                              <xsl:attribute name="xd:value">
                                <xsl:value-of select="my:LeadDeputyHead"/>
                              </xsl:attribute>
                              <xsl:if test="my:LeadDeputyHead=&quot;true&quot;">
                                <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                              </xsl:if>
                            </input>Lead Deputy Head
                          </td>
                        </tr>
                      </xsl:for-each>
                    </tbody>
                  </table>
                  <div class="optionalPlaceholder" xd:xmlToEdit="ResponsibleDeputyHead_90" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 652px">Insert Additional Deputy Head</div>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 19px">
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="3" face="Calibri">
                    <strong>Regulations Under Act:</strong>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 19px">
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="4" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div>
                  <xsl:apply-templates select="my:RegulationsUnderAct" mode="_12"/>
                  <div class="optionalPlaceholder" xd:xmlToEdit="RegulationsUnderAct_103" tabIndex="0" xd:action="xCollection::insert" align="left" style="WIDTH: 100%">Insert Additional Regulation in Regulation Set</div>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div> </div>
    </div>
  </xsl:template>
  <xsl:template match="my:RegulationsUnderAct" mode="_12">
    <div title="" class="xdRepeatingSection xdRepeating" style="MARGIN-BOTTOM: 0px; WIDTH: 100%" align="left" xd:xctname="RepeatingSection" xd:CtrlId="CTRL138" tabIndex="-1" xd:widgetIndex="0">
      <div>
        <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 650px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
          <colgroup>
            <col style="WIDTH: 61px"></col>
            <col style="WIDTH: 25px"></col>
            <col style="WIDTH: 278px"></col>
            <col style="WIDTH: 119px"></col>
            <col style="WIDTH: 167px"></col>
          </colgroup>
          <tbody vAlign="top">
            <tr style="MIN-HEIGHT: 27px">
              <td colSpan="5" style="VERTICAL-ALIGN: bottom; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 1px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 1px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <font size="2" face="Calibri">
                    <select title="" class="xdComboBox xdBehavior_Select" style="WIDTH: 100%" size="1" xd:xctname="dropdown" xd:CtrlId="CTRL446" xd:binding="my:RegulationId" xd:boundProp="value" value="" tabIndex="0">
                      <xsl:attribute name="value">
                        <xsl:value-of select="my:RegulationId"/>
                      </xsl:attribute>
                      <xsl:choose>
                        <xsl:when test="function-available('xdXDocument:GetDOM')">
                          <option/>
                          <xsl:variable name="val" select="my:RegulationId"/>
                          <xsl:if test="not(xdXDocument:GetDOM(&quot;Regs&quot;)/Regulations/Regulation[@id=$val] or $val='')">
                            <option selected="selected">
                              <xsl:attribute name="value">
                                <xsl:value-of select="$val"/>
                              </xsl:attribute>
                              <xsl:value-of select="$val"/>
                            </option>
                          </xsl:if>
                          <xsl:for-each select="xdXDocument:GetDOM(&quot;Regs&quot;)/Regulations/Regulation">
                            <option>
                              <xsl:attribute name="value">
                                <xsl:value-of select="@id"/>
                              </xsl:attribute>
                              <xsl:if test="$val=@id">
                                <xsl:attribute name="selected">selected</xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="Title"/>
                            </option>
                          </xsl:for-each>
                        </xsl:when>
                        <xsl:otherwise>
                          <option>
                            <xsl:value-of select="my:RegulationId"/>
                          </option>
                        </xsl:otherwise>
                      </xsl:choose>
                    </select>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri">Estimated Proportion of Regulation Set Workload:</font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri">
                    <span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL140" xd:binding="my:ProportionOfRegsetAttribution" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 78px; WHITE-SPACE: nowrap">
                      <xsl:attribute name="xd:num">
                        <xsl:value-of select="my:ProportionOfRegsetAttribution"/>
                      </xsl:attribute>
                      <xsl:choose>
                        <xsl:when test="function-available('xdFormatting:formatString')">
                          <xsl:value-of select="xdFormatting:formatString(my:ProportionOfRegsetAttribution,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
                        </xsl:when>
                        <xsl:otherwise>
                          <xsl:value-of select="my:ProportionOfRegsetAttribution"/>
                        </xsl:otherwise>
                      </xsl:choose>
                    </span>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="right">
                  <font size="2" face="Calibri">
                    <font size="2" face="Calibri">
                      <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL147" xd:binding="my:AutomaticlegislativeOrRegulatoryReviewClause/my:AutomaticRegReviewCaluseIndicator" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                        <xsl:attribute name="xd:value">
                          <xsl:value-of select="my:AutomaticlegislativeOrRegulatoryReviewClause/my:AutomaticRegReviewCaluseIndicator"/>
                        </xsl:attribute>
                        <xsl:if test="my:AutomaticlegislativeOrRegulatoryReviewClause/my:AutomaticRegReviewCaluseIndicator=&quot;true&quot;">
                          <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                        </xsl:if>
                      </input>
                    </font>
                  </font>
                </div>
              </td>
              <td style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">There is an automatic review clause</font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 18px">
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Frequency:</font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="right">
                  <font size="2" face="Calibri">
                    <font size="2" face="Calibri"></font>
                  </font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <font size="2" face="Calibri">
                    <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL491" xd:binding="my:AutomaticlegislativeOrRegulatoryReviewClause/my:Frequency" style="WIDTH: 100%">
                      <xsl:value-of select="my:AutomaticlegislativeOrRegulatoryReviewClause/my:Frequency"/>
                    </span>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="right">
                  <font size="2" face="Calibri">
                    <font size="2" face="Calibri">
                      <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL143" xd:binding="my:AutomaticlegislativeOrRegulatoryReviewClause/my:StatutoryProvision" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                        <xsl:attribute name="xd:value">
                          <xsl:value-of select="my:AutomaticlegislativeOrRegulatoryReviewClause/my:StatutoryProvision"/>
                        </xsl:attribute>
                        <xsl:if test="my:AutomaticlegislativeOrRegulatoryReviewClause/my:StatutoryProvision=&quot;true&quot;">
                          <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                        </xsl:if>
                      </input>
                    </font>
                  </font>
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <font size="2" face="Calibri">There is a statutory provision for automatic review</font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: "></td>
            </tr>
            <tr style="MIN-HEIGHT: 18px">
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Title of Statutory Provision:</font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div> </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 18px">
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="right">
                  <font size="2" face="Calibri">
                    <font size="2" face="Calibri"></font>
                  </font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <font size="2" face="Calibri">
                    <span class="xdlabel"></span>
                    <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL447" xd:binding="my:AutomaticlegislativeOrRegulatoryReviewClause/my:TitleOfStatutoryProvision" style="WIDTH: 100%">
                      <xsl:value-of select="my:AutomaticlegislativeOrRegulatoryReviewClause/my:TitleOfStatutoryProvision"/>
                    </span>
                  </font>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </xsl:template>
  <xsl:template match="my:RegSetPolicyFeatures" mode="_34">
    <div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 100%; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL255" tabIndex="-1" xd:widgetIndex="0">
      <div>
        <xsl:apply-templates select="my:YearOfLastModification" mode="_35"/>
      </div>
      <div>
        <xsl:apply-templates select="my:YearOfLastComprehensiveReview" mode="_36"/>
      </div>
      <div>
        <xsl:apply-templates select="my:PerformanceEvaluation" mode="_41"/>
      </div>
      <div>
        <xsl:apply-templates select="my:RegulatoryModernization" mode="_42"/>
      </div>
      <div>
        <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 697px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
          <colgroup>
            <col style="WIDTH: 697px"></col>
          </colgroup>
          <tbody vAlign="top">
            <tr style="MIN-HEIGHT: 23px">
              <td style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <font size="3" face="Calibri">
                    <strong>Information and Data Holdings:</strong>
                  </font>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div>
        <xsl:apply-templates select="my:DataHoldings" mode="_47"/>
      </div>
      <div>
        <strong>
          <font size="3">Up Coming Regulatory Agenda:</font>
        </strong>
      </div>
      <div>
        <xsl:apply-templates select="my:UpComingRegulatoryAgenda" mode="_51"/>
      </div>
      <div>
        <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 701px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
          <colgroup>
            <col style="WIDTH: 29px"></col>
            <col style="WIDTH: 672px"></col>
          </colgroup>
          <tbody vAlign="top">
            <tr style="MIN-HEIGHT: 23px">
              <td colSpan="2" style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <strong>
                    <font size="3" face="Calibri">
                      <strong>
                        <font size="3">Other Comments On Regulatory Set Policy Features:</font>
                      </strong>
                    </font>
                  </strong>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <strong>
                    <font size="3" face="Calibri"></font>
                  </strong> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL372" xd:binding="my:OtherCommentsOnRegSetPolicyFeatures" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:OtherCommentsOnRegSetPolicyFeatures/node()"/>
                  </span>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </xsl:template>
  <xsl:template match="my:YearOfLastModification" mode="_35">
    <div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 697px; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL256" tabIndex="-1" xd:widgetIndex="0">
      <div>
        <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 696px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
          <colgroup>
            <col style="WIDTH: 29px"></col>
            <col style="WIDTH: 27px"></col>
            <col style="WIDTH: 154px"></col>
            <col style="WIDTH: 423px"></col>
            <col style="WIDTH: 63px"></col>
          </colgroup>
          <tbody vAlign="top">
            <tr style="MIN-HEIGHT: 28px">
              <td colSpan="5" style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <strong>
                    <font size="3" face="Calibri">
                      <strong>
                        <font size="3">Modification:</font>
                      </strong>
                    </font>
                  </strong>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font face="Calibri">Year of Last Modification:</font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <strong>
                    <font size="3" face="Calibri"></font>
                  </strong> 
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <strong>
                    <font size="3" face="Calibri"></font>
                  </strong> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <strong>
                    <font size="3" face="Calibri"></font>
                  </strong> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL362" xd:binding="my:YearOfLastModificationYYYY" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="FONT-SIZE: x-small; WIDTH: 67px">
                    <xsl:attribute name="xd:num">
                      <xsl:value-of select="my:YearOfLastModificationYYYY"/>
                    </xsl:attribute>
                    <xsl:choose>
                      <xsl:when test="function-available('xdFormatting:formatString')">
                        <xsl:value-of select="xdFormatting:formatString(my:YearOfLastModificationYYYY,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:value-of select="my:YearOfLastModificationYYYY"/>
                      </xsl:otherwise>
                    </xsl:choose>
                  </span>
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <strong>
                    <font size="3" face="Calibri"></font>
                  </strong> 
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 22px">
              <td style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font face="Calibri">Nature of Modification:</font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div> </div>
              </td>
              <td style="BORDER-BOTTOM-COLOR: ">
                <div>
                  <strong>
                    <font size="3" face="Calibri"></font>
                  </strong> 
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 23px">
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <strong>
                    <font size="3" face="Calibri"></font>
                  </strong> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <strong>
                    <font size="3" face="Calibri"></font>
                  </strong> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <select title="" class="xdComboBox xdBehavior_Select" size="1" tabIndex="0" xd:xctname="dropdown" xd:CtrlId="CTRL363" xd:binding="my:NatureOfModificationREFERENCE" xd:boundProp="value" style="WIDTH: 100%">
                    <xsl:attribute name="value">
                      <xsl:value-of select="my:NatureOfModificationREFERENCE"/>
                    </xsl:attribute>
                    <option>
                      <xsl:if test="my:NatureOfModificationREFERENCE=&quot;&quot;">
                        <xsl:attribute name="selected">selected</xsl:attribute>
                      </xsl:if>Select...
                    </option>
                    <option value="Comprehensive">
                      <xsl:if test="my:NatureOfModificationREFERENCE=&quot;Comprehensive&quot;">
                        <xsl:attribute name="selected">selected</xsl:attribute>
                      </xsl:if>Comprehensive
                    </option>
                    <option value="Targeted">
                      <xsl:if test="my:NatureOfModificationREFERENCE=&quot;Targeted&quot;">
                        <xsl:attribute name="selected">selected</xsl:attribute>
                      </xsl:if>Targeted
                    </option>
                    <option value="Technical">
                      <xsl:if test="my:NatureOfModificationREFERENCE=&quot;Technical&quot;">
                        <xsl:attribute name="selected">selected</xsl:attribute>
                      </xsl:if>Technical
                    </option>
                  </select>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 23px">
              <td style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font face="Calibri">Link to Canada Gazette:</font>
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div/>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 23px">
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <strong>
                    <font size="3" face="Calibri"></font>
                  </strong> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <strong>
                    <font size="3" face="Calibri"></font>
                  </strong> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <table title="" class="xdRepeatingTable msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 614px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" border="1" xd:CtrlId="CTRL364" xd:widgetIndex="0">
                    <colgroup>
                      <col style="WIDTH: 614px"></col>
                    </colgroup>
                    <tbody xd:xctname="RepeatingTable">
                      <xsl:for-each select="my:LinkToCanadaGazette">
                        <tr>
                          <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                            <div align="left">
                              <span class="xdHyperlinkBox xdBehavior_Formatting xdHyperlinkBoxClickable" tabIndex="-1" xd:xctname="HyperlinkBox" xd:CtrlId="CTRL365" xd:binding="." xd:boundProp="href" tabStop="true" style="FONT-SIZE: 8pt; FONT-FAMILY: Segoe UI; WIDTH: 100%">
                                <button class="xdHyperlinkBoxButtonClickable" tabIndex="0">
                                  <img style="vertical-align:bottom" src="res://infopath.exe/hyperlinkbox.png"/>
                                </button>
                                <span style="width:5px;"/>
                                <xsl:choose>
                                  <xsl:when test="string-length(.)!=0">
                                    <A class="hyperlinkAnchor" tabIndex="0" style="">
                                      <xsl:attribute name="title">
                                        <xsl:value-of select="."/>
                                      </xsl:attribute>
                                      <xsl:attribute name="href">
                                        <xsl:value-of select="."/>
                                      </xsl:attribute>
                                      <xsl:value-of select="substring(normalize-space(.), 0, 256)"/>
                                    </A>
                                  </xsl:when>
                                  <xsl:otherwise>Click here to insert a hyperlink</xsl:otherwise>
                                </xsl:choose>
                              </span>
                            </div>
                          </td>
                        </tr>
                      </xsl:for-each>
                    </tbody>
                  </table>
                  <div class="optionalPlaceholder" xd:xmlToEdit="LinkToCanadaGazette_241" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 614px">Insert Additional Gazette Link</div>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </xsl:template>
  <xsl:template match="my:YearOfLastComprehensiveReview" mode="_36">
    <div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 100%; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL260" tabIndex="-1" xd:widgetIndex="0">
      <div> </div>
      <div>
        <strong>
          <font size="3">Comprehensive Regulatory Review:</font>
        </strong>
      </div>
      <div>
        <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 696px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
          <colgroup>
            <col style="WIDTH: 29px"></col>
            <col style="WIDTH: 24px"></col>
            <col style="WIDTH: 643px"></col>
          </colgroup>
          <tbody vAlign="top">
            <tr>
              <td style="BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Year of Last Comprehensive Review:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="right">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <span title="" class="xdTextBox xdBehavior_Formatting" hideFocus="1" contentEditable="true" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL366" xd:binding="my:YearOfLAstComprehensiveReviewYYY" xd:boundProp="xd:num" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" style="WIDTH: 63px">
                    <xsl:attribute name="xd:num">
                      <xsl:value-of select="my:YearOfLAstComprehensiveReviewYYY"/>
                    </xsl:attribute>
                    <xsl:choose>
                      <xsl:when test="function-available('xdFormatting:formatString')">
                        <xsl:value-of select="xdFormatting:formatString(my:YearOfLAstComprehensiveReviewYYY,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:value-of select="my:YearOfLAstComprehensiveReviewYYY"/>
                      </xsl:otherwise>
                    </xsl:choose>
                  </span>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 18px">
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Objective of Review:</font>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 18px">
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="right">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL261" xd:binding="my:ObjectOfReview" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:ObjectOfReview/node()"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 23px">
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="right">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL262" xd:binding="my:PartOfStatutoryReview" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:PartOfStatutoryReview"/>
                      </xsl:attribute>
                      <xsl:if test="my:PartOfStatutoryReview=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">This comprehensive review was part of a statutory review</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Other Regulation and or non-Regulation Instruments:</font>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 56px">
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="right">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL263" xd:binding="my:OtherRegulationAndOrNonRegulationInstruments" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:OtherRegulationAndOrNonRegulationInstruments/node()"/>
                  </span>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div>
        <xsl:apply-templates select="my:Consultations" mode="_37"/>
      </div>
      <div>
        <xsl:apply-templates select="my:ResourcesForReview" mode="_40"/>
      </div>
    </div>
  </xsl:template>
  <xsl:template match="my:Consultations" mode="_37">
    <div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 100%; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL264" tabIndex="-1" xd:widgetIndex="0">
      <div>
        <xsl:apply-templates select="my:TypeOfConsultations" mode="_38"/>
      </div>
      <div>
        <xsl:apply-templates select="my:MechanismOfConsultation" mode="_39"/>
      </div>
      <div>
        <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 695px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
          <colgroup>
            <col style="WIDTH: 27px"></col>
            <col style="WIDTH: 23px"></col>
            <col style="WIDTH: 645px"></col>
          </colgroup>
          <tbody vAlign="top">
            <tr style="MIN-HEIGHT: 25px">
              <td colSpan="3" style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">
                    <strong>Consultation Parameters:</strong>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Link to What We Heard Document:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <table title="" class="xdRepeatingTable msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 631px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" border="1" xd:CtrlId="CTRL275" xd:widgetIndex="0">
                    <colgroup>
                      <col style="WIDTH: 631px"></col>
                    </colgroup>
                    <tbody xd:xctname="RepeatingTable">
                      <xsl:for-each select="my:LinkToWhatWeHeardDocument">
                        <tr>
                          <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                            <span class="xdHyperlinkBox xdBehavior_Formatting xdHyperlinkBoxClickable" tabIndex="-1" xd:xctname="HyperlinkBox" xd:CtrlId="CTRL276" xd:binding="." xd:boundProp="href" tabStop="true" style="FONT-SIZE: 8pt; FONT-FAMILY: Segoe UI; WIDTH: 100%">
                              <button class="xdHyperlinkBoxButtonClickable" tabIndex="0">
                                <img style="vertical-align:bottom" src="res://infopath.exe/hyperlinkbox.png"/>
                              </button>
                              <span style="width:5px;"/>
                              <xsl:choose>
                                <xsl:when test="string-length(.)!=0">
                                  <A class="hyperlinkAnchor" tabIndex="0" style="">
                                    <xsl:attribute name="title">
                                      <xsl:value-of select="."/>
                                    </xsl:attribute>
                                    <xsl:attribute name="href">
                                      <xsl:value-of select="."/>
                                    </xsl:attribute>
                                    <xsl:value-of select="substring(normalize-space(.), 0, 256)"/>
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
                  <div class="optionalPlaceholder" xd:xmlToEdit="LinkToWhatWeHeardDocument_174" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 631px">Insert Additional What We Heard Document</div>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Link to Consultation Document:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <table title="" class="xdRepeatingTable msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 635px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" border="1" xd:CtrlId="CTRL277" xd:widgetIndex="0">
                    <colgroup>
                      <col style="WIDTH: 635px"></col>
                    </colgroup>
                    <tbody xd:xctname="RepeatingTable">
                      <xsl:for-each select="my:LinkToConsultationDocument">
                        <tr>
                          <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                            <span class="xdHyperlinkBox xdBehavior_Formatting xdHyperlinkBoxClickable" tabIndex="-1" xd:xctname="HyperlinkBox" xd:CtrlId="CTRL278" xd:binding="." xd:boundProp="href" tabStop="true" style="FONT-SIZE: 8pt; FONT-FAMILY: Segoe UI; WIDTH: 100%">
                              <button class="xdHyperlinkBoxButtonClickable" tabIndex="0">
                                <img style="vertical-align:bottom" src="res://infopath.exe/hyperlinkbox.png"/>
                              </button>
                              <span style="width:5px;"/>
                              <xsl:choose>
                                <xsl:when test="string-length(.)!=0">
                                  <A class="hyperlinkAnchor" tabIndex="0" style="">
                                    <xsl:attribute name="title">
                                      <xsl:value-of select="."/>
                                    </xsl:attribute>
                                    <xsl:attribute name="href">
                                      <xsl:value-of select="."/>
                                    </xsl:attribute>
                                    <xsl:value-of select="substring(normalize-space(.), 0, 256)"/>
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
                  <div class="optionalPlaceholder" xd:xmlToEdit="LinkToConsultationDocument_176" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 635px">Insert Additional Consultation Document</div>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Length of Time For Consultation:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL279" xd:binding="my:LengthOfTimeForConsultations" style="WIDTH: 100%">
                    <xsl:value-of select="my:LengthOfTimeForConsultations"/>
                  </span>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </xsl:template>
  <xsl:template match="my:TypeOfConsultations" mode="_38">
    <div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 695px; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL265" tabIndex="-1" xd:widgetIndex="0">
      <div>
        <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 694px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
          <colgroup>
            <col style="WIDTH: 27px"></col>
            <col style="WIDTH: 26px"></col>
            <col style="WIDTH: 641px"></col>
          </colgroup>
          <tbody vAlign="top">
            <tr style="MIN-HEIGHT: 25px">
              <td style="BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <font size="2" face="Calibri">
                    <strong>Consultation Type(s):</strong>
                  </font>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 23px">
              <td>
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL266" xd:binding="my:PublicConsultations" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:PublicConsultations"/>
                      </xsl:attribute>
                      <xsl:if test="my:PublicConsultations=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Public Consultations:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td>
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri">
                    <font size="2" face="Calibri">
                      <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL267" xd:binding="my:StakeholderConsultations" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                        <xsl:attribute name="xd:value">
                          <xsl:value-of select="my:StakeholderConsultations"/>
                        </xsl:attribute>
                        <xsl:if test="my:StakeholderConsultations=&quot;true&quot;">
                          <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                        </xsl:if>
                      </input>
                    </font>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Stakeholder Consultations</font>
                </div>
              </td>
            </tr>
            <tr>
              <td>
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri">
                    <font size="2" face="Calibri">
                      <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL268" xd:binding="my:GovernmentConsultations" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                        <xsl:attribute name="xd:value">
                          <xsl:value-of select="my:GovernmentConsultations"/>
                        </xsl:attribute>
                        <xsl:if test="my:GovernmentConsultations=&quot;true&quot;">
                          <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                        </xsl:if>
                      </input>
                    </font>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Government Consultations</font>
                </div>
              </td>
            </tr>
            <tr>
              <td>
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL269" xd:binding="my:OtherConsultations" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:OtherConsultations"/>
                      </xsl:attribute>
                      <xsl:if test="my:OtherConsultations=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Other Consultations --&gt; Description: </font>
                  <font size="2" face="Calibri">
                    <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL448" xd:binding="my:OtherConsultationsDescription" style="WIDTH: 433px">
                      <xsl:value-of select="my:OtherConsultationsDescription"/>
                    </span>
                  </font>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div> </div>
    </div>
  </xsl:template>
  <xsl:template match="my:MechanismOfConsultation" mode="_39">
    <div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 100%; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL270" tabIndex="-1" xd:widgetIndex="0">
      <div>
        <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 698px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
          <colgroup>
            <col style="WIDTH: 24px"></col>
            <col style="WIDTH: 26px"></col>
            <col style="WIDTH: 142px"></col>
            <col style="WIDTH: 77px"></col>
            <col style="WIDTH: 429px"></col>
          </colgroup>
          <tbody vAlign="top">
            <tr>
              <td style="BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="4" style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <font size="2" face="Calibri">
                    <strong>Mechanisms of Consultation:</strong>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td>
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL271" xd:binding="my:InPerson" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:InPerson"/>
                      </xsl:attribute>
                      <xsl:if test="my:InPerson=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri">In Person</font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
            </tr>
            <tr>
              <td>
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td>
                <div>
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL272" xd:binding="my:Online" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:Online"/>
                      </xsl:attribute>
                      <xsl:if test="my:Online=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td>
                <div align="left">
                  <font size="2" face="Calibri">Online</font>
                </div>
              </td>
              <td>
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td>
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
            </tr>
            <tr>
              <td>
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td>
                <div>
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL273" xd:binding="my:WrittenSubmission" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:WrittenSubmission"/>
                      </xsl:attribute>
                      <xsl:if test="my:WrittenSubmission=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-BOTTOM-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri">Written Submission</font>
                </div>
              </td>
              <td style="BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
            </tr>
            <tr>
              <td style="VERTICAL-ALIGN: middle; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="VERTICAL-ALIGN: middle; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL274" xd:binding="my:OtherConsultationMechanism" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:OtherConsultationMechanism"/>
                      </xsl:attribute>
                      <xsl:if test="my:OtherConsultationMechanism=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td colSpan="3" style="VERTICAL-ALIGN: middle; PADDING-BOTTOM: 1px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 1px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Other Mechanism --&gt; Description: </font>
                  <font size="2" face="Calibri">
                    <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL367" xd:binding="my:OtherConsulatationMechanismDescription" style="WIDTH: 395px">
                      <xsl:value-of select="my:OtherConsulatationMechanismDescription"/>
                    </span>
                  </font>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </xsl:template>
  <xsl:template match="my:ResourcesForReview" mode="_40">
    <div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 696px; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL280" tabIndex="-1" xd:widgetIndex="0">
      <div>
        <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 695px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
          <colgroup>
            <col style="WIDTH: 26px"></col>
            <col style="WIDTH: 31px"></col>
            <col style="WIDTH: 638px"></col>
          </colgroup>
          <tbody vAlign="top">
            <tr style="MIN-HEIGHT: 25px">
              <td colSpan="3" style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <font size="2" face="Calibri">
                    <strong>Resources For Review:</strong>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Length of Time for Comprehensive Changes:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL281" xd:binding="my:LengthOfTImeForComprehensiveChanges" style="WIDTH: 100%">
                    <xsl:value-of select="my:LengthOfTImeForComprehensiveChanges"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">
                    <font size="2" face="Calibri">Length of Time for Specific Changes:</font>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL282" xd:binding="my:LengthOfTImeForSpecificChanges" style="WIDTH: 100%">
                    <xsl:value-of select="my:LengthOfTImeForSpecificChanges"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">
                    <font size="2" face="Calibri">Length of Time for Technical Changes:</font>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL283" xd:binding="my:LengthOfTImeForTechnicalChanges" style="WIDTH: 100%">
                    <xsl:value-of select="my:LengthOfTImeForTechnicalChanges"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Number of FTE Years:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL284" xd:binding="my:NumberOfFTEYears" style="WIDTH: 100%">
                    <xsl:value-of select="my:NumberOfFTEYears"/>
                  </span>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </xsl:template>
  <xsl:template match="my:PerformanceEvaluation" mode="_41">
    <div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 697px; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL285" tabIndex="-1" xd:widgetIndex="0">
      <div>
        <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 696px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
          <colgroup>
            <col style="WIDTH: 26px"></col>
            <col style="WIDTH: 28px"></col>
            <col style="WIDTH: 642px"></col>
          </colgroup>
          <tbody vAlign="top">
            <tr style="MIN-HEIGHT: 19px">
              <td colSpan="3" style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <font size="3" face="Calibri">
                    <strong>Performance Evaluation:</strong>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">
                    <span class="xdlabel">Describe the indicators for the evaluation </span>
                  </font>
                  <font size="2" face="Calibri">
                    <span class="xdlabel">of regulatory performance:</span>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL368" xd:binding="my:IndicatorsForEvaluationRegulatoryPerformance" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:IndicatorsForEvaluationRegulatoryPerformance/node()"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Link to Evaluation Plan:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span class="xdHyperlinkBox xdBehavior_Formatting xdHyperlinkBoxClickable" tabIndex="-1" xd:xctname="HyperlinkBox" xd:CtrlId="CTRL287" xd:binding="my:LinkToEvaluationPlan" xd:boundProp="href" tabStop="true" style="FONT-SIZE: 8pt; FONT-FAMILY: Segoe UI; WIDTH: 100%">
                    <button class="xdHyperlinkBoxButtonClickable" tabIndex="0">
                      <img style="vertical-align:bottom" src="res://infopath.exe/hyperlinkbox.png"/>
                    </button>
                    <span style="width:5px;"/>
                    <xsl:choose>
                      <xsl:when test="string-length(my:LinkToEvaluationPlan)!=0">
                        <A class="hyperlinkAnchor" tabIndex="0" style="">
                          <xsl:attribute name="title">
                            <xsl:value-of select="my:LinkToEvaluationPlan"/>
                          </xsl:attribute>
                          <xsl:attribute name="href">
                            <xsl:value-of select="my:LinkToEvaluationPlan"/>
                          </xsl:attribute>
                          <xsl:value-of select="substring(normalize-space(my:LinkToEvaluationPlan), 0, 256)"/>
                        </A>
                      </xsl:when>
                      <xsl:otherwise>Click here to insert a hyperlink</xsl:otherwise>
                    </xsl:choose>
                  </span>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </xsl:template>
  <xsl:template match="my:RegulatoryModernization" mode="_42">
    <div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 699px; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL288" tabIndex="-1" xd:widgetIndex="0">
      <div> </div>
      <div>
        <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 696px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
          <colgroup>
            <col style="WIDTH: 25px"></col>
            <col style="WIDTH: 23px"></col>
            <col style="WIDTH: 648px"></col>
          </colgroup>
          <tbody vAlign="top">
            <tr>
              <td colSpan="3" style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="3" face="Calibri">
                    <strong>Regulatory Modernization:</strong>
                  </font>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 22px">
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">
                    <strong>Regulatory Best Practice</strong>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL289" xd:binding="my:StatementOfRegulatoryBestPractice" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:StatementOfRegulatoryBestPractice"/>
                      </xsl:attribute>
                      <xsl:if test="my:StatementOfRegulatoryBestPractice=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Is there a statement of regulatory best practice</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Link to Statement of regulatory best practice:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span class="xdHyperlinkBox xdBehavior_Formatting xdHyperlinkBoxClickable" tabIndex="-1" xd:xctname="HyperlinkBox" xd:CtrlId="CTRL290" xd:binding="my:LinkToStatementOfRegulatoryBestPractice" xd:boundProp="href" tabStop="true" style="FONT-SIZE: 8pt; FONT-FAMILY: Segoe UI; WIDTH: 100%">
                    <button class="xdHyperlinkBoxButtonClickable" tabIndex="0">
                      <img style="vertical-align:bottom" src="res://infopath.exe/hyperlinkbox.png"/>
                    </button>
                    <span style="width:5px;"/>
                    <xsl:choose>
                      <xsl:when test="string-length(my:LinkToStatementOfRegulatoryBestPractice)!=0">
                        <A class="hyperlinkAnchor" tabIndex="0" style="">
                          <xsl:attribute name="title">
                            <xsl:value-of select="my:LinkToStatementOfRegulatoryBestPractice"/>
                          </xsl:attribute>
                          <xsl:attribute name="href">
                            <xsl:value-of select="my:LinkToStatementOfRegulatoryBestPractice"/>
                          </xsl:attribute>
                          <xsl:value-of select="substring(normalize-space(my:LinkToStatementOfRegulatoryBestPractice), 0, 256)"/>
                        </A>
                      </xsl:when>
                      <xsl:otherwise>Click here to insert a hyperlink</xsl:otherwise>
                    </xsl:choose>
                  </span>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 22px">
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <font size="2" face="Calibri">
                    <strong>
                      Documents <font size="2" face="Calibri">
                        <strong>Incorporated in Regulation Set</strong>
                      </font>
                    </strong>
                  </font>
                </div>
                <!--EndFragment-->
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL369" xd:binding="my:IncorporationByReference/my:IncorporatedReferenceUsedIndicator" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:IncorporationByReference/my:IncorporatedReferenceUsedIndicator"/>
                      </xsl:attribute>
                      <xsl:if test="my:IncorporationByReference/my:IncorporatedReferenceUsedIndicator=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Incorporated Reference Used</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Type of Incorporated Reference Used:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <select title="" class="xdComboBox xdBehavior_Select" size="1" tabIndex="0" xd:xctname="dropdown" xd:CtrlId="CTRL488" xd:binding="my:IncorporationByReference/my:TypeOfIncorporatedReferenceUsed" xd:boundProp="value" style="WIDTH: 100%">
                    <xsl:attribute name="value">
                      <xsl:value-of select="my:IncorporationByReference/my:TypeOfIncorporatedReferenceUsed"/>
                    </xsl:attribute>
                    <option>
                      <xsl:if test="my:IncorporationByReference/my:TypeOfIncorporatedReferenceUsed=&quot;&quot;">
                        <xsl:attribute name="selected">selected</xsl:attribute>
                      </xsl:if>Select...
                    </option>
                    <option value="Static">
                      <xsl:if test="my:IncorporationByReference/my:TypeOfIncorporatedReferenceUsed=&quot;Static&quot;">
                        <xsl:attribute name="selected">selected</xsl:attribute>
                      </xsl:if>Static
                    </option>
                    <option value="Ambulatory">
                      <xsl:if test="my:IncorporationByReference/my:TypeOfIncorporatedReferenceUsed=&quot;Ambulatory&quot;">
                        <xsl:attribute name="selected">selected</xsl:attribute>
                      </xsl:if>Ambulatory
                    </option>
                  </select>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 18px">
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Describe the extent of incorporation of standards or documents from non-accredited sources</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL293" xd:binding="my:IncorporationByReference/my:DescribeTheExtentToWhichIncorporationOfStandardsOrDocumentsAreNotAccredited" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:IncorporationByReference/my:DescribeTheExtentToWhichIncorporationOfStandardsOrDocumentsAreNotAccredited/node()"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <table title="" class="xdRepeatingTable msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 645px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" border="1" xd:CtrlId="CTRL294" xd:widgetIndex="0">
                    <colgroup>
                      <col style="WIDTH: 199px"></col>
                      <col style="WIDTH: 240px"></col>
                      <col style="WIDTH: 206px"></col>
                    </colgroup>
                    <tbody class="xdTableHeader">
                      <tr>
                        <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px; BACKGROUND-COLOR: transparent">
                          <div style="FONT-WEIGHT: normal">Responsible Official</div>
                        </td>
                        <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px; BACKGROUND-COLOR: transparent">
                          <div style="FONT-WEIGHT: normal">E-Mail</div>
                        </td>
                        <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px; BACKGROUND-COLOR: transparent">
                          <div style="FONT-WEIGHT: normal">Lint to Incorporated Document</div>
                        </td>
                      </tr>
                    </tbody>
                    <tbody xd:xctname="RepeatingTable">
                      <xsl:for-each select="my:IncorporationByReference/my:ListOfIncorporatedDocuments">
                        <tr>
                          <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                            <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL295" xd:binding="my:ResponsibleOfficialName" style="WIDTH: 100%">
                              <xsl:value-of select="my:ResponsibleOfficialName"/>
                            </span>
                          </td>
                          <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                            <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL296" xd:binding="my:ResponsibleOfficialEmail" style="WIDTH: 100%">
                              <xsl:value-of select="my:ResponsibleOfficialEmail"/>
                            </span>
                          </td>
                          <td style="BORDER-RIGHT: medium none; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
                            <span class="xdHyperlinkBox xdBehavior_Formatting xdHyperlinkBoxClickable" tabIndex="-1" xd:xctname="HyperlinkBox" xd:CtrlId="CTRL297" xd:binding="my:IncorporatedDocumentLink" xd:boundProp="href" tabStop="true" style="FONT-SIZE: 8pt; FONT-FAMILY: Segoe UI; WIDTH: 100%">
                              <button class="xdHyperlinkBoxButtonClickable" tabIndex="0">
                                <img style="vertical-align:bottom" src="res://infopath.exe/hyperlinkbox.png"/>
                              </button>
                              <span style="width:5px;"/>
                              <xsl:choose>
                                <xsl:when test="string-length(my:IncorporatedDocumentLink)!=0">
                                  <A class="hyperlinkAnchor" tabIndex="0" style="">
                                    <xsl:attribute name="title">
                                      <xsl:value-of select="my:IncorporatedDocumentLink"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="href">
                                      <xsl:value-of select="my:IncorporatedDocumentLink"/>
                                    </xsl:attribute>
                                    <xsl:value-of select="substring(normalize-space(my:IncorporatedDocumentLink), 0, 256)"/>
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
                  <div class="optionalPlaceholder" xd:xmlToEdit="ListOfIncorporatedDocuments_200" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 645px">Insert Additional Incorporated Document</div>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div>
        <xsl:apply-templates select="my:CurrentUsageOfMethods" mode="_44"/>
      </div>
      <div>
        <xsl:apply-templates select="my:PlannedUsageOfMethods" mode="_45"/>
      </div>
      <div>
        <xsl:apply-templates select="my:RepealedRegulation" mode="_46"/>
      </div>
      <div> </div>
      <div>
        <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 696px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
          <colgroup>
            <col style="WIDTH: 28px"></col>
            <col style="WIDTH: 23px"></col>
            <col style="WIDTH: 645px"></col>
          </colgroup>
          <tbody vAlign="top">
            <tr style="MIN-HEIGHT: 20px">
              <td style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <font size="2" face="Calibri">
                    <strong>Policy Dimensions</strong>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Description of best practices for supporting small and medium size enterprises (SMEs):</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL323" xd:binding="my:DescriptionOfBestPracticesSupportingSMEs" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:DescriptionOfBestPracticesSupportingSMEs/node()"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Description of best practices for supporting innovation:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL324" xd:binding="my:DescriptionOfAnyOtherBestPracticesSupportingInnovation" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:DescriptionOfAnyOtherBestPracticesSupportingInnovation/node()"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Description of challenges or constraints to regulatory modernization:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL325" xd:binding="my:DescriptionOfChallengesOrConstraintsToRegulatoryModernization" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:DescriptionOfChallengesOrConstraintsToRegulatoryModernization/node()"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Considerations taken when developing regulations to align with other jurisdictions:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL326" xd:binding="my:DescribeHowAlignmentToConsiderationWIthOtherJurisdictionsAreUndertakenWhenDevelopingRegulations" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:DescribeHowAlignmentToConsiderationWIthOtherJurisdictionsAreUndertakenWhenDevelopingRegulations/node()"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Other modernization considerations:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL327" xd:binding="my:OtherModernizationConsiderations" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:OtherModernizationConsiderations/node()"/>
                  </span>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div> </div>
      <div> </div>
    </div>
  </xsl:template>
  <xsl:template match="my:CurrentUsageOfMethods" mode="_44">
    <div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 696px; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL298" tabIndex="-1" xd:widgetIndex="0">
      <div> </div>
      <div>
        <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 695px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
          <colgroup>
            <col style="WIDTH: 25px"></col>
            <col style="WIDTH: 25px"></col>
            <col style="WIDTH: 645px"></col>
          </colgroup>
          <tbody vAlign="top">
            <tr style="MIN-HEIGHT: 19px">
              <td style="BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <font size="2" face="Calibri">
                    <strong>Current Methods Used: (Check all that are used)</strong>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td>
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL299" xd:binding="my:IncorporationByReferenceUsed" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:IncorporationByReferenceUsed"/>
                      </xsl:attribute>
                      <xsl:if test="my:IncorporationByReferenceUsed=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Incorporation By Reference</font>
                </div>
              </td>
            </tr>
            <tr>
              <td>
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL300" xd:binding="my:SystemsBasedUsed" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:SystemsBasedUsed"/>
                      </xsl:attribute>
                      <xsl:if test="my:SystemsBasedUsed=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Systems Based</font>
                </div>
              </td>
            </tr>
            <tr>
              <td>
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL301" xd:binding="my:PerformanceBasedUsed" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:PerformanceBasedUsed"/>
                      </xsl:attribute>
                      <xsl:if test="my:PerformanceBasedUsed=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Performance Based</font>
                </div>
              </td>
            </tr>
            <tr>
              <td>
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL302" xd:binding="my:RecognitionOfThirdPartyPrivateStandardsInRegulationsUsed" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:RecognitionOfThirdPartyPrivateStandardsInRegulationsUsed"/>
                      </xsl:attribute>
                      <xsl:if test="my:RecognitionOfThirdPartyPrivateStandardsInRegulationsUsed=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Recognition Of Third Party or Private Standards In Regulations</font>
                </div>
              </td>
            </tr>
            <tr>
              <td>
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL303" xd:binding="my:InternationalRegulatoryCooperationIntegratedInRegulationsUsed" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:InternationalRegulatoryCooperationIntegratedInRegulationsUsed"/>
                      </xsl:attribute>
                      <xsl:if test="my:InternationalRegulatoryCooperationIntegratedInRegulationsUsed=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">International Regulatory Cooperation Integrated in Regulations</font>
                </div>
              </td>
            </tr>
            <tr>
              <td>
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL304" xd:binding="my:ProvincialTerritorialRegulatoryCooperationIntegratedInRegulationsUsed" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:ProvincialTerritorialRegulatoryCooperationIntegratedInRegulationsUsed"/>
                      </xsl:attribute>
                      <xsl:if test="my:ProvincialTerritorialRegulatoryCooperationIntegratedInRegulationsUsed=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Provincial and or Territorial Regulatory Cooperation Integrated In Regulations</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL305" xd:binding="my:RegulatorySandboxUsed" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:RegulatorySandboxUsed"/>
                      </xsl:attribute>
                      <xsl:if test="my:RegulatorySandboxUsed=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Regulatory Sandbox</font>
                </div>
              </td>
            </tr>
            <tr>
              <td>
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Description of Regulatory Sandbox Usage:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL306" xd:binding="my:DescribeCurrentUsesOfRegulatorySandboxUsed" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:DescribeCurrentUsesOfRegulatorySandboxUsed/node()"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL307" xd:binding="my:OtherMethodsUsed" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:OtherMethodsUsed"/>
                      </xsl:attribute>
                      <xsl:if test="my:OtherMethodsUsed=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Other Methods:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">
                    <font size="2" face="Calibri">Description of Other Methods:</font>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL308" xd:binding="my:DescripbeOtherMethodsUsed" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:DescripbeOtherMethodsUsed/node()"/>
                  </span>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </xsl:template>
  <xsl:template match="my:PlannedUsageOfMethods" mode="_45">
    <div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 696px; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL309" tabIndex="-1" xd:widgetIndex="0">
      <div>
        <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 695px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
          <colgroup>
            <col style="WIDTH: 26px"></col>
            <col style="WIDTH: 25px"></col>
            <col style="WIDTH: 644px"></col>
          </colgroup>
          <tbody vAlign="top">
            <tr style="MIN-HEIGHT: 19px">
              <td style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <font size="2" face="Calibri">
                    <strong>
                      Planned Usage of Methods: (Check all that are planned to be used in the next <font color="#ff0000">Time period</font>)
                    </strong>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL310" xd:binding="my:IncorporationByReferencePlanned" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:IncorporationByReferencePlanned"/>
                      </xsl:attribute>
                      <xsl:if test="my:IncorporationByReferencePlanned=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Incorporation By Reference</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL311" xd:binding="my:SystemsBasedPlanned" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:SystemsBasedPlanned"/>
                      </xsl:attribute>
                      <xsl:if test="my:SystemsBasedPlanned=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Systems Based</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL312" xd:binding="my:PerformanceBasedPlanned" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:PerformanceBasedPlanned"/>
                      </xsl:attribute>
                      <xsl:if test="my:PerformanceBasedPlanned=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Performance Based</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL313" xd:binding="my:RecognitionOfThirdPartyPrivateStandardsInRegulationsPlanned" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:RecognitionOfThirdPartyPrivateStandardsInRegulationsPlanned"/>
                      </xsl:attribute>
                      <xsl:if test="my:RecognitionOfThirdPartyPrivateStandardsInRegulationsPlanned=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Recognition Of Third Party or Private Standards In Regulations</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL314" xd:binding="my:InternationalRegulatoryCooperationIntegratedInRegulationsPlanned" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:InternationalRegulatoryCooperationIntegratedInRegulationsPlanned"/>
                      </xsl:attribute>
                      <xsl:if test="my:InternationalRegulatoryCooperationIntegratedInRegulationsPlanned=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">International Regulatory Cooperation Integrated in Regulations</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL315" xd:binding="my:ProvincialTerritorialRegulatoryCooperationIntegratedInRegulationsPlanned" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:ProvincialTerritorialRegulatoryCooperationIntegratedInRegulationsPlanned"/>
                      </xsl:attribute>
                      <xsl:if test="my:ProvincialTerritorialRegulatoryCooperationIntegratedInRegulationsPlanned=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Provincial Territorial Regulatory Cooperation Integrated In Regulations</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL316" xd:binding="my:RegulatorySandboxPlanned" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:RegulatorySandboxPlanned"/>
                      </xsl:attribute>
                      <xsl:if test="my:RegulatorySandboxPlanned=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Regulatory sandbox</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Describe planned usage of regulatory sandbox:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div> </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL317" xd:binding="my:DesccribeRegulatorySandboxPlanned" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:DesccribeRegulatorySandboxPlanned/node()"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL318" xd:binding="my:OtherMethodsPlanned" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                    <xsl:attribute name="xd:value">
                      <xsl:value-of select="my:OtherMethodsPlanned"/>
                    </xsl:attribute>
                    <xsl:if test="my:OtherMethodsPlanned=&quot;true&quot;">
                      <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                    </xsl:if>
                  </input>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Other methods</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div> </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">
                    <font size="2" face="Calibri">
                      <font size="2" face="Calibri">Description of other methods planned:</font>
                    </font>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL319" xd:binding="my:DesccribeOtherRegulatoryMethodsPlanned" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:DesccribeOtherRegulatoryMethodsPlanned/node()"/>
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
  <xsl:template match="my:RepealedRegulation" mode="_46">
    <div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 696px; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL320" tabIndex="-1" xd:widgetIndex="0">
      <div>
        <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 695px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
          <colgroup>
            <col style="WIDTH: 25px"></col>
            <col style="WIDTH: 22px"></col>
            <col style="WIDTH: 648px"></col>
          </colgroup>
          <tbody vAlign="top">
            <tr style="MIN-HEIGHT: 19px">
              <td style="BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <font size="2" face="Calibri">
                    <strong>Repealed Regulation:</strong>
                  </font>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 33px">
              <td>
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri">
                    <font size="2" face="Calibri">
                      <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL321" xd:binding="my:RegulationHasBeenRepealedAndNotReplaced" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                        <xsl:attribute name="xd:value">
                          <xsl:value-of select="my:RegulationHasBeenRepealedAndNotReplaced"/>
                        </xsl:attribute>
                        <xsl:if test="my:RegulationHasBeenRepealedAndNotReplaced=&quot;true&quot;">
                          <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                        </xsl:if>
                      </input>
                    </font>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Regulation has been Repealed and Not Replaced: </font>
                  <font size="2" face="Calibri">
                    <font style="BACKGROUND-COLOR: #ffff00">--&gt; We should chat about this one…..</font>
                  </font>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 18px">
              <td>
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Rationale:</font>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 19px">
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL322" xd:binding="my:RepealedNotReplacedRationale" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:RepealedNotReplacedRationale/node()"/>
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
  <xsl:template match="my:DataHoldings" mode="_47">
    <div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 100%; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL328" tabIndex="-1" xd:widgetIndex="0">
      <div> </div>
      <div>
        <xsl:apply-templates select="my:DatabaseOnRegulatedParties" mode="_48"/>
        <div class="optionalPlaceholder" xd:xmlToEdit="DatabaseOnRegulatedParties_152" tabIndex="0" xd:action="xCollection::insert" align="left" style="WIDTH: 699px">Insert Additional Database on Regulated Party</div>
      </div>
    </div>
  </xsl:template>
  <xsl:template match="my:DatabaseOnRegulatedParties" mode="_48">
    <div title="" class="xdRepeatingSection xdRepeating" style="MARGIN-BOTTOM: 0px; WIDTH: 699px" align="left" xd:xctname="RepeatingSection" xd:CtrlId="CTRL329" tabIndex="-1" xd:widgetIndex="0">
      <div>
        <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 694px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
          <colgroup>
            <col style="WIDTH: 24px"></col>
            <col style="WIDTH: 24px"></col>
            <col style="WIDTH: 25px"></col>
            <col style="WIDTH: 621px"></col>
          </colgroup>
          <tbody vAlign="top">
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <font size="3" face="Calibri">
                    <strong>Information and Data on Regulated Parties:</strong>
                  </font>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 18px">
              <td style="BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Name of information holding or database:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL330" xd:binding="my:NameOfDatabase" style="WIDTH: 100%">
                    <xsl:value-of select="my:NameOfDatabase"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 22px">
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Description of Information holding or database:</font>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 22px">
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL478" xd:binding="my:DescriptionOfDatabase" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:DescriptionOfDatabase/node()"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 22px">
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL479" xd:binding="my:Infosource/my:InfosourceIndicator" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:Infosource/my:InfosourceIndicator"/>
                      </xsl:attribute>
                      <xsl:if test="my:Infosource/my:InfosourceIndicator=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">This information holding is identified in our organization's Sources of Federal Government and Employee Information (InfoSource) listing</font>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 22px">
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Link to InfoSource listing:</font>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 22px">
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">
                    <span class="xdHyperlinkBox xdBehavior_Formatting xdHyperlinkBoxClickable" tabIndex="-1" xd:xctname="HyperlinkBox" xd:CtrlId="CTRL480" xd:binding="my:Infosource/my:InfosourceLink" xd:boundProp="href" tabStop="true" style="FONT-SIZE: 8pt; FONT-FAMILY: Segoe UI; WIDTH: 100%">
                      <button class="xdHyperlinkBoxButtonClickable" tabIndex="0">
                        <img style="vertical-align:bottom" src="res://infopath.exe/hyperlinkbox.png"/>
                      </button>
                      <span style="width:5px;"/>
                      <xsl:choose>
                        <xsl:when test="string-length(my:Infosource/my:InfosourceLink)!=0">
                          <A class="hyperlinkAnchor" tabIndex="0" style="">
                            <xsl:attribute name="title">
                              <xsl:value-of select="my:Infosource/my:InfosourceLink"/>
                            </xsl:attribute>
                            <xsl:attribute name="href">
                              <xsl:value-of select="my:Infosource/my:InfosourceLink"/>
                            </xsl:attribute>
                            <xsl:value-of select="substring(normalize-space(my:Infosource/my:InfosourceLink), 0, 256)"/>
                          </A>
                        </xsl:when>
                        <xsl:otherwise>Click here to insert a hyperlink</xsl:otherwise>
                      </xsl:choose>
                    </span>
                  </font>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 22px">
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL464" xd:binding="my:PurposeOfDatabase/my:DBForRiskAssessment" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:PurposeOfDatabase/my:DBForRiskAssessment"/>
                      </xsl:attribute>
                      <xsl:if test="my:PurposeOfDatabase/my:DBForRiskAssessment=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Information holding or database for risk assessment</font>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 23px">
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL465" xd:binding="my:PurposeOfDatabase/my:DBForPermissions" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:PurposeOfDatabase/my:DBForPermissions"/>
                      </xsl:attribute>
                      <xsl:if test="my:PurposeOfDatabase/my:DBForPermissions=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">
                    <font size="2" face="Calibri">
                      <font size="2" face="Calibri">Information holding or d</font>atabase for permissions
                    </font>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL466" xd:binding="my:PurposeOfDatabase/my:DBForComplianceVerification" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:PurposeOfDatabase/my:DBForComplianceVerification"/>
                      </xsl:attribute>
                      <xsl:if test="my:PurposeOfDatabase/my:DBForComplianceVerification=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">
                    <font size="2" face="Calibri">
                      <font size="2" face="Calibri">Information holding or d</font>atabase for compliance verification
                    </font>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL467" xd:binding="my:PurposeOfDatabase/my:DBForEnforcement" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:PurposeOfDatabase/my:DBForEnforcement"/>
                      </xsl:attribute>
                      <xsl:if test="my:PurposeOfDatabase/my:DBForEnforcement=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">
                    <font size="2" face="Calibri">
                      <font size="2" face="Calibri">Information holding or d</font>atabase for enforcement
                    </font>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL468" xd:binding="my:PurposeOfDatabase/my:DBForPublicReporting" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:PurposeOfDatabase/my:DBForPublicReporting"/>
                      </xsl:attribute>
                      <xsl:if test="my:PurposeOfDatabase/my:DBForPublicReporting=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">
                    <font size="2" face="Calibri">
                      <font size="2" face="Calibri">Information holding or d</font>atabase for public reporting
                    </font>
                  </font>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 23px">
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL469" xd:binding="my:PurposeOfDatabase/my:DBForOtherPurposes" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:PurposeOfDatabase/my:DBForOtherPurposes"/>
                      </xsl:attribute>
                      <xsl:if test="my:PurposeOfDatabase/my:DBForOtherPurposes=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">
                    <font size="2" face="Calibri">
                      <font size="2" face="Calibri">Information holding or d</font>atabase for other purposes
                    </font>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">
                    <font size="2" face="Calibri">Description of other purposes:</font>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL470" xd:binding="my:PurposeOfDatabase/my:DBOtherPurposeDescription" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:PurposeOfDatabase/my:DBOtherPurposeDescription/node()"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL471" xd:binding="my:DBRelatedToBusiness/my:DBHoldsInformationRelatedToBusiness" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                    <xsl:attribute name="xd:value">
                      <xsl:value-of select="my:DBRelatedToBusiness/my:DBHoldsInformationRelatedToBusiness"/>
                    </xsl:attribute>
                    <xsl:if test="my:DBRelatedToBusiness/my:DBHoldsInformationRelatedToBusiness=&quot;true&quot;">
                      <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                    </xsl:if>
                  </input>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">
                    <font size="2" face="Calibri">
                      <font size="2" face="Calibri">
                        <font size="2" face="Calibri">
                          <font size="2" face="Calibri">Information holding or d</font>atabase Holds Information Related to Business
                        </font>
                      </font>
                    </font>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL472" xd:binding="my:DBRelatedToBusiness/my:DBUsesBusinessRegistrationNumbers" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                    <xsl:attribute name="xd:value">
                      <xsl:value-of select="my:DBRelatedToBusiness/my:DBUsesBusinessRegistrationNumbers"/>
                    </xsl:attribute>
                    <xsl:if test="my:DBRelatedToBusiness/my:DBUsesBusinessRegistrationNumbers=&quot;true&quot;">
                      <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                    </xsl:if>
                  </input>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">
                    <font size="2" face="Calibri">
                      <font size="2" face="Calibri">
                        <font size="2" face="Calibri">
                          <font size="2" face="Calibri">Information holding or d</font>atabase Uses Business Registration Numbers
                        </font>
                      </font>
                    </font>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL473" xd:binding="my:DBRelatedToBusiness/my:DBUsesNAICSCodes" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                    <xsl:attribute name="xd:value">
                      <xsl:value-of select="my:DBRelatedToBusiness/my:DBUsesNAICSCodes"/>
                    </xsl:attribute>
                    <xsl:if test="my:DBRelatedToBusiness/my:DBUsesNAICSCodes=&quot;true&quot;">
                      <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                    </xsl:if>
                  </input>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">
                    <font size="2" face="Calibri">
                      <font size="2" face="Calibri">
                        <font size="2" face="Calibri">
                          <font size="2" face="Calibri">Information holding or d</font>atabase Uses NAICS Codes
                        </font>
                      </font>
                    </font>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL474" xd:binding="my:DBHoldsInformationRelatedToIndividuals" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                    <xsl:attribute name="xd:value">
                      <xsl:value-of select="my:DBHoldsInformationRelatedToIndividuals"/>
                    </xsl:attribute>
                    <xsl:if test="my:DBHoldsInformationRelatedToIndividuals=&quot;true&quot;">
                      <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                    </xsl:if>
                  </input>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">
                    <font size="2" face="Calibri">
                      <font size="2" face="Calibri">
                        <font size="2" face="Calibri">
                          <font size="2" face="Calibri">Information holding or d</font>atabase Holds Information Related to Individuals
                        </font>
                      </font>
                    </font>
                  </font>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 22px">
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Name of information holding or database official:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center"> </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL331" xd:binding="my:NameOfDatabaseOfficial" style="WIDTH: 100%">
                    <xsl:value-of select="my:NameOfDatabaseOfficial"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 22px">
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Title of information holding or database official</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center"> </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL332" xd:binding="my:TitleOfDatabaseOfficial" style="WIDTH: 100%">
                    <xsl:value-of select="my:TitleOfDatabaseOfficial"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 22px">
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">E-mail of information holding or database official:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center"> </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL333" xd:binding="my:EmailOfDatabaseOfficial" style="WIDTH: 100%">
                    <xsl:value-of select="my:EmailOfDatabaseOfficial"/>
                  </span>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div/>
    </div>
  </xsl:template>
  <xsl:template match="my:UpComingRegulatoryAgenda" mode="_51">
    <div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 697px; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL347" tabIndex="-1" xd:widgetIndex="0">
      <div>
        <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 696px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
          <colgroup>
            <col style="WIDTH: 25px"></col>
            <col style="WIDTH: 23px"></col>
            <col style="WIDTH: 24px"></col>
            <col style="WIDTH: 624px"></col>
          </colgroup>
          <tbody vAlign="top">
            <tr style="MIN-HEIGHT: 23px">
              <td style="BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Describe the top priorities for regulatory modernization:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL348" xd:binding="my:TopPrioritiesForRegulatoryModernization" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:TopPrioritiesForRegulatoryModernization/node()"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 37px">
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Describe Any Current and or Foreseeable resource Pressures on the Organization to Deliver on Top Priorities, Plans and or Regulatory Modernization:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL349" xd:binding="my:DescribeAnyCurrentAndOrForeseeableResourcePressuresOnTheOrganizationToDeliverOnTopPrioritiesPlansAndOrForRegulatoryMod" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:DescribeAnyCurrentAndOrForeseeableResourcePressuresOnTheOrganizationToDeliverOnTopPrioritiesPlansAndOrForRegulatoryMod/node()"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 22px">
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Describe Plans for Regulatory Modernization if Unconstrained By Time, Resources or Processes:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL350" xd:binding="my:DescribePlansForRegulatoryModernizationIfUnconstrainedByTimeaaResourcesOrProcesses" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:DescribePlansForRegulatoryModernizationIfUnconstrainedByTimeaaResourcesOrProcesses/node()"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL352" xd:binding="my:Fall2018OmnibusSubmissionForRegulatoryChange/my:InterestedInFall2018OmnibusSubmission" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:Fall2018OmnibusSubmissionForRegulatoryChange/my:InterestedInFall2018OmnibusSubmission"/>
                      </xsl:attribute>
                      <xsl:if test="my:Fall2018OmnibusSubmissionForRegulatoryChange/my:InterestedInFall2018OmnibusSubmission=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Interested in participating in a possible omnibus submission for regulatory changes in Fall 2018. </font>
                </div>
              </td>
            </tr>
            <tr>
              <td>
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Description of nature of changes including whether they are system and or technical changes if included in 2018 omnibus:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left"> </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL353" xd:binding="my:Fall2018OmnibusSubmissionForRegulatoryChange/my:DescriptionOfNatureOfChangeIncludingSystemAndOrTechnicalChanges" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:Fall2018OmnibusSubmissionForRegulatoryChange/my:DescriptionOfNatureOfChangeIncludingSystemAndOrTechnicalChanges/node()"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 22px">
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Other comments on upcoming regulatory agenda:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL354" xd:binding="my:OtherCommentsOnUpcomingRegluatoryAgenda" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:OtherCommentsOnUpcomingRegluatoryAgenda/node()"/>
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
  <xsl:template match="my:RiskManagementFunction" mode="_55">
    <div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 699px; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL383" tabIndex="-1" xd:widgetIndex="0">
      <div> </div>
      <div>
        <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 697px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
          <colgroup>
            <col style="WIDTH: 30px"></col>
            <col style="WIDTH: 31px"></col>
            <col style="WIDTH: 636px"></col>
          </colgroup>
          <tbody vAlign="top">
            <tr style="MIN-HEIGHT: 24px">
              <td style="BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL384" xd:binding="my:ThereIsAnExplicitRiskManagmentFunction" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:ThereIsAnExplicitRiskManagmentFunction"/>
                      </xsl:attribute>
                      <xsl:if test="my:ThereIsAnExplicitRiskManagmentFunction=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td colSpan="2" style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">There Is An Explicit Risk Management Function</font>
                </div>
              </td>
            </tr>
            <tr>
              <td>
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL385" xd:binding="my:TheRiskManagmentFunctionIsSeparateFromOtherFunctions" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:TheRiskManagmentFunctionIsSeparateFromOtherFunctions"/>
                      </xsl:attribute>
                      <xsl:if test="my:TheRiskManagmentFunctionIsSeparateFromOtherFunctions=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">The Risk Management Function Is Separate From Other Functions</font>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 22px">
              <td style="BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Description of Primary Risk Management Tools:</font>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 60px">
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 3px; BORDER-BOTTOM-COLOR: ; PADDING-TOP: 3px; PADDING-LEFT: 1px; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL386" xd:binding="my:DescribePrimaryRiskManagementTools" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:DescribePrimaryRiskManagementTools/node()"/>
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
  <xsl:template match="my:PermissionFunction" mode="_56">
    <div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 100%; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL387" tabIndex="-1" xd:widgetIndex="0">
      <div> </div>
      <div>
        <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 701px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
          <colgroup>
            <col style="WIDTH: 28px"></col>
            <col style="WIDTH: 31px"></col>
            <col style="WIDTH: 31px"></col>
            <col style="WIDTH: 611px"></col>
          </colgroup>
          <tbody vAlign="top">
            <tr style="MIN-HEIGHT: 24px">
              <td style="BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL388" xd:binding="my:ThereIsAPermissionsFunction" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:ThereIsAPermissionsFunction"/>
                      </xsl:attribute>
                      <xsl:if test="my:ThereIsAPermissionsFunction=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td colSpan="3" style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">There is a permissions function</font>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 18px">
              <td style="BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Annual Volume of Permissions:</font>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 24px">
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL389" xd:binding="my:AnnualVolumeOfPermissions" style="WIDTH: 100%">
                    <xsl:value-of select="my:AnnualVolumeOfPermissions"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL390" xd:binding="my:ExAntePermissionsFunction" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:ExAntePermissionsFunction"/>
                      </xsl:attribute>
                      <xsl:if test="my:ExAntePermissionsFunction=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">This an Ex Ante Permissions Function</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Describe the level of confidence in the permissions function in serving the population subject to the regulation:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div align="left">
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL391" xd:binding="my:Describethelevelofconfidanceinthepermissionsfunctioninservingthepopulationsubjecttotheregulation" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:Describethelevelofconfidanceinthepermissionsfunctioninservingthepopulationsubjecttotheregulation/node()"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 18px">
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  Other Permissions Functions Comments:<!--EndFragment-->
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 56px">
              <td style="BORDER-TOP-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL392" xd:binding="my:OtherPermissionsFunctionsComments" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:OtherPermissionsFunctionsComments/node()"/>
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
  <xsl:template match="my:CompliancePromotionFunction" mode="_57">
    <div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 699px; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL393" tabIndex="-1" xd:widgetIndex="0">
      <div>
        <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 697px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
          <colgroup>
            <col style="WIDTH: 30px"></col>
            <col style="WIDTH: 30px"></col>
            <col style="WIDTH: 26px"></col>
            <col style="WIDTH: 611px"></col>
          </colgroup>
          <tbody vAlign="top">
            <tr>
              <td style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="center">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL394" xd:binding="my:CompliancePromotionFunctionIndicator" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:CompliancePromotionFunctionIndicator"/>
                      </xsl:attribute>
                      <xsl:if test="my:CompliancePromotionFunctionIndicator=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td colSpan="3" style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri"> Compliance Promotion Function Indicator</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">
                    <strong>Compliance Information:</strong>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL397" xd:binding="my:CompliancePromotionActivities/my:ComplianceInformation/my:ComplianceInformationIndicator" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:CompliancePromotionActivities/my:ComplianceInformation/my:ComplianceInformationIndicator"/>
                      </xsl:attribute>
                      <xsl:if test="my:CompliancePromotionActivities/my:ComplianceInformation/my:ComplianceInformationIndicator=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Information Indicator:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Information URL:</font>
                </div>
                <div> </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <span class="xdHyperlinkBox xdBehavior_Formatting xdHyperlinkBoxClickable" tabIndex="-1" xd:xctname="HyperlinkBox" xd:CtrlId="CTRL398" xd:binding="my:CompliancePromotionActivities/my:ComplianceInformation/my:ComplianceInformationURL" xd:boundProp="href" tabStop="true" style="FONT-SIZE: 8pt; FONT-FAMILY: Segoe UI; WIDTH: 338px">
                    <button class="xdHyperlinkBoxButtonClickable" tabIndex="0">
                      <img style="vertical-align:bottom" src="res://infopath.exe/hyperlinkbox.png"/>
                    </button>
                    <span style="width:5px;"/>
                    <xsl:choose>
                      <xsl:when test="string-length(my:CompliancePromotionActivities/my:ComplianceInformation/my:ComplianceInformationURL)!=0">
                        <A class="hyperlinkAnchor" tabIndex="0" style="">
                          <xsl:attribute name="title">
                            <xsl:value-of select="my:CompliancePromotionActivities/my:ComplianceInformation/my:ComplianceInformationURL"/>
                          </xsl:attribute>
                          <xsl:attribute name="href">
                            <xsl:value-of select="my:CompliancePromotionActivities/my:ComplianceInformation/my:ComplianceInformationURL"/>
                          </xsl:attribute>
                          <xsl:value-of select="substring(normalize-space(my:CompliancePromotionActivities/my:ComplianceInformation/my:ComplianceInformationURL), 0, 256)"/>
                        </A>
                      </xsl:when>
                      <xsl:otherwise>Click here to insert a hyperlink</xsl:otherwise>
                    </xsl:choose>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">
                    <strong>Compliance Guidance:</strong>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL400" xd:binding="my:CompliancePromotionActivities/my:ComplianceGuidance/my:ComplianceGuidanceIndicator" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:CompliancePromotionActivities/my:ComplianceGuidance/my:ComplianceGuidanceIndicator"/>
                      </xsl:attribute>
                      <xsl:if test="my:CompliancePromotionActivities/my:ComplianceGuidance/my:ComplianceGuidanceIndicator=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Guidance Indicator:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri"> Guidance URL:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <span class="xdHyperlinkBox xdBehavior_Formatting xdHyperlinkBoxClickable" tabIndex="-1" xd:xctname="HyperlinkBox" xd:CtrlId="CTRL401" xd:binding="my:CompliancePromotionActivities/my:ComplianceGuidance/my:ComplianceGuidanceURL" xd:boundProp="href" tabStop="true" style="FONT-SIZE: 8pt; FONT-FAMILY: Segoe UI; WIDTH: 340px">
                    <button class="xdHyperlinkBoxButtonClickable" tabIndex="0">
                      <img style="vertical-align:bottom" src="res://infopath.exe/hyperlinkbox.png"/>
                    </button>
                    <span style="width:5px;"/>
                    <xsl:choose>
                      <xsl:when test="string-length(my:CompliancePromotionActivities/my:ComplianceGuidance/my:ComplianceGuidanceURL)!=0">
                        <A class="hyperlinkAnchor" tabIndex="0" style="">
                          <xsl:attribute name="title">
                            <xsl:value-of select="my:CompliancePromotionActivities/my:ComplianceGuidance/my:ComplianceGuidanceURL"/>
                          </xsl:attribute>
                          <xsl:attribute name="href">
                            <xsl:value-of select="my:CompliancePromotionActivities/my:ComplianceGuidance/my:ComplianceGuidanceURL"/>
                          </xsl:attribute>
                          <xsl:value-of select="substring(normalize-space(my:CompliancePromotionActivities/my:ComplianceGuidance/my:ComplianceGuidanceURL), 0, 256)"/>
                        </A>
                      </xsl:when>
                      <xsl:otherwise>Click here to insert a hyperlink</xsl:otherwise>
                    </xsl:choose>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">
                    <strong>Online Service Tools:</strong>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL403" xd:binding="my:CompliancePromotionActivities/my:ComplianceOnlineServiceTools/my:ComplianceOnlineServiceToolsIndicator" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:CompliancePromotionActivities/my:ComplianceOnlineServiceTools/my:ComplianceOnlineServiceToolsIndicator"/>
                      </xsl:attribute>
                      <xsl:if test="my:CompliancePromotionActivities/my:ComplianceOnlineServiceTools/my:ComplianceOnlineServiceToolsIndicator=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Online Service Tools Indicator:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Online Service Tools URL:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <span class="xdHyperlinkBox xdBehavior_Formatting xdHyperlinkBoxClickable" tabIndex="-1" xd:xctname="HyperlinkBox" xd:CtrlId="CTRL404" xd:binding="my:CompliancePromotionActivities/my:ComplianceOnlineServiceTools/my:ComplianceOnlineServiceToolsURL" xd:boundProp="href" tabStop="true" style="FONT-SIZE: 8pt; FONT-FAMILY: Segoe UI; WIDTH: 345px">
                    <button class="xdHyperlinkBoxButtonClickable" tabIndex="0">
                      <img style="vertical-align:bottom" src="res://infopath.exe/hyperlinkbox.png"/>
                    </button>
                    <span style="width:5px;"/>
                    <xsl:choose>
                      <xsl:when test="string-length(my:CompliancePromotionActivities/my:ComplianceOnlineServiceTools/my:ComplianceOnlineServiceToolsURL)!=0">
                        <A class="hyperlinkAnchor" tabIndex="0" style="">
                          <xsl:attribute name="title">
                            <xsl:value-of select="my:CompliancePromotionActivities/my:ComplianceOnlineServiceTools/my:ComplianceOnlineServiceToolsURL"/>
                          </xsl:attribute>
                          <xsl:attribute name="href">
                            <xsl:value-of select="my:CompliancePromotionActivities/my:ComplianceOnlineServiceTools/my:ComplianceOnlineServiceToolsURL"/>
                          </xsl:attribute>
                          <xsl:value-of select="substring(normalize-space(my:CompliancePromotionActivities/my:ComplianceOnlineServiceTools/my:ComplianceOnlineServiceToolsURL), 0, 256)"/>
                        </A>
                      </xsl:when>
                      <xsl:otherwise>Click here to insert a hyperlink</xsl:otherwise>
                    </xsl:choose>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">
                    <strong>Online or In Person Assistance:</strong>
                  </font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL406" xd:binding="my:CompliancePromotionActivities/my:ComplianceOnlineOrInPersonAssistance/my:ComplianceOnlineOrInPersonAssistanceIndicator" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:CompliancePromotionActivities/my:ComplianceOnlineOrInPersonAssistance/my:ComplianceOnlineOrInPersonAssistanceIndicator"/>
                      </xsl:attribute>
                      <xsl:if test="my:CompliancePromotionActivities/my:ComplianceOnlineOrInPersonAssistance/my:ComplianceOnlineOrInPersonAssistanceIndicator=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Online Or In Person Assistance Indicator</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Online Or In Person Assistance URL:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div>
                  <span class="xdHyperlinkBox xdBehavior_Formatting xdHyperlinkBoxClickable" tabIndex="-1" xd:xctname="HyperlinkBox" xd:CtrlId="CTRL407" xd:binding="my:CompliancePromotionActivities/my:ComplianceOnlineOrInPersonAssistance/my:ComplianceOnlineOrInPersonAssistanceURL" xd:boundProp="href" tabStop="true" style="FONT-SIZE: 8pt; FONT-FAMILY: Segoe UI; WIDTH: 348px">
                    <button class="xdHyperlinkBoxButtonClickable" tabIndex="0">
                      <img style="vertical-align:bottom" src="res://infopath.exe/hyperlinkbox.png"/>
                    </button>
                    <span style="width:5px;"/>
                    <xsl:choose>
                      <xsl:when test="string-length(my:CompliancePromotionActivities/my:ComplianceOnlineOrInPersonAssistance/my:ComplianceOnlineOrInPersonAssistanceURL)!=0">
                        <A class="hyperlinkAnchor" tabIndex="0" style="">
                          <xsl:attribute name="title">
                            <xsl:value-of select="my:CompliancePromotionActivities/my:ComplianceOnlineOrInPersonAssistance/my:ComplianceOnlineOrInPersonAssistanceURL"/>
                          </xsl:attribute>
                          <xsl:attribute name="href">
                            <xsl:value-of select="my:CompliancePromotionActivities/my:ComplianceOnlineOrInPersonAssistance/my:ComplianceOnlineOrInPersonAssistanceURL"/>
                          </xsl:attribute>
                          <xsl:value-of select="substring(normalize-space(my:CompliancePromotionActivities/my:ComplianceOnlineOrInPersonAssistance/my:ComplianceOnlineOrInPersonAssistanceURL), 0, 256)"/>
                        </A>
                      </xsl:when>
                      <xsl:otherwise>Click here to insert a hyperlink</xsl:otherwise>
                    </xsl:choose>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Other Compliance Tools:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div align="left">
                  <span title="" class="xdRichTextBox" hideFocus="1" tabIndex="0" xd:xctname="RichText" xd:CtrlId="CTRL408" xd:binding="my:CompliancePromotionActivities/my:ComplianceOtherTools" style="HEIGHT: 50px; WIDTH: 100%">
                    <xsl:copy-of select="my:CompliancePromotionActivities/my:ComplianceOtherTools/node()"/>
                  </span>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div/>
      <div> </div>
    </div>
  </xsl:template>
  <xsl:template match="my:ComplianceVerificationFunction" mode="_63">
    <div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 699px; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL409" tabIndex="-1" xd:widgetIndex="0">
      <div>
        <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 696px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
          <colgroup>
            <col style="WIDTH: 31px"></col>
            <col style="WIDTH: 31px"></col>
            <col style="WIDTH: 30px"></col>
            <col style="WIDTH: 604px"></col>
          </colgroup>
          <tbody vAlign="top">
            <tr style="MIN-HEIGHT: 24px">
              <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL410" xd:binding="my:ComplianceVerificationIndicator" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:ComplianceVerificationIndicator"/>
                      </xsl:attribute>
                      <xsl:if test="my:ComplianceVerificationIndicator=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td colSpan="3" style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Compliance Verification Indicator</font>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 18px">
              <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Name of Administrative Organization:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL411" xd:binding="my:ComplianceVerificationNameOfAdministrativeOrganization" style="WIDTH: 100%">
                    <xsl:value-of select="my:ComplianceVerificationNameOfAdministrativeOrganization"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 18px">
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Name of official:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL412" xd:binding="my:ComplianceVerificationNameOfOfficial" style="WIDTH: 100%">
                    <xsl:value-of select="my:ComplianceVerificationNameOfOfficial"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 18px">
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Email of official:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL413" xd:binding="my:ComplianceVerificationEmailOfOfficial" style="WIDTH: 100%">
                    <xsl:value-of select="my:ComplianceVerificationEmailOfOfficial"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 18px">
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Level of Delegation:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <select title="" class="xdComboBox xdBehavior_Select" size="1" tabIndex="0" xd:xctname="dropdown" xd:CtrlId="CTRL489" xd:binding="my:ComplianceVerificationLevelOfDelegation" xd:boundProp="value" style="WIDTH: 100%">
                    <xsl:attribute name="value">
                      <xsl:value-of select="my:ComplianceVerificationLevelOfDelegation"/>
                    </xsl:attribute>
                    <option>
                      <xsl:if test="my:ComplianceVerificationLevelOfDelegation=&quot;&quot;">
                        <xsl:attribute name="selected">selected</xsl:attribute>
                      </xsl:if>Select...
                    </option>
                    <option value="DeputyMinister">
                      <xsl:if test="my:ComplianceVerificationLevelOfDelegation=&quot;DeputyMinister&quot;">
                        <xsl:attribute name="selected">selected</xsl:attribute>
                      </xsl:if>Deputy Minister
                    </option>
                    <option value="AssistantDeputyMinister">
                      <xsl:if test="my:ComplianceVerificationLevelOfDelegation=&quot;AssistantDeputyMinister&quot;">
                        <xsl:attribute name="selected">selected</xsl:attribute>
                      </xsl:if>Assistant Deputy Minister
                    </option>
                    <option value="DirectorGeneral">
                      <xsl:if test="my:ComplianceVerificationLevelOfDelegation=&quot;DirectorGeneral&quot;">
                        <xsl:attribute name="selected">selected</xsl:attribute>
                      </xsl:if>Director General
                    </option>
                    <option value="Director">
                      <xsl:if test="my:ComplianceVerificationLevelOfDelegation=&quot;Director&quot;">
                        <xsl:attribute name="selected">selected</xsl:attribute>
                      </xsl:if>Director
                    </option>
                    <option value="Manager">
                      <xsl:if test="my:ComplianceVerificationLevelOfDelegation=&quot;Manager&quot;">
                        <xsl:attribute name="selected">selected</xsl:attribute>
                      </xsl:if>Manager
                    </option>
                  </select>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL416" xd:binding="my:ComplianceVerificationCrossDesignation/my:ComplianceVerificationCrossDesignationIndicator" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:ComplianceVerificationCrossDesignation/my:ComplianceVerificationCrossDesignationIndicator"/>
                      </xsl:attribute>
                      <xsl:if test="my:ComplianceVerificationCrossDesignation/my:ComplianceVerificationCrossDesignationIndicator=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Cross Designation Indicator</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Cross Designation Organization Type:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div> </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <select title="" class="xdComboBox xdBehavior_Select" size="1" tabIndex="0" xd:xctname="dropdown" xd:CtrlId="CTRL490" xd:binding="my:ComplianceVerificationCrossDesignation/my:ComplianceVerificationCrossDesignationOrganizationType" xd:boundProp="value" style="WIDTH: 100%">
                    <xsl:attribute name="value">
                      <xsl:value-of select="my:ComplianceVerificationCrossDesignation/my:ComplianceVerificationCrossDesignationOrganizationType"/>
                    </xsl:attribute>
                    <option>
                      <xsl:if test="my:ComplianceVerificationCrossDesignation/my:ComplianceVerificationCrossDesignationOrganizationType=&quot;&quot;">
                        <xsl:attribute name="selected">selected</xsl:attribute>
                      </xsl:if>Select...
                    </option>
                    <option value="OtherGovernmentDepartment">
                      <xsl:if test="my:ComplianceVerificationCrossDesignation/my:ComplianceVerificationCrossDesignationOrganizationType=&quot;OtherGovernmentDepartment&quot;">
                        <xsl:attribute name="selected">selected</xsl:attribute>
                      </xsl:if>Other Government Department
                    </option>
                    <option value="OtherGovernment">
                      <xsl:if test="my:ComplianceVerificationCrossDesignation/my:ComplianceVerificationCrossDesignationOrganizationType=&quot;OtherGovernment&quot;">
                        <xsl:attribute name="selected">selected</xsl:attribute>
                      </xsl:if>Other Government
                    </option>
                    <option value="ForeignGovernment">
                      <xsl:if test="my:ComplianceVerificationCrossDesignation/my:ComplianceVerificationCrossDesignationOrganizationType=&quot;ForeignGovernment&quot;">
                        <xsl:attribute name="selected">selected</xsl:attribute>
                      </xsl:if>Foreign Government
                    </option>
                    <option value="Organization">
                      <xsl:if test="my:ComplianceVerificationCrossDesignation/my:ComplianceVerificationCrossDesignationOrganizationType=&quot;Organization&quot;">
                        <xsl:attribute name="selected">selected</xsl:attribute>
                      </xsl:if>Organization
                    </option>
                    <option value="Other">
                      <xsl:if test="my:ComplianceVerificationCrossDesignation/my:ComplianceVerificationCrossDesignationOrganizationType=&quot;Other&quot;">
                        <xsl:attribute name="selected">selected</xsl:attribute>
                      </xsl:if>Other
                    </option>
                  </select>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </xsl:template>
  <xsl:template match="my:EnforcementFunction" mode="_65">
    <div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 699px; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL418" tabIndex="-1" xd:widgetIndex="0">
      <div>
        <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 697px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
          <colgroup>
            <col style="WIDTH: 30px"></col>
            <col style="WIDTH: 22px"></col>
            <col style="WIDTH: 645px"></col>
          </colgroup>
          <tbody vAlign="top">
            <tr style="MIN-HEIGHT: 24px">
              <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL419" xd:binding="my:EnforcementFunctionIndicator" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:EnforcementFunctionIndicator"/>
                      </xsl:attribute>
                      <xsl:if test="my:EnforcementFunctionIndicator=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td colSpan="2" style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Enforcement Function Indicator:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-LEFT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL421" xd:binding="my:EnforcementFunctionDisclosure/my:EnforcementFunctionDisclosureIndicator" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:EnforcementFunctionDisclosure/my:EnforcementFunctionDisclosureIndicator"/>
                      </xsl:attribute>
                      <xsl:if test="my:EnforcementFunctionDisclosure/my:EnforcementFunctionDisclosureIndicator=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri">Disclosure Indicator:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-LEFT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri">Disclosure Frequency Of Use:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="left">
                  <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL422" xd:binding="my:EnforcementFunctionDisclosure/my:EnforcementFunctionDisclosureFrequencyOfUse" style="WIDTH: 100%">
                    <xsl:value-of select="my:EnforcementFunctionDisclosure/my:EnforcementFunctionDisclosureFrequencyOfUse"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL424" xd:binding="my:EnforcementFunctionAdminMonetaryPenalty/my:EnforcementFunctionAdminMonetaryPenaltyIndicator" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:EnforcementFunctionAdminMonetaryPenalty/my:EnforcementFunctionAdminMonetaryPenaltyIndicator"/>
                      </xsl:attribute>
                      <xsl:if test="my:EnforcementFunctionAdminMonetaryPenalty/my:EnforcementFunctionAdminMonetaryPenaltyIndicator=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri">Administrative or Monetary Penalty:</font>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 24px">
              <td style="BORDER-LEFT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri">Penalty Frequency Of Use:</font>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 24px">
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="left">
                  <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL425" xd:binding="my:EnforcementFunctionAdminMonetaryPenalty/my:EnforcementFunctionAdminMonetaryPenaltyFrequencyOfUse" style="WIDTH: 100%">
                    <xsl:value-of select="my:EnforcementFunctionAdminMonetaryPenalty/my:EnforcementFunctionAdminMonetaryPenaltyFrequencyOfUse"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL427" xd:binding="my:EnforcementFunctionCriminalProsecution/my:EnforcementFunctionCriminalProsecutionIndicator" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:EnforcementFunctionCriminalProsecution/my:EnforcementFunctionCriminalProsecutionIndicator"/>
                      </xsl:attribute>
                      <xsl:if test="my:EnforcementFunctionCriminalProsecution/my:EnforcementFunctionCriminalProsecutionIndicator=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri">Criminal Prosecution Indicator:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri">Prosecution Frequency Of Use:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="left">
                  <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL428" xd:binding="my:EnforcementFunctionCriminalProsecution/my:EnforcementFunctionCriminalProsecutionFrequencyOfUse" style="WIDTH: 100%">
                    <xsl:value-of select="my:EnforcementFunctionCriminalProsecution/my:EnforcementFunctionCriminalProsecutionFrequencyOfUse"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="center"> </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="center">
                  <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL430" xd:binding="my:EnforcementFunctionOther/my:EnforcementFunctionOtherIndicator" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                    <xsl:attribute name="xd:value">
                      <xsl:value-of select="my:EnforcementFunctionOther/my:EnforcementFunctionOtherIndicator"/>
                    </xsl:attribute>
                    <xsl:if test="my:EnforcementFunctionOther/my:EnforcementFunctionOtherIndicator=&quot;true&quot;">
                      <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                    </xsl:if>
                  </input>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri">Other Indicator:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri">Other Description:</font>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 24px">
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="left">
                  <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL431" xd:binding="my:EnforcementFunctionOther/my:EnforcementFunctionOtherDescription" style="WIDTH: 100%">
                    <xsl:value-of select="my:EnforcementFunctionOther/my:EnforcementFunctionOtherDescription"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri">Other Frequency Of Use:</font>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="center">
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div align="left">
                  <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL432" xd:binding="my:EnforcementFunctionOther/my:EnforcementFunctionOtherFrequencyOfUse" style="WIDTH: 100%">
                    <xsl:value-of select="my:EnforcementFunctionOther/my:EnforcementFunctionOtherFrequencyOfUse"/>
                  </span>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </xsl:template>
  <xsl:template match="my:AppealsFunction" mode="_69">
    <div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 699px; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL433" tabIndex="-1" xd:widgetIndex="0">
      <div>
        <table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 697px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
          <colgroup>
            <col style="WIDTH: 30px"></col>
            <col style="WIDTH: 27px"></col>
            <col style="WIDTH: 162px"></col>
            <col style="WIDTH: 48px"></col>
            <col style="WIDTH: 430px"></col>
          </colgroup>
          <tbody vAlign="top">
            <tr>
              <td style="BORDER-LEFT-COLOR: ">
                <div>
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL434" xd:binding="my:AppealsFunctionIndicator" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:AppealsFunctionIndicator"/>
                      </xsl:attribute>
                      <xsl:if test="my:AppealsFunctionIndicator=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td colSpan="2" style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <div align="left">
                  <font size="2" face="Calibri">Appeals Function Indicator:</font>
                </div>
              </td>
              <td colSpan="2" style="BORDER-BOTTOM-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri"> Frequency Of Use:</font>
                </div>
              </td>
              <td style="BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <font size="2" face="Calibri">
                  <div> </div>
                </font>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL435" xd:binding="my:AppealsFunctionFreequencyOfUse" style="WIDTH: 100%">
                    <xsl:value-of select="my:AppealsFunctionFreequencyOfUse"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Official Name:</font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <font size="2" face="Calibri">
                  <div> </div>
                </font>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL436" xd:binding="my:AppealsFunctionOfficialName" style="WIDTH: 100%">
                    <xsl:value-of select="my:AppealsFunctionOfficialName"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Official Title:</font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <font size="2" face="Calibri">
                  <div> </div>
                </font>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL437" xd:binding="my:AppealsFunctionOfficialTitle" style="WIDTH: 100%">
                    <xsl:value-of select="my:AppealsFunctionOfficialTitle"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Official Email:</font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ">
                <font size="2" face="Calibri">
                  <div> </div>
                </font>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td colSpan="3" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div>
                  <span title="" class="xdTextBox" hideFocus="1" tabIndex="0" xd:xctname="PlainText" xd:CtrlId="CTRL438" xd:binding="my:AppealsFunctionOfficialEmail" style="WIDTH: 100%">
                    <xsl:value-of select="my:AppealsFunctionOfficialEmail"/>
                  </span>
                </div>
              </td>
            </tr>
            <tr style="MIN-HEIGHT: 23px">
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL440" xd:binding="my:AppealsFunctionNatureOfAppeals/my:AppealsFunctionNatureOfAppealsBinding" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:AppealsFunctionNatureOfAppeals/my:AppealsFunctionNatureOfAppealsBinding"/>
                      </xsl:attribute>
                      <xsl:if test="my:AppealsFunctionNatureOfAppeals/my:AppealsFunctionNatureOfAppealsBinding=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Nature Of Appeals Binding</font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
            </tr>
            <tr>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ; BORDER-RIGHT-COLOR: ">
                <div>
                  <font size="2" face="Calibri">
                    <input title="" class="xdBehavior_Boolean" type="checkbox" value="" tabIndex="0" xd:xctname="CheckBox" xd:CtrlId="CTRL441" xd:binding="my:AppealsFunctionNatureOfAppeals/my:AppealsFunctionNatureOfAppealsNonBinding" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
                      <xsl:attribute name="xd:value">
                        <xsl:value-of select="my:AppealsFunctionNatureOfAppeals/my:AppealsFunctionNatureOfAppealsNonBinding"/>
                      </xsl:attribute>
                      <xsl:if test="my:AppealsFunctionNatureOfAppeals/my:AppealsFunctionNatureOfAppealsNonBinding=&quot;true&quot;">
                        <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                      </xsl:if>
                    </input>
                  </font>
                </div>
              </td>
              <td colSpan="2" style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 1px">
                <div align="left">
                  <font size="2" face="Calibri">Nature Of Appeals Non-Binding:</font>
                </div>
              </td>
              <td style="BORDER-TOP-COLOR: ; BORDER-LEFT-COLOR: ">
                <div>
                  <font size="2" face="Calibri"></font> 
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>
