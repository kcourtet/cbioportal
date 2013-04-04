<script type="text/template" id="drug_info_template">
	<table class="drug-data">
		<tr align="left" class="targets-data-row">
			<td>
				<strong>Drug Name: </strong>
				{{drugName}}
				<br><br>
			</td>
		</tr>
		<tr align="left" class="targets-data-row">
			<td>
				<strong>Number of Genes Targeted: </strong>
				<span class="num-of-drug-targets" title="{{targets}}">{{numOfTargets}}</span>
				<br><br>
			</td>
		</tr>
		<tr align="left" class="atc_codes-data-row">
			<td>
				<strong>Drug Class(ATC codes): </strong>
				{{atcCodeLinks}}
				<br><br>
			</td>
		</tr>
		<tr align="left" class="synonyms-data-row">
			<td>
				<strong>Synonyms: </strong><br>
				{{synonymList}}
				<br>
			</td>
		</tr>
		<tr align="left" class="description-data-row">
			<td>
				<strong>Description: </strong>
				{{drugDescription}}
				<br><br>
			</td>
		</tr>
		<tr align="left" class="fda-data-row">
			<td>
				<strong>FDA Approval: </strong>
				{{fdaApproval}}
				<br>
			</td>
		</tr>
		<tr align="left" class="cancerdrug-data-row">
			<td>
				<strong>Cancer Drug: </strong> Yes<br>
			</td>
		</tr>
		<tr align="left" class="clinicaltrials-data-row">
			<td>
				<strong>Number Of Clinical Trials: </strong>
				{{numOfClinicalTrials}}
				<br><br>
			</td>
		</tr>
		<tr align="left" class="pubmed-data-row">
			<td>
				<strong>PubMed IDs:</strong><br>
				{{pubmedIdLinks}}
				<br>
			</td>
		</tr>
		<tr class="xref-row">
			<td>
				<strong>More at: </strong>
				{{xrefLinks}}
			</td>
		</tr>
	</table>

</script>

<script type="text/template" id="genomic_profile_template">
	<table class="profile-header">
		<tr class="header-row">
			<td>
				Genomic Profile(s):
			</td>
		</tr>
	</table>
	<table class="profile">
		<tr class="total-alteration percent-row">
			<td class="label-cell">
				<div class="percent-label">Total Alteration</div>
			</td>
			<td class="percent-cell"></td>
			<td>
				<div class="percent-value">{{totalAlterationPercent}}%</div>
			</td>
		</tr>
		<tr class="total-alteration-separator">
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr class="cna-amplified percent-row">
			<td class="label-cell">
				<div class="percent-label">Amplification</div>
			</td>
			<td class="percent-cell">
				<div class="percent-bar"
				     style="width: {{cnaAmplifiedWidth}}%; background-color: #FF2500;"></div>
			</td>
			<td>
				<div class="percent-value">{{cnaAmplifiedPercent}}%</div>
			</td>
		</tr>
		<tr class="cna-homozygously-deleted percent-row">
			<td class="label-cell">
				<div class="percent-label">Homozygous Deletion</div>
			</td>
			<td class="percent-cell">
				<div class="percent-bar"
				     style="width: {{homozygousDelWidth}}%; background-color: #0332FF;"></div>
			</td>
			<td>
				<div class="percent-value">{{homozygousDelPercent}}%</div>
			</td>
		</tr>
		<tr class="cna-gained percent-row">
			<td class="label-cell">
				<div class="percent-label">Gain</div>
			</td>
			<td class="percent-cell">
				<div class="percent-bar"
				     style="width: {{cnaGainedWidth}}%; background-color: #FFC5CC;"></div>
			</td>
			<td>
				<div class="percent-value">{{cnaGainedPercent}}%</div>
			</td>
		</tr>
		<tr class="cna-hemizygously-deleted percent-row">
			<td class="label-cell">
				<div class="percent-label">Hemizygous Deletion</div>
			</td>
			<td class="percent-cell">
				<div class="percent-bar"
				     style="width: {{hemizygousDelWidth}}%; background-color: #9EDFE0;"></div>
			</td>
			<td>
				<div class="percent-value">{{hemizygousDelPercent}}%</div>
			</td>
		</tr>
		<tr class="section-separator cna-section-separator">
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr class="mrna-way-up percent-row">
			<td class="label-cell">
				<div class="percent-label">Up-regulation</div>
			</td>
			<td class="percent-cell">
				<div class="percent-bar"
				     style="width: {{upRegulationWidth}}%; background-color: #FFACA9;"></div>
			</td>
			<td>
				<div class="percent-value">{{upRegulationPercent}}%</div>
			</td>
		</tr>
		<tr class="mrna-way-down percent-row">
			<td class="label-cell">
				<div class="percent-label">Down-regulation</div>
			</td>
			<td class="percent-cell">
				<div class="percent-bar"
				     style="width: {{downRegulationWidth}}%; background-color: #78AAD6;"></div>
			</td>
			<td>
				<div class="percent-value">{{downRegulationPercent}}%</div>
			</td>
		</tr>
		<tr class="section-separator mrna-section-separator">
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr class="mutated percent-row">
			<td class="label-cell">
				<div class="percent-label">Mutation</div>
			</td>
			<td class="percent-cell">
				<div class="percent-bar"
				     style="width: {{mutationWidth}}%; background-color: #008F00;"></div>
			</td>
			<td>
				<div class="percent-value">{{mutationPercent}}%</div>
			</td>
		</tr>
	</table>
</script>


<script type="text/template" id="biogene_template">
	<div class='node-details-info'>
		<table>
			<tr class='biogene-symbol'><td><b>Gene Symbol:</b> {{geneSymbol}}</td></tr>
			<tr class='biogene-description'><td><b>Description:</b> {{geneDescription}}</td></tr>
			<tr class='biogene-aliases'><td><b>Aliases:</b> {{geneAliases}}</td></tr>
			<tr class='biogene-designations'><td><b>Designations:</b> {{geneDesignations}}</td></tr>
			<tr class='biogene-location'><td><b>Chromosome Location:</b> {{geneLocation}}</td></tr>
			<tr class='biogene-mim'>
				<td>
					<b>MIM:</b>
					<a href='http://omim.org/entry/{{geneMim}}' target='blank'>{{geneMim}}</a>
				</td>
			</tr>
			<tr class='biogene-id'>
				<td>
					<b>Gene ID:</b>
					<a href='http://www.ncbi.nlm.nih.gov/gene?term={{geneId}}' target='blank'>{{geneId}}</a>
				</td>
			</tr>
		</table>
	</div>
	<div class='node-details-summary'>
		<b>Gene Function:</b>
		<br><br>
		{{geneSummary}}
	</div>
	<!--div class='node-details-footer'>
		<a href='http://cbio.mskcc.org/biogene/index.html' target='blank'>more</a>
	</div-->
</script>

<script type="text/javascript">

	// This is for the moustache-like templates
	// prevents collisions with JSP tags
	_.templateSettings = {
		interpolate : /\{\{(.+?)\}\}/g
	};

	/**
	 * Backbone View Class for the drug data.
	 *
	 * Expected options fields:
	 * options.el               target html selector for the content
	 * options.data             data associated with a single drug
	 * options.linkMap          mapping for the external links (xrefs)
	 * options.idPlaceHolder    string constant to be used to generate links
	 * options.edges            list of edges for the current network
	 */
	var DrugInfoView = Backbone.View.extend({
		initialize: function(options) {
			this.render(options);
		},
		render: function(options) {
			var data = options.data;
			var xrefLinks = this.generateXrefLinks(data,
				options.linkMap,
				options.idPlaceHolder);
			var atcCodeLinks = this.generateAtcCodes(data["ATC_CODE"]);
			var synonymList = this.generateSynonyms(data["SYNONYMS"]);
			var fdaApproval = (data["FDA_APPROVAL"] == "true") ? "Approved" : "Not Approved";
			var pubmedIdLinks = this.generatePubMedIdLinks(data,
				options.edges,
				options.linkMap,
				options.idPlaceHolder);
			var desc = data["DESCRIPTION"];
			var clinicalTrials = data["NUMBER_OF_CLINICAL_TRIALS"];

			// pass variables in using Underscore.js template
			var variables = {drugName: data.label,
				numOfTargets: data["TARGETS"].split(";").length,
				targets: data["TARGETS"],
				numOfClinicalTrials: clinicalTrials,
				xrefLinks: xrefLinks,
				atcCodeLinks: atcCodeLinks,
				synonymList: synonymList,
				drugDescription: desc,
				fdaApproval: fdaApproval,
				pubmedIdLinks: pubmedIdLinks};

			// compile the template using underscore
			var template = _.template($("#drug_info_template").html(), variables);

			// load the compiled HTML into the Backbone "el"
			this.$el.html(template);

			// hide titles with no information

			if (xrefLinks == "")
			{
				$(options.el + " .xref-row").hide();
			}

			if (atcCodeLinks == "")
			{
				$(options.el + " .atc_codes-data-row").hide();
			}

			if (synonymList == "")
			{
				$(options.el + " .synonyms-data-row").hide();
			}

			if (pubmedIdLinks == "")
			{
				$(options.el + " .pubmed-data-row").hide();
			}

			if (desc == null || desc == "")
			{
				$(options.el + " .description-data-row").hide();
			}

			if (clinicalTrials == null || clinicalTrials < 1)
			{
				$(options.el + " .clinicaltrials-data-row").hide();
			}

			$(options.el + " .num-of-drug-targets").tipTip();
		},
		generateXrefLinks: function(data, linkMap, idPlaceHolder) {
			var xrefs = [];
			var xrefLinks = "";

			if (data["UNIFICATION_XREF"] != null)
			{
				xrefs = data["UNIFICATION_XREF"].split(";");
			}

			if (data["RELATIONSHIP_XREF"] != null)
			{
				xrefs = xrefs.concat(data["RELATIONSHIP_XREF"].split(";"));
			}

			var link;

			if (xrefs.length > 0)
			{
				link = _resolveXref(xrefs[0], linkMap, idPlaceHolder);

				if (link.href != "#")
					xrefLinks += '<a href="' + link.href + '" target="_blank">' + link.text + '</a>';
			}

			for (var i = 1; i < xrefs.length; i++)
			{
				link = _resolveXref(xrefs[i], linkMap, idPlaceHolder);

				if (link.href != "#")
					xrefLinks += ', ' + '<a href="' + link.href + '" target="_blank">' + link.text + '</a>';
			}

			return xrefLinks;
		},
		generateAtcCodes: function(atcCode) {
			var href = "http://www.whocc.no/atc_ddd_index/?code=";
			var atcLinks = "";

			if (atcCode != null && atcCode.length > 0)
			{
				var atcCodes = atcCode.split(";");

				if (atcCodes.length > 0)
				{
					atcLinks += '<a href="' + href + atcCodes[0] + '" target="_blank">' + atcCodes[0] + '</a>';
				}

				for (var i = 1; i < atcCodes.length; i++)
				{
					atcLinks += ', <a href="' + href + atcCodes[i] + '" target="_blank">' + atcCodes[i] + '</a>';
				}
			}

			return atcLinks;
		},
		generateSynonyms: function(synonyms) {
			var synonymList = "";

			if (synonyms != null && synonyms.length > 0)
			{
				synonyms = synonyms.split(";");

				if(synonyms.length == 1)
				{
					synonymList += synonyms[0];
				}
				else
				{
					for (var i = 0; i < synonyms.length; i++)
					{
						synonymList += '- ' + synonyms[i] + '</br>';
					}
				}
			}

			return synonymList;
		},
		generatePubMedIdLinks: function(data, edges, linkMap, idPlaceHolder) {
			var pubMedLinks = "";

			for (var k = 0; k < edges.length; k++)
			{
				if (edges[k].data.source == data.id &&
				    edges[k].data["INTERACTION_PUBMED_ID"] != "")
				{
					var pubmeds = edges[k].data["INTERACTION_PUBMED_ID"];
					var pubmedTokens = pubmeds.split(";");

					for (var j=0; j < pubmedTokens.length; j++)
					{
						var link = _resolveXref(pubmedTokens[j], linkMap, idPlaceHolder);

						if (link.href == "#")
						{
							// skip unknown sources
							continue;
						}

						var xref = '- <a href="' + link.href + '" target="_blank">' + link.pieces[1] + '</a><br>';
						pubMedLinks += xref;
					}
				}
			}

			return pubMedLinks;
		}
	});

	/**
	 * Backbone view for the genomic profile information.
	 *
	 * Expected fields for the options object:
	 * options.el   target html selector for the content
	 * options.data data associated with a single gene
	 */
	var GenomicProfileView = Backbone.View.extend({
		initialize: function(options){
			this.render(options);
		},
		render: function(options){
			var data = options.data;

			var cnaDataAvailable = !(data["PERCENT_CNA_AMPLIFIED"] == null &&
			                         data["PERCENT_CNA_HOMOZYGOUSLY_DELETED"] == null &&
			                         data["PERCENT_CNA_GAINED"] &&
			                         data["PERCENT_CNA_HEMIZYGOUSLY_DELETED"] == null);

			var mrnaDataAvailable = !(data["PERCENT_MRNA_WAY_UP"] == null &&
			                          data["PERCENT_MRNA_WAY_DOWN"] == null);

			var mutationDataAvailable = data["PERCENT_MUTATED"] != null;

			// if no genomic data available at all, do not render anything
			if (!cnaDataAvailable && !mrnaDataAvailable && !mutationDataAvailable)
			{
				return;
			}

			// pass variables in using Underscore.js template
			var variables = { totalAlterationPercent: (data["PERCENT_ALTERED"] * 100).toFixed(1),
				cnaAmplifiedPercent: (data["PERCENT_CNA_AMPLIFIED"] * 100).toFixed(1),
				cnaAmplifiedWidth: Math.max(Math.ceil(data["PERCENT_CNA_AMPLIFIED"] * 100)),
				homozygousDelPercent: (data["PERCENT_CNA_HOMOZYGOUSLY_DELETED"] * 100).toFixed(1),
				homozygousDelWidth: Math.ceil(data["PERCENT_CNA_HOMOZYGOUSLY_DELETED"] * 100),
				cnaGainedPercent: (data["PERCENT_CNA_GAINED"] * 100).toFixed(1),
				cnaGainedWidth: Math.ceil(data["PERCENT_CNA_GAINED"] * 100),
				hemizygousDelPercent: (data["PERCENT_CNA_HEMIZYGOUSLY_DELETED"] * 100).toFixed(1),
				hemizygousDelWidth: Math.ceil(data["PERCENT_CNA_HEMIZYGOUSLY_DELETED"] * 100),
				upRegulationPercent: (data["PERCENT_MRNA_WAY_UP"] * 100).toFixed(1),
				upRegulationWidth: Math.ceil(data["PERCENT_MRNA_WAY_UP"] * 100),
				downRegulationPercent: (data["PERCENT_MRNA_WAY_DOWN"] * 100).toFixed(1),
				downRegulationWidth: Math.ceil(data["PERCENT_MRNA_WAY_DOWN"] * 100),
				mutationPercent: (data["PERCENT_MUTATED"] * 100).toFixed(1),
				mutationWidth: Math.ceil(data["PERCENT_MUTATED"] * 100)};

			// compile the template using underscore
			var template = _.template( $("#genomic_profile_template").html(), variables);

			// load the compiled HTML into the Backbone "el"
			this.$el.html(template);

			// hide data rows with no information

			if (data["PERCENT_CNA_AMPLIFIED"] == null)
				$(options.el + " .cna-amplified").hide();

			if (data["PERCENT_CNA_HOMOZYGOUSLY_DELETED"] == null)
				$(options.el + " .cna-homozygously-deleted").hide();

			if (data["PERCENT_CNA_GAINED"] == null)
				$(options.el + " .cna-gained").hide();

			if (data["PERCENT_CNA_HEMIZYGOUSLY_DELETED"] == null)
				$(options.el + " .cna-hemizygously-deleted").hide();

			if (data["PERCENT_MRNA_WAY_UP"] == null)
				$(options.el + " .mrna-way-up").hide();

			if (data["PERCENT_MRNA_WAY_DOWN"] == null)
				$(options.el + " .mrna-way-down").hide();

			if (data["PERCENT_MUTATED"] == null)
				$(options.el + " .mutated").hide();

			// hide section separators if none of the rows is available
			// for a specific data group

			if (!cnaDataAvailable)
				$(options.el + " .cna-section-separator").hide();

			if (!mrnaDataAvailable)
				$(options.el + " .mrna-section-separator").hide();
		}
	});

	/**
	 * Backbone view for the BioGene information.
	 *
	 * Expected fields for the options object:
	 * options.el   target html selector for the content
	 * options.data data associated with a single gene
	 */
	var BioGeneView = Backbone.View.extend({
		initialize: function(options){
			this.render(options);
		},
		render: function(options){
			// pass variables in using Underscore.js template
			var variables = { geneSymbol: options.data.geneSymbol,
				geneDescription: options.data.geneDescription,
				geneAliases: _parseDelimitedInfo(options.data.geneAliases, ":", ","),
				geneDesignations: _parseDelimitedInfo(options.data.geneDesignations, ":", ","),
				geneLocation: options.data.geneLocation,
				geneMim: options.data.geneMim, // TODO add a hyperlink for MIM
				geneId: options.data.geneId,
				geneSummary: options.data.geneSummary};

			// compile the template using underscore
			var template = _.template( $("#biogene_template").html(), variables);

			// load the compiled HTML into the Backbone "el"
			this.$el.html(template);

			// hide rows with undefined data

			if (options.data.geneSymbol == undefined)
				$(options.el + " .biogene-symbol").hide();

			if (options.data.geneDescription == undefined)
				$(options.el + " .biogene-description").hide();

			if (options.data.geneAliases == undefined)
				$(options.el + " .biogene-aliases").hide();

			if (options.data.geneDesignations == undefined)
				$(options.el + " .biogene-designations").hide();

			if (options.data.geneChromosome == undefined)
				$(options.el + " .biogene-chromosome").hide();

			if (options.data.geneLocation == undefined)
				$(options.el + " .biogene-location").hide();

			if (options.data.geneMim == undefined)
				$(options.el + " .biogene-mim").hide();

			if (options.data.geneId == undefined)
				$(options.el + " .biogene-id").hide();

			if (options.data.geneSummary == undefined)
				$(options.el + " .node-details-summary").hide();
		}
	});

	/**
	 * Utility function to convert a delimited data into a human readable
	 * text separated by the given separator.
	 *
	 * @param info      original data as a string
	 * @param delimiter delimiter for the original data
	 * @param separator separator for the new output
	 * @return String
	 */
	function _parseDelimitedInfo(info, delimiter, separator)
	{
		// do not process undefined or null values
		if (info == undefined || info == null)
		{
			return info;
		}

		var text = "";
		var parts = info.split(delimiter);

		if (parts.length > 0)
		{
			text = parts[0];
		}

		for (var i=1; i < parts.length; i++)
		{
			text += separator + " " + parts[i];
		}

		return text;
	}

	// TODO remove the function (having the same name) in network-visualization.js
	// after migrating everything into backbone (refactoring)
	function _resolveXref(xref, linkMap, idPlaceHolder)
	{
		var link = null;

		if (xref != null)
		{
			// split the string into two parts
			var pieces = xref.split(":", 2);

			// construct the link object containing href and text
			link = {};

			link.href = linkMap[pieces[0].toLowerCase()];

			if (link.href == null)
			{
				// unknown source
				link.href = "#";
			}
			// else, check where search id should be inserted
			else if (link.href.indexOf(idPlaceHolder) != -1)
			{
				link.href = link.href.replace(idPlaceHolder, pieces[1]);
			}
			else
			{
				link.href += pieces[1];
			}

			link.text = xref;
			link.pieces = pieces;
		}

		return link;
	}
</script>