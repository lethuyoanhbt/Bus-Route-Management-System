<?php 
/** 
 * The ExtendableBehavior allows a model to record its "type" into the database 
 * table.  If you created a model and then created another model which inherits 
 * from the model you previously created, then the extending class' model name 
 * will be recorded in the database table's designated `type' column. 
 * 
 * You must apply this behavior through the $actsAs property on your model, and 
 * any children models must define a $useTable property that corresponds to their 
 * parent, otherwise finding/saving will not work. 
 * 
 * The only possible configuration option this behavior accepts is the 
 * `typeField' key, which should be named something to your liking. By default 
 * this will be set to 'type'. 
 * 
 * @author Matthew Harris <shugotenshi@gmail.com> 
 * @license    http://www.opensource.org/licenses/mit-license.php The MIT License 
 */ 
class ExtendableBehavior extends ModelBehavior { 
    /** 
     * The most root class that has extended AppModel.  This class acts as 
     * the parent and doesn't have its `type' recorded in the table. 
     * 
     * @var string 
     */ 
    var $rootClass; 
     
    /** 
     * The name of the type column, default 'type' 
     * 
     * @var string 
     */ 
    var $typeField; 
     
    /** 
     * Set up the behavior. 
     * Finds root class and determines type field settings. 
     */ 
    function setup(&$model, $config = array()) { 
        $this->settings  = am(array('typeField' => 'type'), $config); 
        $this->rootClass = $this->__getRootClassName($model); 
        $this->typeField = $this->settings['typeField']; 
    } 
     
    /** 
     * Filter query conditions with the correct `type' field condition. 
     */ 
    function beforeFind(&$model, $queryData) 
    {
        if (array_key_exists($this->typeField, $model->_schema) && $model->alias != $this->rootClass) {
            if (!isset($queryData['conditions'])) {
                $queryData['conditions'] = array();
            }
            
            if (is_string($queryData['conditions'])) {
                if (strlen(trim($queryData['conditions']))) {
                    $queryData['conditions'] = "({$queryData['conditions']}) AND ";
                }
                $queryData['conditions'] .= $this->alias.'.'.$this->type.' = '.$this->value($model->alias);
            }
            elseif (is_array($queryData['conditions'])) { 
                if (!isset($queryData['conditions'][$model->alias.'.'.$this->typeField])) {
                    $queryData['conditions'][$model->alias.'.'.$this->typeField] = array(); 
                }
                $queryData['conditions'][$model->alias.'.'.$this->typeField] = $model->alias;
            }
             
        }
        return $queryData; 
    } 
     
    /** 
     * Set the `type' field before saving the record. 
     */ 
    function beforeSave(&$model) 
    { 
        if (array_key_exists($this->typeField, $model->_schema) && $model->alias != $this->rootClass) { 
            if (!isset($model->data[$model->alias])) { 
                $model->data[$model->alias] = array(); 
            } 
            $model->data[$model->alias][$this->typeField] = $model->alias; 
        } 
        return true; 
    } 
     
    /** 
     * Get the uppermost parent class name that an extending model inherits from. 
     * This does not include AppModel, that's where the search stops. 
     * 
     * @return string Parent class name 
     */ 
    function __getRootClassName(&$model) 
    { 
        $parent = $current = get_class($model); 
         
        while (strtolower($current) != 'appmodel') { 
            $parent  = $current; 
            $current = get_parent_class($current); 
        } 
        return $parent; 
    } 
} 
?> 