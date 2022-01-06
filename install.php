<?php

// Unlink redundant file
if (file_exists(DIR_SYSTEM . 'zoodpay.ocmod.xml') && is_writable(DIR_SYSTEM . 'zoodpay.ocmod.xml')) {
    unlink(DIR_SYSTEM . 'zoodpay.ocmod.xml');
}

// ZoodPay OCMOD installer.

$this->load->model('extension/modification');

if (VERSION == '2.0.0.0') {
    $zoodpay_install_dir = DIR_DOWNLOAD . str_replace(array('../', '..\\', '..'), '', $this->request->post['path']);
} else {
    $zoodpay_install_dir = DIR_UPLOAD . str_replace(array('../', '..\\', '..'), '', $this->request->post['path']);
}

$zoodpay_ocmod_dir = $zoodpay_install_dir . '/_ocmod';

$zoodpay_ocmod_files = scandir($zoodpay_ocmod_dir);

foreach ($zoodpay_ocmod_files as $zoodpay_ocmod_file) {
    if (in_array($zoodpay_ocmod_file, array('.', '..'))) continue;

    $zoodpay_xml_file = $zoodpay_ocmod_dir . DIRECTORY_SEPARATOR . $zoodpay_ocmod_file;
    $zoodpay_xml_contents = file_get_contents($zoodpay_xml_file);

    if (method_exists($this->model_extension_modification, 'getModificationByCode')) {
        $zoodpay_dom = new DOMDocument('1.0', 'UTF-8');
        $zoodpay_dom->loadXml($zoodpay_xml_contents);

        $zoodpay_code_item = $zoodpay_dom->getElementsByTagName('code')->item(0);

        if ($zoodpay_code_item) {
            $zoodpay_code = $zoodpay_code_item->nodeValue;

            $zoodpay_modification = $this->model_extension_modification->getModificationByCode($zoodpay_code);

            if (!empty($zoodpay_modification)) {
                $this->model_extension_modification->deleteModification($zoodpay_modification['modification_id']);
            }
        }
    }

    file_put_contents($zoodpay_install_dir . '/install.xml', $zoodpay_xml_contents);

    $this->xml();
}