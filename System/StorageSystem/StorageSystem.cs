using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using CrawlerNameSpace.Utilities;


namespace CrawlerNameSpace.StorageSystem
{
    /**
     * This class is responsible for mainting all the requests to the database. This class
     * serves as database proxy so it can do some caching from the database. it also handles 
     * all the connections with the database, so every other system needs information stored
     * in the database should request it via this proxy system.
     */
    public class StorageSystem : ConfigurationStorage, CategoriesStorage, SettingsStorage, ResultsStorage
    {
        // reference to the singleton instance
        static private StorageSystem _storageSystem = new StorageSystem();

        // attributes which implemnts all the required functionality for the storage system
        private ConfigurationStorageImp _configurationStorageImp;
        private CategoriesStorageImp _categoriesStorageImp;
        private SettingsStorageImp _settingsStorageImp;
        private ResultsStorageImp _resultsStorageImp;

        /**
         * protected c'tor because this class is singleton
         */ 
        protected StorageSystem()
        {
            _configurationStorageImp = new ConfigurationStorageImp();
            _categoriesStorageImp = new CategoriesStorageImp();
            _settingsStorageImp = new SettingsStorageImp();
            _resultsStorageImp = new ResultsStorageImp();
        }

        /**
         * returns the singelton instance
         */
        public static StorageSystem getInstance()
        {
            return _storageSystem;
        }

        /**
         * returns the task status which suits the query
         */
        public List<TaskStatus> getWorkDetails(String userID, QueryOption option)
        {
            return _configurationStorageImp.getWorkDetails(userID, option);
        }
        
        /**
         * creates work resources for the specified user and returns it's identity
         */
        public String createWorkResources(String userID, String taskName)
        {
            return _configurationStorageImp.createWorkResources(userID, taskName);
        }

        /**
         * releases the data related to the specified task
         */
        public void releaseWorkResources(String taskId)
        {
            _configurationStorageImp.releaseWorkResources(taskId);
        }

        /**
         * changes the task status details for the specified task
         */
        public void changeWorkDetails(TaskStatus status)
        {
            _configurationStorageImp.changeWorkDetails(status);
        }

        /**
         * returns the category list of the specified task
         */
        public List<Category> getCategories(String taskId)
        {
            return _categoriesStorageImp.getCategories(taskId);
        }

        /**
         * sets the categories for the task id to the specified list
         */
        public void setCategories(String taskId, List<Category> categoryList)
        {
            _categoriesStorageImp.setCategories(taskId, categoryList);
        }

        /**
         * This method link between the parent node and it's son
         */
        public void setParentToSon(String parentID, String sonID)
        {
            _categoriesStorageImp.setParentToSon(parentID, sonID);
        }

        /**
         * gets all the restrictions which was attached to the given task.
         */
        public Constraints getRestrictions(String taskId)
        {
            return _settingsStorageImp.getRestrictions(taskId);
        }

        /**
         * set a new work restriction which will be activited in the next run
         */
        public void setRestrictions(String taskId, Constraints constrains)
        {
            _settingsStorageImp.setRestrictions(taskId, constrains);
        }

        /**
         * gets the seeds list from the storage for the specified task. 
         */
        public List<String> getSeedList(String taskId)
        {
            return _settingsStorageImp.getSeedList(taskId);
        }

        /**
         * sets the seeds list for a given task
         */
        public void setSeedList(String taskId, List<String> seeds)
        {
            _settingsStorageImp.setSeedList(taskId, seeds);
        }

        /**
         * sets the specified property in the database with the new specified value
         */
        public void setProperty(String taskId, String property, String value)
        {
            _settingsStorageImp.setProperty(taskId, property, value);
        }

        /**
         * returns the property value; null in case property not found
         */
        public String getProperty(String taskId, String property)
        {
            return _settingsStorageImp.getProperty(taskId, property);
        }

        /**
         * This function gets results of url in a given task
         */
        public List<Result> getURLResults(String taskId, String url)
        {
            return _resultsStorageImp.getURLResults(taskId, url);
        }

        /**
         * This function returns a list of urls which suits a specific category.
         */
        public List<Result> getURLsFromCategory(String taskId, String categoryId, Order order, int from, int to)
        {
            return _resultsStorageImp.getURLsFromCategory(taskId, categoryId, order, from, to);
        }

        /**
         * This function returns the number of the urls which already has been crawled.
         */
        public ulong getTotalURLs(String taskId, String categoryId)
        {
            return _resultsStorageImp.getTotalURLs(taskId, categoryId);
        }

        /**
         * replaces the URL result to the new one (and it's fathers).
         */
        public void replaceURLResult(String taskId, Result oldResult, Result newResult)
        {
            _resultsStorageImp.replaceURLResult(taskId, oldResult, newResult);
        }

        /**
         * removes one entry of the URL result, which specified in the given argument.
         */
        public void removeURLResult(Result result)
        {
            _resultsStorageImp.removeURLResult(result);
        }

        /**
         * removes all the entries of the specified task, which specified in the given argument.
         */
        public void removeAllResults(String taskID)
        {
            _resultsStorageImp.removeAllResults(taskID);
        }

        /**
         * This function adds the URL result to the given categories (and it's fathers).
         */
        public void addURLResult(String taskId, Result result)
        {
            _resultsStorageImp.addURLResult(taskId, result);
        }

        public static void Main(String[] args)
        {
            StorageSystemTest.MainTest();
        }
    }
}

