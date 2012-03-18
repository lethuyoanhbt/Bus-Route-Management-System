<?php
class LogUtilComponent extends Object {
    const LOG_TYPE_INFO=0;
    const LOG_TYPE_WARRING=1;
    const LOG_TYPE_ERROR=2;    
    
    var $components = array('Auth');        
    /**
     * The name of the model that represents log datasource.  Defaults to 'User'.
     *
     * @var string
     * @access public
     */
    var $logModel = 'Log';
        
    /**
     * Parameter data from Auth::$user
     *
     * @var array
     * @access public
     */
    var $user = array();
    
    /**
     * Parameter data from Controller::$params
     *
     * @var array
     * @access public
     */
    var $params = array();
    
    function startup(&$controller){        
        $this->params = $controller->params;
        $this->user=$this->Auth->user('id');
        
    }
    
    /**
     * get parameters from <code>$this->params['pass']</code>
     *
     * @return string, parameter which pass from url.
     */
    function __getParameters(){
        $parameters='';
        if (!empty($this->params['pass'])){
            foreach ($this->params['pass'] as $param){
                $parameters.=$param.'/';
            }
        }
        return $parameters;
    }
    /**
     * Add one log to the log table.
     * parameters in <code>$options</code> can be:
     * <ul>
     *         <li>description: the value of this key insert instedof description field</li>
     *         <li>type: Determine type of log which could be info ,warring or error.They show by one number</li>
     *         <li>params: The value of this key insert instedof params field.By default it's user parameters</li>
     * </ul>
     *
     * @param array $options.
     * @param string $action
     * @param string $controller
     */
    function log($options=array(),$action=null,$controller=null){
        $params=$this->__getParameters();
        $action = (!empty($action)) ? $action :  $this->params['action'];
        $controller = (!empty($controller)) ? $controller :  $this->params['controller'];
        
        $options=array_merge(array('description'=>'','type'=>LogUtilComponent::LOG_TYPE_INFO,'params'=>$params),$options);
        
        $data['Log']['controller']=$controller;        
        $data['Log']['action']=$action;        
        $data['Log']['params']=$options['params'];        
        $data['Log']['description']=$options['description'];                
        $data['Log']['type']=$options['type'];
        $data['Log']['url']=$this->params['url']['url'];
        $data['Log']['user_id']=(!empty($this->user) ? $this->user : 0);
        
        $logModel= & $this->__getModel();
        $logModel->create();
        $logModel->save($data);
    }
    
    /**
     * Returns a reference to the model object specified, and attempts
     * to load it if it is not found.
     *
     * @param string $name Model name (defaults to LogUtilComponent::$logModel)
     * @return object A reference to a model object
     * @access public
     */
    private function &__getModel($name = null) {
        $model = null;
        if (!$name) {
            $name = $this->logModel;
        }

        if (PHP5) {
            $model = ClassRegistry::init($name);
        } else {
            $model =& ClassRegistry::init($name);
        }

        if (empty($model)) {
            trigger_error(__('Log::getModel() - Model is not set or could not be found', true), E_USER_WARNING);
            return null;
        }

        return $model;
    }    
}
?>