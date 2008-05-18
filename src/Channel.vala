using GLib;

namespace DVB {

    public class Channel : GLib.Object {

        public uint Sid {get; construct;}
        public string Name {get; set;}
        public uint TransportStreamId {get; set;}
        public string Network {get; set;}
        public uint? LogicalChannelNumber {get; set;}
        
        public Channel (uint sid) {
            this.Sid = sid;
        }

    }
    
}
