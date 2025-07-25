Class Search.Page.SearchApplication Extends %ZEN.Component.page [ Language = objectscript ]
{

/// The class name of the application to which this page belongs.
Parameter APPLICATION;

/// This style block contains page specific CSS style definitions.
XData Style
{
<style type="text/css">

</style>
}

/// This XML block defines the content of this page
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
<page xmlns="http://www.intersystems.com/zen" title="Message Search">
	<html id="description"  OnDrawContent="DrawContent"/>
</page>
}

Method DrawContent(pSeed As %String) As %Status
{
	
	
	Set columnOptions11 = ##class(Search.Service.SearchService).GetSearchColumn()
    Set columnOptionsStr =columnOptions11.%ToJSON()

	&html<
   <!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Message Search</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Select2 -->
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            padding: 20px;
            font-family: 'Segoe UI', Tahoma, sans-serif;
        }
        .container {
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            padding: 25px;
            max-width: 1400px;
            margin: 0 auto;
        }
        .header {
            margin-bottom: 25px;
            padding-bottom: 15px;
            border-bottom: 1px solid #dee2e6;
        }
        .query-row {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
            gap: 10px;
        }
        .condition-container {
            background: #f8f9fa;
            border-radius: 6px;
            padding: 20px;
            margin-bottom: 20px;
        }
        .table-container {
            overflow-x: auto;
            margin-top: 20px;
        }
        .pagination-container {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        .status-badge {
            padding: 4px 8px;
            border-radius: 12px;
            font-size: 12px;
        }
        .status-success {
            background-color: #d4edda;
            color: #155724;
        }
        .status-error {
            background-color: #f8d7da;
            color: #721c24;
        }
        .select2-container {
            width: 250px !important;
        }
        .loading-overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(255, 255, 255, 0.8);
            z-index: 9999;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        .spinner {
            border: 4px solid rgba(0, 0, 0, 0.1);
            border-left: 4px solid #3498db;
            border-radius: 50%;
            width: 40px;
            height: 40px;
            animation: spin 1s linear infinite;
        }
        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1 class="text-primary">Message Search</h1>
        </div>
        
        <div class="condition-container">
            <h4 class="mb-3">Query Conditions</h4>
            <div id="query-rows">
                <div class="query-row">
                    <select class="form-select field-select" style="width:250px"></select>
                    <input type="text" class="form-control value-input" placeholder="Enter a value..." style="width:200px">
                    <button class="btn btn-danger remove-btn" style="display:none">
                        <i class="bi bi-x-lg"></i>
                    </button>
                </div>
            </div>
            
            <div class="d-flex align-items-center mt-3">
                <button id="add-condition" class="btn btn-success me-2">
                    <i class="bi bi-plus-lg"></i> Add Conditions
                </button>
                <button id="search-btn" class="btn btn-primary">
                    <i class="bi bi-search"></i> Search
                </button>
            </div>
        </div>
        
        <div class="d-flex justify-content-between align-items-center mb-3">
            <h4>Query Results</h4>
            <div class="text-muted" id="total-count">total 0 records</div>
        </div>
        
        <div class="table-container">
            <table class="table table-hover table-striped">
                <thead class="table-light">
                    <tr>
                        <th>ID</th>
                        <th>Session ID</th>
                        <th>Status</th>
                        <th>Error</th>
                        <th>Source</th>
                        <th>Target</th>
                        <th>Time Created</th>
                    </tr>
                </thead>
                <tbody id="results-table">
                    <!-- The data will be dynamically populated by JavaScript-->
                </tbody>
            </table>
        </div>
        
        <div class="pagination-container">
            <nav>
                <ul class="pagination" id="pagination-controls">
                    <!-- The pagination control will be dynamically generated via JavaScript -->
                </ul>
            </nav>
        </div>
    </div>
    
    <!-- Load animations -->
    <div class="loading-overlay" id="loading-overlay">
        <div class="spinner"></div>
        <p class="mt-3">Loading data...</p>
    </div>

    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

    <script type="text/javascript">

 

        // Pagination status management
        const paginationState = {
            currentPage: 1,
            pageSize: 10,
            totalItems: 0,
            totalPages: 0
        };
        
        var columnOptionsStr ='#(columnOptionsStr)#'
        var columnOptions = JSON.parse(columnOptionsStr);

    
        // Initialize the page
         $(document).ready(function() {
            
            $('#query-rows').empty();
            
            $('#add-condition').click(function() {
                addConditionRow();
            });
            
            $('#search-btn').click(searchData);
            
            addConditionRow();
        });

        
        function initSelectBox(selectElement) {
            selectElement.select2({
                data: columnOptions.map(opt => ({
                    id: opt.id,
                    text: opt.column
                })),
                placeholder: "Select a field",
                allowClear: true
            });
        }

       function addConditionRow() {
           
            const $newRow = $(`
                <div class="query-row">
                    <select class="form-select field-select" style="width:250px"></select>
                    <input type="text" class="form-control value-input" placeholder="Enter the value..." style="width:200px">
                    <button class="btn btn-danger remove-btn">
                        <i class="bi bi-x-lg"></i>
                    </button>
                </div>
            `);
            
            // Initialize drop-down box
            initSelectBox($newRow.find('.field-select'));
            
            // Add delete events
            $newRow.find('.remove-btn').click(function() {
                $(this).closest('.query-row').remove();
                updateRemoveButtonVisibility();
            });
            
            // Add to container
            $('#query-rows').append($newRow);
            updateRemoveButtonVisibility();
        }

        
        function updateRemoveButtonVisibility() {
            const $rows = $('.query-row');
            $rows.find('.remove-btn').toggle($rows.length > 1);
        }

    

        // Collect query conditions
        function getQueryConditions() {
            const conditions = [];
            
            $('.query-row').each(function() {
                const $select = $(this).find('.field-select');
                const $input = $(this).find('.value-input');
                
                
                if ($select.val() && $input.val().trim()) {
                    conditions.push({
                        
                        column: $select.select2('data')[0].text,
                        value: $input.val().trim()
                    });
                }
            });
            
            return conditions;
        }

        // Display the loading animation
        function showLoading(show) {
            $('#loading-overlay').css('display', show ? 'flex' : 'none');
        }

        // Perform a search
        function searchData() {
            // Reset to the first page
            paginationState.currentPage = 1;
            
            // Get query criteria
            const conditions = getQueryConditions();
            
            // Displays the loading status
            showLoading(true);
            
            
            setTimeout(() => {
                
                const mockData = generateMockData(conditions);
                renderTable(mockData.data);
                
                
                $('#total-count').text(`total ${mockData.total} records`);
                paginationState.totalItems = mockData.total;
                paginationState.totalPages = Math.ceil(mockData.total / paginationState.pageSize);
                renderPagination();
                showLoading(false);
            }, 800);
        }

        
        function loadPage(page) {
            paginationState.currentPage = page;
            
           const conditions = getQueryConditions();
            
            showLoading(true);
            
            setTimeout(() => {
                const mockData = generateMockData(conditions);
                renderTable(mockData.data);
                
                renderPagination();
                
                showLoading(false);
            }, 500);
        }

        
        function generateMockData(conditions) {
           
            var totalItems = 0;
            var datastring =zenPage.SearchService(paginationState.currentPage, paginationState.pageSize, JSON.stringify(conditions))
            var resobj = JSON.parse(datastring);
            var data = [];
            data = resobj.data;
            totalItems = resobj.total;
            return {
                data: data,
                total: totalItems
            };
        }
  
      
        function renderTable(data) {
            const $tbody = $('#results-table');
            $tbody.empty();
            
            if (data.length === 0) {
                $tbody.append('<tr><td colspan="7" class="text-center py-4">No matching data found</td></tr>');
                return;
            }
            
            data.forEach(item => {
                const statusClass = item.Status === 9 ? 'status-success' : 'status-error';
               
                const statusMap = {
                                1: 'Created',
                                2: 'Queued',
                                3: 'Delivered',
                                4: 'Discarded',
                                5: 'Suspended',
                                6: 'Deferred',
                                7: 'Aborted',
                                8: 'Error',
                                9: 'Completed'
                            };
                const statusText = statusMap[item.Status] || 'unknown status'; // Prevent undefined status codes
                var fullUrl = window.location.href;
                var baseUrl =fullUrl.split("Search.Page.SearchApplication.cls")[0]

                $tbody.append(`
                    <tr>
                        <td>${item.id}</td>
                        
                        <td>
                            <a href="${baseUrl}EnsPortal.VisualTrace.zen?SESSIONID=${item.SessionId}" target="_blank"> 
                            ${item.SessionId}
                            </a>
                        </td>
                        <td><span class="status-badge ${statusClass}">${statusText}</span></td>
                        <td>${item.Error}</td>
                        <td>${item.SourceConfigName}</td>
                        <td>${item.TargetConfigName}</td>
                        <td>${item.TimeCreated}</td>
                    </tr>
                `);
            });
        }

        
        function renderPagination() {
            const $pagination = $('#pagination-controls');
            $pagination.empty();
            
            
            const prevDisabled = paginationState.currentPage === 1 ? 'disabled' : '';
            $pagination.append(`
                <li class="page-item ${prevDisabled}">
                    <a class="page-link" href="#" onclick="loadPage(${paginationState.currentPage - 1})">Previous</a>
                </li>
            `);
            
            
            const startPage = Math.max(1, paginationState.currentPage - 2);
            const endPage = Math.min(paginationState.totalPages, startPage + 4);
            
            
            for (let i = startPage; i <= endPage; i++) {
                const active = i === paginationState.currentPage ? 'active' : '';
                $pagination.append(`
                    <li class="page-item ${active}">
                        <a class="page-link" href="#" onclick="loadPage(${i})">${i}</a>
                    </li>
                `);
            }
            
            
            const nextDisabled = paginationState.currentPage === paginationState.totalPages ? 'disabled' : '';
            $pagination.append(`
                <li class="page-item ${nextDisabled}">
                    <a class="page-link" href="#" onclick="loadPage(${paginationState.currentPage + 1})">Next</a>
                </li>
            `);
            
            
            $pagination.append(`
                <li class="page-item disabled">
                    <span class="page-link">${paginationState.currentPage} / ${paginationState.totalPages}</span>
                </li>
            `);
        }
    </script>
</body>
</html>
	>
	Quit $$$OK
}

ClassMethod SearchService(Page, Size, SearchType) As %Status [ ZenMethod ]
{
    Set SearchType =##class(%DynamicObject).%FromJSON(SearchType)
    Set str = ##class(Search.Service.SearchService).SearchService(Page, Size, SearchType).%ToJSON()
    QUIT str
}

}
