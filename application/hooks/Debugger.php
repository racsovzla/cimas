<?php

class Debugger {
    
    function __construct() {
        
        $this->CI = &get_instance();
        
    }

    function render($mostrar=false) {

        if ($mostrar) {

            $this->CI->output->enable_profiler(true);
        }
    }

}

?>
