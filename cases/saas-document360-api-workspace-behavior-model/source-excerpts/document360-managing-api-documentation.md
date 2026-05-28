# Document360, source excerpt

Source URL: https://docs.document360.com/docs/manage-api-documentation
Page title: Managing API documentation
Section: Full page
Date checked: 2026-05-28
Scope: In scope for `05_portfolio/cases/document360-api-workspace-behavior-model/`

## Source metadata

| Field | Value |
|---|---|
| Product / system | Document360 |
| Documentation area | API documentation |
| Case folder | `05_portfolio/cases/document360-api-workspace-behavior-model/` |
| Source type | Documentation page |
| Extraction status | Raw excerpt |
| Analysis status | Not analyzed in this file |

## Raw excerpt

The API documentation feature in Document360 makes it easy to create clear, interactive documentation by uploading your API specification files. This process automatically builds detailed documentation that covers everything from API endpoints to methods and responses, helping developers understand and use your API more effectively.

## Generating API documentation

There are three methods to generate API documentation in Document360:

- **From a URL**
- **From a** **JSON/YAML/** **YML file**
- **With a CI/CD flow**

> NOTE
> 
> Document360 supports OpenAPI 2.0, OpenAPI 3.0, OpenAPI 3.1, and Postman API specifications.

### Generating API documentation from an API specification file

To generate API references from an API specification file (JSON/YAML/YML),

1. Navigate to the desired project in the Knowledge base portal.
2. Select **API documentation** (**{ }**) from the left navigation bar.
3. Click the **Create** dropdown in the top navigation bar and select **New API**. This will display the **New API reference** window.

![Creating a new API in Document360 with highlighted options and categories.](https://cdn.document360.io/860f9f88-412e-4570-8222-d5bf2f4b7dd1/Images/Documentation/Managing-API-documentation-CreateNew.png)

4. Select the **Upload API definition** radio button in the **New API reference** window.
5. Click either **Upload from my device** or **Choose from Drive** to select the file from your device or Document360 Drive, respectively. You can also drag and drop your file directly into the New API reference window.

![Interface for uploading API definitions with options for file selection and upload.](https://cdn.document360.io/860f9f88-412e-4570-8222-d5bf2f4b7dd1/Images/Documentation/image-1771842689065.png)

> NOTE
> 
> The API documentation import process supports second-level subcategories using the `>` symbol in OpenAPI tags (e.g., `Pets > Details`). This allows for cleaner, nested organization of endpoints, preserves the structure during resync, and ensures proper display and navigation in the left panel of the API reference.

If your uploaded file has any associated alerts or warnings, you can view them by expanding the **Alerts** and **Warnings** dropdowns, which appear in the New API reference window.

6. Click **New API reference** to navigate to the **Publish confirmation** window. You will see a success message in the window, along with the number of categories and articles that have been created.
7. Click **Publish** to generate your API documentation.

> NOTE
> 
> To review your documentation before publishing, click **Close** to return to the Documentation screen. Your draft will be visible in the **Categories & Articles** pane.

### Generating API documentation from a URL

To upload the API specification file as a URL to Document360,

1. Navigate to the desired project in the Knowledge base portal.
2. Select **API documentation** (**{ }**) from the left navigation bar.
3. Click the **Create** dropdown from the top navigation bar and select **New API** or click the **New API** button from the top right corner. This will display the **New API reference** panel.
4. In the **Choose source** screen, select the **Create from URL** radio button, and click **Next**.
5. In the **Source settings** screen, enter the URL for your API specification file in the **URL** field.

![Creating a new API reference by entering a URL in the specified field.](https://cdn.document360.io/860f9f88-412e-4570-8222-d5bf2f4b7dd1/Images/Documentation/image-1771842722933.png)

6. Click **Add API reference** to navigate to the **Finish** screen.
7. On the **Finish** screen, you will be able to see the number of categories and articles that have been created for your API specification file.
8. Click **Publish** to generate your API documentation.

### Generating API documentation with a CI/CD flow

Before you upload an API specification file with a CI/CD flow, ensure that the latest version of Node.js is installed on your system. If you are unfamiliar with Node.js, refer to [this guide](https://nodejs.org/en/learn/getting-started/how-to-install-nodejs) for installation instructions.

To upload the API specification file with a CI/CD flow,

1. Navigate to the desired project in the Knowledge base portal.
2. Select **API documentation** (**{ }**) from the left navigation bar.
3. Click the **Create** dropdown in the top navigation bar and select **New API**. This will display the **New API reference** window.
4. In the **Choose source** screen, select the **CI/CD Flow** radio button.
5. Copy the full CLI command shown from the **New API reference** window.

![](https://cdn.document360.io/860f9f88-412e-4570-8222-d5bf2f4b7dd1/Images/Documentation/image-1771842754123.png)

6. In the copied command, update the `--path` value with:
	- The full path to your local JSON/YAML/YML spec file. For example,
		```bash
		--path=/Users/yourname/projects/api/openapi.yaml
		```
		- A valid URL pointing to your API spec file. For example,
		```bash
		--path=https://example.com/api/openapi.yaml
		```
7. Paste the updated command in your terminal and press Enter.
8. Your API specification file will be uploaded, and API documentation will be generated.

> NOTE
> 
> - The first line (`npm install d360 -g`) installs the Document360 CLI tool. You only need to run it the first time. If it's already installed, you can skip that line.
> - If you regenerate the API key by clicking the () icon in the UI, **you must update the** `--apiKey` **value in your CLI command** before running it again. The old key will no longer be valid.

**Managing webhooks (events)**

When your OpenAPI 3.1 spec includes webhooks, Document360 imports them and shows an event icon next to each webhook. The page displays the payload schema and example. If the spec does not include an example, a default example and a sample payload are shown. Try it is not available for webhooks. Webhooks are included in resync operations, and your custom content is retained after regeneration.

---

## Regenerate API documentation

If you make any changes to your API, such as adding new endpoints, you do not need to update your API documentation in Document360 manually. You can regenerate your API documentation, and any changes to your API will be automatically reflected in the updated documentation.

> NOTE
> 
> Any custom content you add to your API documentation will be retained when you regenerate your API documentation.

### Regenerate API documentation from URL

1. Navigate to the desired project in the Knowledge base portal.
2. Select **API documentation** (**{ }**) from the left navigation bar.
3. Click **API references** from the left navigation list pane.
4. Click the **More** () icon next to the desired API reference for which you want to regenerate the API documentation.
	1. **To regenerate API documentation from the existing URL**:
		- Click **Resync.**
				- The API documentation will be regenerated as per the latest API specification file.
	![Document360 interface showing API references with options to edit and resync.](https://cdn.document360.io/860f9f88-412e-4570-8222-d5bf2f4b7dd1/Images/Documentation/Managing-API-regenerate-from-existing-URL.png)
	1. **To regenerate API documentation with a new URL**:
		- Click **Edit.**
				- Enter the new URL in the **URL** field.
				- Click **Update.**
				- The API documentation will be regenerated according to the API specification file at the new URL.

![](https://cdn.document360.io/860f9f88-412e-4570-8222-d5bf2f4b7dd1/Images/Documentation/image-1771842801095.png)

### Regenerate API documentation from an API specification file

1. Navigate to the desired project in the Knowledge base portal.
2. Select **API documentation** (**{ }**) from the left navigation bar.
3. Click **API references** from the left navigation list pane.
4. Click the **More** () icon next to the desired API reference for which you want to regenerate the API documentation.
5. Click **Edit**.
6. Upload the latest API specification file in JSON/YAML/YML format.
7. Click **Update**. The API documentation will be regenerated as per the latest API specification file.

![](https://cdn.document360.io/860f9f88-412e-4570-8222-d5bf2f4b7dd1/Images/Documentation/image-1771842856955.png)

### Regenerate API documentation integrated with CI/CD flow

You can resync the API reference in your CI/CD pipelines with the help of your [d360 npm packages](https://www.npmjs.com/package/d360). D360 is the command line tool that helps you set up workflows that sync your API docs to Document360.

You can also perform the resync manually using the command below.

```plain text
d360 apidocs:resync 
                    --apiKey=API_key_value
                    --userId=user_id_value
                    --apiReferenceId=API_reference_value
                    --path=Spec_file_path
```

### Download API reference

To download your API reference file from the Knowledge base site, follow the steps below:

1. On the API documentation Knowledge base site, from the left navigation pane, click the **More** () icon next to the desired API reference for which you want to regenerate the API documentation.
2. Click **Download API reference**.
	It will be downloaded in a standard format such as.json or.yaml.
3. The Download API Reference option is accessible for all upload types, including:
	- File upload
		- CI/CD flow
		- URL upload
	![Document360 interface showing API documentation with options to follow and download reference.](https://cdn.document360.io/860f9f88-412e-4570-8222-d5bf2f4b7dd1/Images/Documentation/Download-API-reference-KBSite.png)

To download your API reference file from the Knowledge base portal, follow the steps below:

1. Navigate to the desired project in the Knowledge base portal.
2. Click the **More** () icon next to the desired API reference from the left navigation pane for which you want to download the API reference.
3. Click **Download API reference**.
	The latest version of the API reference file will be downloaded to your local storage.
	![](https://cdn.document360.io/860f9f88-412e-4570-8222-d5bf2f4b7dd1/Images/Documentation/Managing-API-documentation-DownloadAPI-reference.png)
	Alternatively,
4. Click **API references** from the left navigation pane.
5. From the configured API references listed, click the **More ()** icon next to the desired API reference for which you want to download the API reference.
6. Click **Download API reference**.
	The latest version of the API reference file will be downloaded to your local storage.
	![Menu options for Document360 API references, highlighting the download option.](https://cdn.document360.io/860f9f88-412e-4570-8222-d5bf2f4b7dd1/Images/Documentation/image-1771842881779.png)

> NOTE
> 
> To download the API files, ensure that the **Show download API reference** toggle in the Knowledge base portal settings is turned on.

![](https://cdn.document360.io/860f9f88-412e-4570-8222-d5bf2f4b7dd1/Images/Documentation/Article-settings&SEO.png)

---

### FAQ

#### Can I keep the generated API documentation in the draft state?

After uploading the API reference file, if you click **Close** instead of **Publish**, all the generated API documentation articles are kept in the draft state.

#### Why does the Try it button URL include tryit.document360.io?

When you click the **Try it & see response** button in API documentation, the request URL will include `tryit.document360.io` prepended to your API's base URL (for example, `https://tryit.document360.io/https://apihub.document360.io/v2/ProjectVersions`). This is the expected behavior. The `tryit.document360.io` subdomain is used internally to route and process API test requests. This does not affect the functionality or the response, requests will still return the correct results as normal.

#### How do I see the published status for all available languages?

Set the `isPublished` parameter to false when retrieving articles, categories, or documents. This returns every language the article exists in, including languages that only have a draft and have never been published. This gives you a complete view of all languages and their publish states for that content.

The languages listed under Available Languages depend on whether you are filtering for published content or all content using the `isPublished ` parameter.

- Published content only (`isPublished` =true): Shows only languages where the article has been published at least once, including languages that have a newer draft on top of an existing published version.
- All content (`isPublished` =false): Shows every language the article exists in, including languages that only have a draft and have never been published.

For example,

<table width="536"><colgroup><col> <col></colgroup><tbody><tr><th colspan="1" rowspan="1"><p>Language</p></th><th colspan="1" rowspan="1"><p>Status</p></th></tr><tr><td colspan="1" rowspan="1"><p>French, German, Japanese</p></td><td colspan="1" rowspan="1"><p>Published</p></td></tr><tr><td colspan="1" rowspan="1"><p>Czech</p></td><td colspan="1" rowspan="1"><p>Published, but has a newer draft</p></td></tr><tr><td colspan="1" rowspan="1"><p>Spanish, Portuguese</p></td><td colspan="1" rowspan="1"><p>Draft only — never published</p></td></tr></tbody></table>

- If `isPublished ` = true: Available Languages: French, German, Japanese, Czech
- If `isPublished ` = false: Available Languages: French, German, Japanese, Czech, Spanish, Portuguese

This applies when retrieving endpoints, articles, categories, and documents.

#### Can readers still access Knowledge base site during Document360 portal downtime?

Yes. GET calls of the Customer API now run independently of the Document360 portal, so your readers can continue accessing the site even during scheduled maintenance or portal downtime.

#### Can I move a specific API endpoint article from one API reference folder to another in Document360?

No, it is not possible to move a specific API endpoint article from one API reference folder to another. However, you can move API endpoint articles between subfolders within the same API reference folder.

#### Can an article from the API documentation have the same URL as a Knowledge base article?

No, a knowledge base article and an API documentation article cannot have the same URL. However, you can keep them under the same subdomain.

#### How often is an API reference file resynced?

If you generated your API documentation from a URL or a JSON, YAML, or YML file, the API reference file is not resynced automatically and will need to be updated manually. To have the API reference file resynced automatically, it is recommended to integrate it with the CI/CD flow.

#### Why am I getting a 403 error when posting details through the API endpoint?

A 403 error occurs when you attempt to post details through the API endpoint. This happens when the API token used does not have the required permission to make a POST request. Ensure that the API token has the necessary permissions for POST requests. Update the token settings and try again.

#### How many levels of categories are supported in an API documentation workspace?

The API documentation workspace supports up to three levels of subcategories. If your API specification includes more than three levels, any additional levels will be added and displayed at the third level to maintain a consistent structure.

#### Can I create nested folders in my API documentation automatically from the spec file?

Yes, the API documentation spec file allows you to create nested folders (second-level subcategories) using the `>` symbol in the tags specified within the OpenAPI spec file (e.g., `Pets > Details`). This enables a well-organized, hierarchical structure of your API endpoints, maintains the hierarchy during resync, and ensures proper display and navigation in the left panel of the API reference.

#### Can I download articles as PDFs using the API?

Currently, there is no option to download articles as PDFs through the API endpoints.

## Link to analysis files

After extraction, use this raw source in:

- `05_portfolio/cases/document360-api-workspace-behavior-model/source-log.md`
- `05_portfolio/cases/document360-api-workspace-behavior-model/extraction-notes.md`
- `05_portfolio/cases/document360-api-workspace-behavior-model/behavior-matrix.md`
- `05_portfolio/cases/document360-api-workspace-behavior-model/dependency-map.md`
