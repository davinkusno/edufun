# **EduFun: Laravel-Based Learning Platform**

EduFun is a web-based learning platform designed to share knowledge and insights about **Data Science** and **Network Security**. Built with Laravel, it provides functionality for article publishing, categorization, and managing writers.  

---

## **Features**

- **Homepage**: Displays the 2 newest articles dynamically.  
- **Categories**:  
  - Dropdown menu in the navigation bar for "Data Science" and "Network Security."  
  - Displays articles filtered by the selected category.  
- **Articles**:  
  - View articles with title, content, published date, writer, and category.  
- **Writers**:  
  - List of all writers with their specialties.  
  - View articles by a specific writer.  
- **About Us Page**: Provides an overview of the platform.
- **Popular Page**: Displays most viewed articles dynamically. 

---

## **Database Overview**

1. **Writers Table**:  
   Stores details of article writers (e.g., name, specialty).  

2. **Categories Table**:  
   Predefined categories: "Data Science" and "Network Security."  

3. **Articles Table**:  
   Stores article details, including title, content, published date, writer, and category.

---

## **Key Relationships**

- **Articles → Writers**:  
  - An article belongs to a writer.  
  - A writer can have multiple articles.  

- **Articles → Categories**:  
  - An article belongs to a category.  
  - A category can have multiple articles.  

---

## **Page Structure**

1. **/**:  
   - Displays the 2 newest articles with a clean and responsive design.  

2. **/category/{category}**:  
   - Displays articles filtered by either "Data Science" or "Network Security."  

3. **/article/{id}**:  
   - Shows a single article's title, content, writer, and category information.  

4. **/writers**:  
   - Lists all writers and their specialties.  

5. **/about**:  
   - A static page explaining the purpose and mission of the platform.

6. **/popular**:  
   -Displays the most viewed articles with a clean and responsive design. 

---

### **Methods in the `ArticleController`**

1. ### **`home()`**
   - **Purpose**: Displays the homepage with the 2 newest articles.
   - **Functionality**: 
     - Fetches the 2 most recent articles using `latest()` and `take(2)`.
     - Uses `with(['writer', 'category'])` to eager load the `writer` and `category` relationships, reducing database queries.
   - **View**: Passes the articles to the `home` view.

   **Key Code**:
   ```php
   $articles = Article::with(['writer', 'category'])->latest()->take(2)->get();
   ```

---

2. ### **`showArticle($id)`**
   - **Purpose**: Displays a single article's details.
   - **Functionality**:
     - Fetches the article by ID, eager loading the `writer` and `category` relationships.
     - If the article is not found, it throws a `404` error using `findOrFail()`.
     - Increments the `views` count for the article each time it is viewed.
   - **View**: Passes the article to the `article` view.

   **Key Code**:
   ```php
   $article = Article::with(['writer', 'category'])->findOrFail($id);
   $article->increment('views');
   ```

---

3. ### **`showCategory($category)`**
   - **Purpose**: Displays all articles belonging to a specific category.
   - **Functionality**:
     - Converts the `category` slug (e.g., "data-science") into a readable format ("Data Science") using `str_replace()`.
     - Retrieves the category using its name.
     - Fetches all articles in the category, eager loading the `writer` relationship, sorted by the latest articles.
     - Paginates the results with 3 articles per page.
   - **View**: Passes the category and articles to the `categories` view.

   **Key Code**:
   ```php
   $categoryModel = Category::where('name', $categoryName)->firstOrFail();
   $articles = Article::where('category_id', $categoryModel->id)
       ->with('writer')
       ->latest()
       ->paginate(3);
   ```

---

4. ### **`showAllWriters()`**
   - **Purpose**: Displays a list of all writers.
   - **Functionality**:
     - Fetches all writers from the database.
   - **View**: Passes the list of writers to the `writers` view.

   **Key Code**:
   ```php
   $writers = Writer::all();
   ```

---

5. ### **`about()`**
   - **Purpose**: Displays the "About Us" page.
   - **Functionality**:
     - Simply returns the `about` view. This is a static page.

   **Key Code**:
   ```php
   return view('about');
   ```

---

6. ### **`showPopular()`**
   - **Purpose**: Displays the most popular articles based on the number of views.
   - **Functionality**:
     - Retrieves articles ordered by the `views` column in descending order.
     - Eager loads the `writer` and `category` relationships.
     - Paginates the results with 5 articles per page.
   - **View**: Passes the popular articles to the `popular` view.

   **Key Code**:
   ```php
   $articles = Article::with(['writer', 'category'])
       ->orderBy('views', 'desc')
       ->paginate(5);
   ```

---

### **Summary of Eloquent Relationships**

- **`with(['writer', 'category'])`**: Ensures the `writer` and `category` data are loaded along with the article, optimizing database queries by avoiding the N+1 problem.
- **Pagination**:
  - Used in `showCategory` and `showPopular` to limit the number of articles displayed per page.

---

### **Views**

Each method is tied to a specific view:
- **`home()`** → `home.blade.php`
- **`showArticle()`** → `article.blade.php`
- **`showCategory()`** → `categories.blade.php`
- **`showAllWriters()`** → `writers.blade.php`
- **`about()`** → `about.blade.php`
- **`showPopular()`** → `popular.blade.php`
