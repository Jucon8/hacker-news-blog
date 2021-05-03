<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Posteo;
use Http;
class IndexController extends Controller
{
        public function index()
    {
        // API HACKER NEWS
        $newStories = Http::get('https://hacker-news.firebaseio.com/v0/newstories.json');
        $stories = $newStories->json();
        $items=array_slice($stories, 0, 10);
        if (!empty($items)){
            foreach ($items as $item)
                {
            $item_res = Http::get("https://hacker-news.firebaseio.com/v0/item/".$item.".json");
            $item_data [] = $item_res->json();
            }
        }
        return view('welcome', compact('item_data'));
    }
}
