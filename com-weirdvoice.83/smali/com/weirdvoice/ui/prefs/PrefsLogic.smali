.class public Lcom/weirdvoice/ui/prefs/PrefsLogic;
.super Ljava/lang/Object;
.source "PrefsLogic.java"


# static fields
.field private static final ADVANCED_UI_KEY:Ljava/lang/String; = "advanced_ui"

.field private static final ANDROID_GENERAL_UI_KEY:Ljava/lang/String; = "android_general_ui"

.field private static final ANDROID_INTEGRATION_KEY:Ljava/lang/String; = "android_integration"

.field public static final EXTRA_PREFERENCE_TYPE:Ljava/lang/String; = "preference_type"

.field private static final MEDIA_AUDIO_QUALITY_KEY:Ljava/lang/String; = "audio_quality"

.field private static final MEDIA_AUDIO_TROUBLESHOOT_KEY:Ljava/lang/String; = "audio_troubleshooting"

.field private static final MEDIA_AUDIO_VOLUME_KEY:Ljava/lang/String; = "audio_volume"

.field private static final MEDIA_BAND_TYPE_KEY:Ljava/lang/String; = "band_types"

.field private static final MEDIA_CODEC_EXTRA_SETTINGS_KEY:Ljava/lang/String; = "codecs_extra_settings"

.field private static final MEDIA_CODEC_LIST_KEY:Ljava/lang/String; = "codecs_list"

.field private static final MEDIA_MISC_KEY:Ljava/lang/String; = "misc"

.field private static final MEDIA_VIDEO_CATEGORY:Ljava/lang/String; = "video_category"

.field private static final NWK_KEEP_ALIVE_KEY:Ljava/lang/String; = "keep_alive"

.field private static final NWK_NAT_TRAVERSAL_KEY:Ljava/lang/String; = "nat_traversal"

.field private static final NWK_PERFS_KEY:Ljava/lang/String; = "perfs"

.field private static final NWK_SECURE_TRANSPORT_KEY:Ljava/lang/String; = "secure_transport"

.field private static final NWK_SIP_PROTOCOL_KEY:Ljava/lang/String; = "sip_protocol"

.field private static final NWK_TLS_KEY:Ljava/lang/String; = "tls"

.field private static final NWK_TRANSPORT_KEY:Ljava/lang/String; = "transport"

.field public static final TYPE_CALLS:I = 0x28

.field public static final TYPE_MEDIA:I = 0x0

.field public static final TYPE_MEDIA_BAND_TYPE:I = 0x1

.field public static final TYPE_MEDIA_TROUBLESHOOT:I = 0x2

.field public static final TYPE_NETWORK:I = 0x14

.field public static final TYPE_NETWORK_KEEP_ALIVE:I = 0x15

.field public static final TYPE_NETWORK_SECURE:I = 0x16

.field public static final TYPE_NETWORK_SIP_PROTOCOL:I = 0x17

.field public static final TYPE_UI:I = 0x3c


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static afterBuildPrefsForType(Landroid/content/Context;Lcom/weirdvoice/ui/prefs/IPreferenceHelper;I)V
    .locals 22
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "pfh"    # Lcom/weirdvoice/ui/prefs/IPreferenceHelper;
    .param p2, "t"    # I

    .prologue
    .line 146
    new-instance v11, Lcom/weirdvoice/utils/PreferencesWrapper;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/weirdvoice/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    .line 148
    .local v11, "pfw":Lcom/weirdvoice/utils/PreferencesWrapper;
    sparse-switch p2, :sswitch_data_0

    .line 364
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 152
    :sswitch_1
    invoke-virtual {v11}, Lcom/weirdvoice/utils/PreferencesWrapper;->isAdvancedUser()Z

    move-result v20

    if-nez v20, :cond_1

    .line 154
    const-string v20, "audio_quality"

    const-string v21, "snd_media_quality"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v20, "audio_quality"

    const-string v21, "echo_cancellation_tail"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v20, "audio_quality"

    const-string v21, "echo_mode"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v20, "audio_quality"

    const-string v21, "enable_ns"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v20, "audio_quality"

    const-string v21, "snd_ptime"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v20, "audio_quality"

    const-string v21, "enable_vad"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v20, "audio_quality"

    const-string v21, "snd_clock_rate"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/16 v20, 0x0

    const-string v21, "media_thread_count"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/16 v20, 0x0

    const-string v21, "codecs_per_bandwidth"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/16 v20, 0x0

    const-string v21, "codecs_list"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/16 v20, 0x0

    const-string v21, "codecs_extra_settings"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/16 v20, 0x0

    const-string v21, "misc"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v20, "audio_volume"

    const-string v21, "snd_mic_level"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v20, "audio_volume"

    const-string v21, "snd_speaker_level"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v20, "audio_volume"

    const-string v21, "snd_bt_mic_level"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v20, "audio_volume"

    const-string v21, "snd_bt_speaker_level"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v20, "audio_volume"

    const-string v21, "use_soft_volume"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v20, "audio_quality"

    const-string v21, "has_io_queue"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/16 v20, 0x0

    const-string v21, "band_types"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/16 v20, 0x0

    const-string v21, "audio_troubleshooting"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_1
    const-string v20, "use_video"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/weirdvoice/utils/PreferencesWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 193
    invoke-static {}, Lcom/weirdvoice/utils/video/VideoUtilsWrapper;->getInstance()Lcom/weirdvoice/utils/video/VideoUtilsWrapper;

    move-result-object v19

    .line 194
    .local v19, "vuw":Lcom/weirdvoice/utils/video/VideoUtilsWrapper;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/weirdvoice/utils/video/VideoUtilsWrapper;->getVideoCaptureDevices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 195
    .local v5, "capt":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_2

    .line 196
    const/16 v20, 0x0

    const-string v21, "video_category"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    .end local v5    # "capt":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;>;"
    .end local v19    # "vuw":Lcom/weirdvoice/utils/video/VideoUtilsWrapper;
    :cond_1
    const-string v20, "audio_troubleshooting"

    const/16 v21, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->setPreferenceScreenType(Ljava/lang/String;I)V

    .line 182
    const-string v20, "band_types"

    const/16 v21, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->setPreferenceScreenType(Ljava/lang/String;I)V

    .line 186
    :try_start_0
    const-string v20, "codecs_list"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 187
    .local v10, "pf":Landroid/preference/Preference;
    new-instance v8, Landroid/content/Intent;

    const-class v20, Lcom/weirdvoice/ui/prefs/Codecs;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .local v8, "it":Landroid/content/Intent;
    invoke-virtual {v10, v8}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 189
    .end local v8    # "it":Landroid/content/Intent;
    .end local v10    # "pf":Landroid/preference/Preference;
    :catch_0
    move-exception v20

    goto :goto_1

    .line 198
    .restart local v5    # "capt":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;>;"
    .restart local v19    # "vuw":Lcom/weirdvoice/utils/video/VideoUtilsWrapper;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;->capabilities:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v12

    .line 202
    .local v12, "size":I
    add-int/lit8 v20, v12, 0x1

    move/from16 v0, v20

    new-array v6, v0, [Ljava/lang/CharSequence;

    .line 203
    .local v6, "entries":[Ljava/lang/CharSequence;
    add-int/lit8 v20, v12, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    .line 204
    .local v16, "values":[Ljava/lang/CharSequence;
    const-string v20, "video_capture_size"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    .line 205
    .local v9, "lp":Landroid/preference/ListPreference;
    const/4 v7, 0x0

    .line 206
    .local v7, "i":I
    const/16 v20, 0x0

    const v21, 0x7f0c016d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    aput-object v21, v6, v20

    .line 207
    const/16 v20, 0x0

    const-string v21, ""

    aput-object v21, v16, v20

    .line 208
    add-int/lit8 v7, v7, 0x1

    .line 210
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;

    .line 211
    .local v17, "vcdi":Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;->capabilities:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_4

    .line 216
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;->bestCapability:Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 217
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;->bestCapability:Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;->toPreferenceValue()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 221
    :cond_3
    invoke-virtual {v9, v6}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 222
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 211
    :cond_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;

    .line 212
    .local v4, "cap":Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;
    invoke-virtual {v4}, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;->toPreferenceDisplay()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v7

    .line 213
    invoke-virtual {v4}, Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;->toPreferenceValue()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v16, v7

    .line 214
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 225
    .end local v4    # "cap":Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureCapability;
    .end local v5    # "capt":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;>;"
    .end local v6    # "entries":[Ljava/lang/CharSequence;
    .end local v7    # "i":I
    .end local v9    # "lp":Landroid/preference/ListPreference;
    .end local v12    # "size":I
    .end local v16    # "values":[Ljava/lang/CharSequence;
    .end local v17    # "vcdi":Lcom/weirdvoice/utils/video/VideoUtilsWrapper$VideoCaptureDeviceInfo;
    .end local v19    # "vuw":Lcom/weirdvoice/utils/video/VideoUtilsWrapper;
    :cond_5
    const/16 v20, 0x0

    const-string v21, "video_category"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 235
    :sswitch_2
    const-string v20, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 237
    .local v13, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 238
    const-string v20, "for_incoming"

    const-string v21, "use_gprs_in"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v20, "for_outgoing"

    const-string v21, "use_gprs_out"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v20, "for_incoming"

    const-string v21, "use_edge_in"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v20, "for_outgoing"

    const-string v21, "use_edge_out"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_6
    const/16 v20, 0x9

    invoke-static/range {v20 .. v20}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v20

    if-nez v20, :cond_7

    .line 246
    const-string v20, "perfs"

    const-string v21, "lock_wifi_perfs"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_7
    invoke-virtual {v11}, Lcom/weirdvoice/utils/PreferencesWrapper;->isAdvancedUser()Z

    move-result v20

    if-nez v20, :cond_8

    .line 251
    const-string v20, "nat_traversal"

    const-string v21, "ice_aggressive"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v20, "nat_traversal"

    const-string v21, "enable_turn"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v20, "nat_traversal"

    const-string v21, "turn_server"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v20, "nat_traversal"

    const-string v21, "turn_username"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v20, "nat_traversal"

    const-string v21, "turn_password"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v20, "nat_traversal"

    const-string v21, "turn_transport"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v20, "transport"

    const-string v21, "enable_tcp"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v20, "transport"

    const-string v21, "enable_udp"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v20, "transport"

    const-string v21, "disable_tcp_switch"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v20, "transport"

    const-string v21, "network_tcp_transport_port"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v20, "transport"

    const-string v21, "network_udp_transport_port"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v20, "transport"

    const-string v21, "network_rtp_port"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v20, "transport"

    const-string v21, "use_ipv6"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v20, "transport"

    const-string v21, "override_nameserver"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v20, "transport"

    const-string v21, "force_no_update"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v20, "transport"

    const-string v21, "enable_qos"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v20, "transport"

    const-string v21, "dscp_val"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v20, "transport"

    const-string v21, "user_agent"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v20, "transport"

    const-string v21, "network_route_polling"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v20, "nat_traversal"

    const-string v21, "enable_stun2"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v20, "for_incoming"

    const-string v21, "use_anyway_in"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v20, "for_outgoing"

    const-string v21, "use_anyway_out"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const/16 v20, 0x0

    const-string v21, "sip_protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/16 v20, 0x0

    const-string v21, "perfs"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :goto_3
    const-string v20, "keep_alive"

    const/16 v21, 0x15

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->setPreferenceScreenType(Ljava/lang/String;I)V

    .line 287
    const-string v20, "secure_transport"

    const/16 v21, 0x16

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->setPreferenceScreenType(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 282
    :cond_8
    const-string v20, "sip_protocol"

    const/16 v21, 0x17

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->setPreferenceScreenType(Ljava/lang/String;I)V

    goto :goto_3

    .line 293
    .end local v13    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :sswitch_3
    invoke-virtual {v11}, Lcom/weirdvoice/utils/PreferencesWrapper;->isAdvancedUser()Z

    move-result v20

    if-nez v20, :cond_9

    .line 294
    const-string v20, "tls"

    const-string v21, "ca_list_file"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v20, "tls"

    const-string v21, "tls_verify_client"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v20, "tls"

    const-string v21, "tls_verify_server"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v20, "tls"

    const-string v21, "tls_password"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v20, "tls"

    const-string v21, "tls_method"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v20, "tls"

    const-string v21, "network_tls_server_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v20, "tls"

    const-string v21, "cert_file"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v20, "tls"

    const-string v21, "privkey_file"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_9
    const-string v20, "cap_tls"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/weirdvoice/utils/PreferencesWrapper;->getLibCapability(Ljava/lang/String;)Z

    move-result v3

    .line 305
    .local v3, "canTls":Z
    if-nez v3, :cond_0

    .line 306
    const/16 v20, 0x0

    const-string v21, "tls"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v20, "secure_media"

    const-string v21, "use_zrtp"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 313
    .end local v3    # "canTls":Z
    :sswitch_4
    invoke-virtual {v11}, Lcom/weirdvoice/utils/PreferencesWrapper;->isAdvancedUser()Z

    move-result v20

    if-nez v20, :cond_a

    .line 314
    const/16 v20, 0x0

    const-string v21, "advanced_ui"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const/16 v20, 0x0

    const-string v21, "android_integration"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v20, "android_general_ui"

    const-string v21, "prevent_screen_rotation"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v20, "android_general_ui"

    const-string v21, "unlocker_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v20, "android_general_ui"

    const-string v21, "start_with_text_dialer"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 321
    :cond_a
    :try_start_1
    const-string v20, "selected_theme"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    .line 322
    .restart local v9    # "lp":Landroid/preference/ListPreference;
    invoke-static/range {p0 .. p0}, Lcom/weirdvoice/utils/Theme;->getAvailableThemes(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v15

    .line 324
    .local v15, "themes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v6, v0, [Ljava/lang/CharSequence;

    .line 325
    .restart local v6    # "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    .line 326
    .restart local v16    # "values":[Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 327
    .restart local v7    # "i":I
    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_b

    .line 333
    invoke-virtual {v9, v6}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 334
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 335
    .end local v6    # "entries":[Ljava/lang/CharSequence;
    .end local v7    # "i":I
    .end local v9    # "lp":Landroid/preference/ListPreference;
    .end local v15    # "themes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "values":[Ljava/lang/CharSequence;
    :catch_1
    move-exception v20

    goto/16 :goto_0

    .line 327
    .restart local v6    # "entries":[Ljava/lang/CharSequence;
    .restart local v7    # "i":I
    .restart local v9    # "lp":Landroid/preference/ListPreference;
    .restart local v15    # "themes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "values":[Ljava/lang/CharSequence;
    :cond_b
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 328
    .local v14, "theme":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/CharSequence;

    aput-object v20, v6, v7

    .line 329
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/CharSequence;

    aput-object v20, v16, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 330
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 342
    .end local v6    # "entries":[Ljava/lang/CharSequence;
    .end local v7    # "i":I
    .end local v9    # "lp":Landroid/preference/ListPreference;
    .end local v14    # "theme":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "themes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "values":[Ljava/lang/CharSequence;
    :sswitch_5
    const/16 v20, 0x0

    const-string v21, "default_caller_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->forceNoMultipleCalls()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 345
    const/16 v20, 0x0

    const-string v21, "support_multiple_calls"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_c
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->supportCallRecord()Z

    move-result v20

    if-nez v20, :cond_d

    .line 348
    const/16 v20, 0x0

    const-string v21, "auto_record_calls"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_d
    const-string v20, "com.weirdvoice.plugins.action.REGISTER_VIDEO"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/ExtraPlugins;->getDynCodecPlugins(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v18

    .line 351
    .local v18, "videoPlugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/weirdvoice/utils/ExtraPlugins$DynCodecInfos;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->size()I

    move-result v20

    if-nez v20, :cond_e

    .line 352
    const/16 v20, 0x0

    const-string v21, "use_video"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_e
    invoke-virtual {v11}, Lcom/weirdvoice/utils/PreferencesWrapper;->isAdvancedUser()Z

    move-result v20

    if-nez v20, :cond_0

    .line 356
    const-string v20, "misc"

    const-string v21, "dtmf_pause_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v20, "misc"

    const-string v21, "dtmf_wait_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->hidePreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 148
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x14 -> :sswitch_2
        0x16 -> :sswitch_3
        0x28 -> :sswitch_5
        0x3c -> :sswitch_4
    .end sparse-switch
.end method

.method public static getTitleResourceForType(I)I
    .locals 1
    .param p0, "t"    # I

    .prologue
    .line 120
    sparse-switch p0, :sswitch_data_0

    .line 140
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 122
    :sswitch_0
    const v0, 0x7f0c00a0

    goto :goto_0

    .line 124
    :sswitch_1
    const v0, 0x7f0c0161

    goto :goto_0

    .line 126
    :sswitch_2
    const v0, 0x7f0c018c

    goto :goto_0

    .line 128
    :sswitch_3
    const v0, 0x7f0c009e

    goto :goto_0

    .line 130
    :sswitch_4
    const v0, 0x7f0c00ef

    goto :goto_0

    .line 132
    :sswitch_5
    const v0, 0x7f0c010b

    goto :goto_0

    .line 134
    :sswitch_6
    const v0, 0x7f0c00fb

    goto :goto_0

    .line 136
    :sswitch_7
    const v0, 0x7f0c00a4

    goto :goto_0

    .line 138
    :sswitch_8
    const v0, 0x7f0c00a2

    goto :goto_0

    .line 120
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x17 -> :sswitch_6
        0x28 -> :sswitch_7
        0x3c -> :sswitch_8
    .end sparse-switch
.end method

.method public static getXmlResourceForType(I)I
    .locals 1
    .param p0, "t"    # I

    .prologue
    .line 91
    sparse-switch p0, :sswitch_data_0

    .line 111
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 93
    :sswitch_0
    const v0, 0x7f050004

    goto :goto_0

    .line 95
    :sswitch_1
    const v0, 0x7f050005

    goto :goto_0

    .line 97
    :sswitch_2
    const v0, 0x7f050006

    goto :goto_0

    .line 99
    :sswitch_3
    const v0, 0x7f050007

    goto :goto_0

    .line 101
    :sswitch_4
    const v0, 0x7f050008

    goto :goto_0

    .line 103
    :sswitch_5
    const v0, 0x7f050009

    goto :goto_0

    .line 105
    :sswitch_6
    const v0, 0x7f05000a

    goto :goto_0

    .line 107
    :sswitch_7
    const v0, 0x7f050002

    goto :goto_0

    .line 109
    :sswitch_8
    const v0, 0x7f05000b

    goto :goto_0

    .line 91
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x17 -> :sswitch_6
        0x28 -> :sswitch_7
        0x3c -> :sswitch_8
    .end sparse-switch
.end method

.method public static onMainActivityOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;Landroid/content/Context;Lcom/weirdvoice/utils/PreferencesWrapper;)Z
    .locals 4
    .param p0, "item"    # Lcom/actionbarsherlock/view/MenuItem;
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "prefsWrapper"    # Lcom/weirdvoice/utils/PreferencesWrapper;

    .prologue
    const/4 v1, 0x1

    .line 380
    invoke-interface {p0}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 381
    .local v0, "id":I
    const v2, 0x7f0b0172

    if-ne v0, v2, :cond_0

    .line 382
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/weirdvoice/ui/prefs/AudioTester;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 392
    :goto_0
    return v1

    .line 384
    :cond_0
    const v2, 0x7f0b0173

    if-ne v0, v2, :cond_1

    .line 385
    invoke-virtual {p2}, Lcom/weirdvoice/utils/PreferencesWrapper;->resetAllDefaultValues()V

    goto :goto_0

    .line 392
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static onMainActivityPrepareOptionMenu(Lcom/actionbarsherlock/view/Menu;Landroid/content/Context;Lcom/weirdvoice/utils/PreferencesWrapper;)V
    .locals 1
    .param p0, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "prefsWrapper"    # Lcom/weirdvoice/utils/PreferencesWrapper;

    .prologue
    .line 397
    const v0, 0x7f0c01e6

    invoke-interface {p0, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 400
    return-void
.end method

.method public static updateDescriptionForType(Landroid/content/Context;Lcom/weirdvoice/ui/prefs/IPreferenceHelper;I)V
    .locals 1
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "pfh"    # Lcom/weirdvoice/ui/prefs/IPreferenceHelper;
    .param p2, "t"    # I

    .prologue
    .line 369
    sparse-switch p2, :sswitch_data_0

    .line 376
    :goto_0
    :sswitch_0
    return-void

    .line 373
    :sswitch_1
    const-string v0, "stun_server"

    invoke-interface {p1, v0}, Lcom/weirdvoice/ui/prefs/IPreferenceHelper;->setStringFieldSummary(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method
