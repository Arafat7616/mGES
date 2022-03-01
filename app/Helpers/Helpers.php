<?php

use App\StaticOption;

if (!function_exists('random_code')) {

    function set_static_option($key, $value)
    {
        if (!StaticOption::where('option_name', $key)->first()) {
            StaticOption::create([
                'option_name' => $key,
                'option_value' => $value
            ]);
            return true;
        }
        return false;
    }

    function update_static_option($key, $value)
    {
        if (!StaticOption::where('option_name', $key)->first()) {
            StaticOption::create([
                'option_name' => $key,
                'option_value' => $value
            ]);
            return true;
        } else {
            StaticOption::where('option_name', $key)->update([
                'option_name' => $key,
                'option_value' => $value
            ]);
            return true;
        }
        return false;
    }

    function get_static_option($key)
    {
        if (StaticOption::where('option_name', $key)->first()) {
            $return_val = StaticOption::where('option_name', $key)->first();
            return $return_val->option_value;
        }
        return null;
    }

    function set_env_value(array $values)
    {
        $envFile = app()->environmentFilePath();
        $str = file_get_contents($envFile);
        if (count($values) > 0) {
            foreach ($values as $envKey => $envValue) {
                $str .= "\n"; // In case the searched variable is in the last line without \n
                $keyPosition = strpos($str, "{$envKey}=");
                $endOfLinePosition = strpos($str, "\n", $keyPosition);
                $oldLine = substr($str, $keyPosition, $endOfLinePosition - $keyPosition);
                // If key does not exist, add it
                if (!$keyPosition || !$endOfLinePosition || !$oldLine) {
                    $str .= "{$envKey}={$envValue}\n";
                } else {
                    $str = str_replace($oldLine, "{$envKey}={$envValue}", $str);
                }
            }
        }

        $str = substr($str, 0, -1);
        if (!file_put_contents($envFile, $str)) return false;
        return true;
    }

    function send_sms($message, $phone)
    {

        // app name given in here
       // $app_name = env('APP_NAME');
        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => 'https://api.sms.net.bd/sendsms',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => array(
                'api_key' => 'l2Phx0d2M8Pd8OLKuuM1K3XZVY3Ln78jUWzoz7xO',
                'msg' => nl2br($message),
                'to' => $phone
            ),
        ));
        $response = curl_exec($curl);

        curl_close($curl);
    }
    // function downloadExcel($view, $data, $name, $type)
    // {
    //     return \Excel::download(new \App\Exports\Excel($view, $data), $name . '(' . date('F j,Y g:i a') . ')' . '.' . $type);
    // }

    function is_save($object, $message)
    {
        if ($object) {
            success($message);
            return redirect()->back();
        }

        whoops();
        return redirect()->back();
    }

    function success($message = 'Your operation has been done successfully')
    {
        session()->flash('success', $message);
    }

    function whoops($message = 'Whoops! Something went Wrong!')
    {
        session()->flash('danger', $message);
    }
}
