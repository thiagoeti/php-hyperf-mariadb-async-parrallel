<?php

Router::addRoute(['GET', 'POST'], '/family', 'App\Controller\ControllerFamily@data');
Router::addRoute(['GET', 'POST'], '/family/mount', 'App\Controller\ControllerFamily@mount');
