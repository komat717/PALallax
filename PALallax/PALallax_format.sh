#! /bin/bash

curl -XPUT localhost:9200/_template/template_01 -d '
{
  "template" : "palo_syslog_*",
  "settings" : {
    "number_of_shards" : 5,
    "number_of_replicas" : 0
  },
  "mappings" : {
    "_default_" : {
     "properties": {
        "hostname": {"type":"string","index":"not_analyzed"},
        "receive_time": {"type":"date","format":"strict_date_optional_time||epoch_second"},
        "serial": {"type":"string","index":"not_analyzed"},
        "type": {"type":"string","index":"not_analyzed"},
        "subtype_traffic": {"type":"string","index":"not_analyzed"},
        "time_generated": {"type":"date","format":"strict_date_optional_time||epoch_second"},
        "src": {"type":"ip","index":"not_analyzed"},
        "dst": {"type":"ip","index":"not_analyzed"},
        "natsrc": {"type":"ip","index":"not_analyzed"},
        "natdst": {"type":"ip","index":"not_analyzed"},
        "rule": {"type":"string","index":"not_analyzed"},
        "srcuser": {"type":"string","index":"not_analyzed"},
        "dstuser": {"type":"string","index":"not_analyzed"},
        "app": {"type":"string","index":"not_analyzed"},
        "vsys": {"type":"string","index":"not_analyzed"},
        "from": {"type":"string","index":"not_analyzed"},
        "to": {"type":"string","index":"not_analyzed"},
        "inbound_if": {"type":"string","index":"not_analyzed"},
        "outbound_if": {"type":"string","index":"not_analyzed"},
        "logset": {"type":"string","index":"not_analyzed"},
        "sessionid": {"type":"string","index":"not_analyzed"},
        "repeatcnt": {"type":"integer","index":"not_analyzed"},
        "sport": {"type":"string","index":"not_analyzed"},
        "dport": {"type":"string","index":"not_analyzed"},
        "natsport": {"type":"string","index":"not_analyzed"},
        "natdport": {"type":"string","index":"not_analyzed"},
        "flags": {"type":"string","index":"not_analyzed"},
        "proto": {"type":"string","index":"not_analyzed"},
        "action": {"type":"string","index":"not_analyzed"},
        "bytes": {"type":"long","index":"not_analyzed"},
        "bytes_sent": {"type":"long","index":"not_analyzed"},
        "bytes_received": {"type":"long","index":"not_analyzed"},
        "packets": {"type":"integer","index":"not_analyzed"},
        "start": {"type":"date","format":"strict_date_optional_time||epoch_second"},
        "elapsed": {"type":"integer","index":"not_analyzed"},
        "category": {"type":"string","index":"not_analyzed"},
        "seqno": {"type":"string","index":"not_analyzed"},
        "actionflags": {"type":"string","index":"not_analyzed"},
        "srcloc": {"type":"string","index":"not_analyzed"},
        "dstloc": {"type":"string","index":"not_analyzed"},
        "pkts_sent": {"type":"integer","index":"not_analyzed"},
        "pkts_received": {"type":"integer","index":"not_analyzed"},
        "session_end_reason": {"type":"string","index":"not_analyzed"},
        "cloud": {"type":"string","index":"not_analyzed"},
        "contenttype": {"type":"string","index":"not_analyzed"},
        "direction": {"type":"string","index":"not_analyzed"},
        "filedigest": {"type":"string","index":"not_analyzed"},
        "filetype": {"type":"string","index":"not_analyzed"},
        "misc_file": {"type":"string","index":"not_analyzed"},
        "misc_url": {"type":"string","index":"not_analyzed"},
        "misc_virus": {"type":"string","index":"not_analyzed"},
        "misc_wildfire": {"type":"string","index":"not_analyzed"},
        "pcap_id": {"type":"string","index":"not_analyzed"},
        "recipient": {"type":"string","index":"not_analyzed"},
        "referer": {"type":"string","index":"not_analyzed"},
        "reportid": {"type":"string","index":"not_analyzed"},
        "sender": {"type":"string","index":"not_analyzed"},
        "severity": {"type":"string","index":"not_analyzed"},
        "subject": {"type":"string","index":"not_analyzed"},
        "subtype_threat": {"type":"string","index":"not_analyzed"},
        "threatid": {"type":"string","index":"not_analyzed"},
        "user_agent": {"type":"string","index":"not_analyzed"},
        "wildfire_result": {"type":"string","index":"not_analyzed"},
        "xff": {"type":"string","index":"not_analyzed"},
        "vsys_name": {"type":"string","index":"not_analyzed"},
        "device_name": {"type":"string","index":"not_analyzed"},
        "action_source": {"type":"string","index":"not_analyzed"}
       }
    }
  }
}
'

curl -XPUT localhost:9200/_template/template_02 -d '
{
  "template" : "palo_system_*",
  "settings" : {
    "number_of_shards" : 5,
    "number_of_replicas" : 0
  }
}
'
