//
//  Channels.swift
//  InternetTV App
//
//  Created by Hasani on 10/13/17.
//  Copyright © 2017 Hasani Mason. All rights reserved.
//

//Class to give dynamic list of channels
class Channels
{
    static var volume = Float(0.1)
    
    static var tv_channels = ["UCSD": "http://ucsdtv-wowza.ucsd.edu:1935/live/live_800/playlist.m3u8",
                           "WGN" : "http://wgntribune-lh.akamaihd.net/i/WGNPrimary_1@304622/index_350_av-p.m3u8",
                           "KTUV2" : "http://play-prod1.live.anvato.net/server/play/ktvutestctg/master.m3u8",
                           "WXIN" : "http://wxintribune-lh.akamaihd.net/i/WXINTribune_1@120151/master.m3u8",
                           "France24" : "http://static.france24.com/live/F24_EN_LO_HLS/live_web.m3u8",
                           "CSPAN-1" : "http://cspan1-lh.akamaihd.net/i/cspan1_1@304727/index_1000_av-p.m3u8",
                           "CSPAN-2" : "http://cspan2-lh.akamaihd.net/i/cspan2_1@304728/index_1000_av-p.m3u8",
                           "CSPAN-3" : "http://cspan3-lh.akamaihd.net/i/cspan3_1@304729/index_1000_av-p.m3u8",
                           "LondonTV" : "http://bcoveliveios-i.akamaihd.net/hls/live/217434/3083279840001/master_900.m3u8",
                           "RussianTV" : "http://rt.ashttp14.visionip.tv/live/rt-doc-live-HD/playlist.m3u8"]
}
