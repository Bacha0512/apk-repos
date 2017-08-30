.class final Lorg/abtollc/utils/PreferencesWrapper$1;
.super Ljava/util/HashMap;
.source "PreferencesWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/utils/PreferencesWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 46
    const-string v0, "user_agent"

    const-string v1, "ABTOLLC"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v0, "log_level"

    const-string v1, "4"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v0, "use_native_ringback_tone"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "use_srtp"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v0, "use_zrtp"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "network_udp_transport_port"

    const-string v1, "5060"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "network_tcp_transport_port"

    const-string v1, "5060"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v0, "network_tls_transport_port"

    const-string v1, "5061"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v0, "signaling_transport"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "keep_alive_interval_wifi"

    const-string v1, "80"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "keep_alive_interval_mobile"

    const-string v1, "80"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "tcp_keep_alive_interval_wifi"

    const-string v1, "180"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "tcp_keep_alive_interval_mobile"

    const-string v1, "180"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "tls_keep_alive_interval_wifi"

    const-string v1, "180"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "tls_keep_alive_interval_mobile"

    const-string v1, "180"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "network_rtp_port"

    const-string v1, "4000"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v0, "override_nameserver"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v0, "timer_min_se"

    const-string v1, "90"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v0, "timer_sess_expires"

    const-string v1, "1800"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v0, "tsx_t1_timeout"

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v0, "tsx_t2_timeout"

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v0, "tsx_t4_timeout"

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "tsx_td_timeout"

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, "tsx_rtd_timeout"

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v0, "tsx_ctd_timeout"

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "tsx_btd_timeout"

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v0, "snd_auto_close_time"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "echo_cancellation_tail"

    const-string v1, "200"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "echo_mode"

    const-string v1, "3"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "snd_media_quality"

    const-string v1, "8"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "snd_clock_rate"

    const-string v1, "16000"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "snd_ptime"

    const-string v1, "10"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v0, "sip_audio_mode"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "micro_source"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v0, "thread_count"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v0, "headset_action"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "audio_implementation"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v0, "codec_h264_profile"

    const-string v1, "66"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v0, "codec_h264_level"

    const-string v1, "31"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "codec_h264_bitrate"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v0, "video_capture_size"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v0, "stun_server"

    const-string v1, "stun.counterpath.com"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v0, "turn_server"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v0, "turn_username"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v0, "turn_password"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v0, "network_tls_server_name"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v0, "ca_list_file"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "cert_file"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v0, "privkey_file"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "tls_password"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "tls_method"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "network_route_polling"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "dscp_val"

    const-string v1, "26"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "dtmf_mode"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v0, "dtmf_pause_time"

    const-string v1, "300"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "dtmf_wait_time"

    const-string v1, "2000"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "gsm_integration_type"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "dial_press_tone_mode"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "dial_press_vibrate_mode"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "dtmf_press_tone_mode"

    const-string v1, "2"

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "default_caller_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "selected_theme"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "ringtone"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/abtollc/utils/PreferencesWrapper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method
