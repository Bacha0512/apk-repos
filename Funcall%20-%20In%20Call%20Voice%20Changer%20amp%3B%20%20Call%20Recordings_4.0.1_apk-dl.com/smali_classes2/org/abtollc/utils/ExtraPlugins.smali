.class public Lorg/abtollc/utils/ExtraPlugins;
.super Ljava/lang/Object;
.source "ExtraPlugins.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/utils/ExtraPlugins$DynActivityPlugin;,
        Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;
    }
.end annotation


# static fields
.field private static CACHED_ACTIVITY_RESOLUTION:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/abtollc/utils/ExtraPlugins$DynActivityPlugin;",
            ">;>;"
        }
    .end annotation
.end field

.field private static CACHED_RESOLUTION:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final THIS_FILE:Ljava/lang/String; = "ExtraPlugins"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/abtollc/utils/ExtraPlugins;->CACHED_RESOLUTION:Ljava/util/Map;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/abtollc/utils/ExtraPlugins;->CACHED_ACTIVITY_RESOLUTION:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearDynPlugins()V
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lorg/abtollc/utils/ExtraPlugins;->CACHED_RESOLUTION:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 154
    sget-object v0, Lorg/abtollc/utils/ExtraPlugins;->CACHED_ACTIVITY_RESOLUTION:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 155
    invoke-static {}, Lorg/abtollc/voip/SipService;->resetCodecs()V

    .line 156
    return-void
.end method

.method public static getDynActivityPlugins(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/abtollc/utils/ExtraPlugins$DynActivityPlugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    sget-object v8, Lorg/abtollc/utils/ExtraPlugins;->CACHED_ACTIVITY_RESOLUTION:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 253
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 255
    .local v6, "plugins":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/abtollc/utils/ExtraPlugins$DynActivityPlugin;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 256
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v4, "it":Landroid/content/Intent;
    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 259
    .local v1, "availables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 260
    .local v7, "resInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 261
    .local v0, "actInfos":Landroid/content/pm/ActivityInfo;
    const-string v9, "android.permission.USE_SIP"

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_0

    .line 262
    new-instance v2, Landroid/content/ComponentName;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .local v2, "cmp":Landroid/content/ComponentName;
    new-instance v3, Lorg/abtollc/utils/ExtraPlugins$DynActivityPlugin;

    invoke-virtual {v0, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-direct {v3, v9, p1, v2, v10}, Lorg/abtollc/utils/ExtraPlugins$DynActivityPlugin;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 266
    .local v3, "dynInfos":Lorg/abtollc/utils/ExtraPlugins$DynActivityPlugin;
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 269
    .end local v0    # "actInfos":Landroid/content/pm/ActivityInfo;
    .end local v2    # "cmp":Landroid/content/ComponentName;
    .end local v3    # "dynInfos":Lorg/abtollc/utils/ExtraPlugins$DynActivityPlugin;
    .end local v7    # "resInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    sget-object v8, Lorg/abtollc/utils/ExtraPlugins;->CACHED_ACTIVITY_RESOLUTION:Ljava/util/Map;

    invoke-interface {v8, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .end local v1    # "availables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "it":Landroid/content/Intent;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "plugins":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/abtollc/utils/ExtraPlugins$DynActivityPlugin;>;"
    :cond_2
    sget-object v8, Lorg/abtollc/utils/ExtraPlugins;->CACHED_ACTIVITY_RESOLUTION:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    return-object v8
.end method

.method public static getDynCodecPlugins(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    sget-object v0, Lorg/abtollc/utils/ExtraPlugins;->CACHED_RESOLUTION:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-static {p0}, Lorg/abtollc/utils/ExtraPlugins;->initPlugins(Landroid/content/Context;)V

    .line 196
    :cond_0
    sget-object v0, Lorg/abtollc/utils/ExtraPlugins;->CACHED_RESOLUTION:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private static initPlugins(Landroid/content/Context;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    :try_start_0
    new-instance v5, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;

    const-string v12, "libg729_codec.so"

    const-string v13, "pjmedia_codec_g729_init"

    const-string v14, ""

    invoke-direct {v5, v12, v13, v14, p0}, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 112
    .local v5, "g729Info":Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v6, "g729codec":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;>;"
    const-string v12, "org.abtollc.plugins.codecs.G729"

    invoke-interface {v6, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v10, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;

    const-string v12, "libabto_video_android.so"

    const-string v13, "pjmedia_webrtc_vid_render_factory"

    const-string v14, ""

    invoke-direct {v10, v12, v13, v14, p0}, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 116
    .local v10, "videoPlugin":Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 117
    .local v8, "video":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;>;"
    const-string v12, "org.abtollc.plugins.video.Plugin"

    invoke-interface {v8, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v2, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;

    const-string v12, "libabto_video_android.so"

    const-string v13, "pjmedia_codec_ffmpeg_vid_init"

    const-string v14, "pjmedia_codec_ffmpeg_vid_deinit"

    invoke-direct {v2, v12, v13, v14, p0}, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 120
    .local v2, "ffmpegCodec":Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v9, "videoCodec":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;>;"
    const-string v12, "org.abtollc.plugins.video.PluginFFmpeg"

    invoke-interface {v9, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v11, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;

    const-string v12, "libabto_vpx.so"

    const-string v13, "pjmedia_codec_vpx_init"

    const-string v14, "pjmedia_codec_vpx_deinit"

    invoke-direct {v11, v12, v13, v14, p0}, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 124
    .local v11, "vpxCodec":Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;
    const-string v12, "org.abtollc.plugins.video.PluginReceiverVpx"

    invoke-interface {v9, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v7, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;

    const-string v12, "libpj_opus_codec.so"

    const-string v13, "pjmedia_codec_opus_init"

    const-string v14, "pjmedia_codec_opus_deinit"

    invoke-direct {v7, v12, v13, v14, p0}, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 127
    .local v7, "opusCodec":Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;
    const-string v12, "org.abtollc.plugins.video.PluginReceiverOpus"

    invoke-interface {v6, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v4, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;

    const-string v12, "libpj_g723_codec.so"

    const-string v13, "pjmedia_codec_ffmpeg_aud_init"

    const-string v14, "pjmedia_codec_ffmpeg_aud_deinit"

    invoke-direct {v4, v12, v13, v14, p0}, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 130
    .local v4, "g723Codec":Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;
    const-string v12, "org.abtollc.plugins.video.PluginReceiverG723"

    invoke-interface {v6, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v3, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;

    const-string v12, "libpj_g7221_codec.so"

    const-string v13, "pjmedia_codec_g7221_init"

    const-string v14, "pjmedia_codec_g7221_deinit"

    invoke-direct {v3, v12, v13, v14, p0}, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 133
    .local v3, "g7221Codec":Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;
    const-string v12, "org.abtollc.plugins.video.PluginReceiverG7221"

    invoke-interface {v6, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v0, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;

    const-string v12, "libpj_codec2_codec.so"

    const-string v13, "pjmedia_codec_codec2_init"

    const-string v14, "pjmedia_codec_codec2_deinit"

    invoke-direct {v0, v12, v13, v14, p0}, Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 137
    .local v0, "codec2Codec":Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;
    const-string v12, "org.abtollc.plugins.video.PluginReceiverCodec2"

    invoke-interface {v6, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v12, Lorg/abtollc/utils/ExtraPlugins;->CACHED_RESOLUTION:Ljava/util/Map;

    const-string v13, "org.abtollc.codecs.action.REGISTER_CODEC"

    invoke-interface {v12, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v12, Lorg/abtollc/utils/ExtraPlugins;->CACHED_RESOLUTION:Ljava/util/Map;

    const-string v13, "org.abtollc.plugins.action.REGISTER_VIDEO"

    invoke-interface {v12, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v12, Lorg/abtollc/utils/ExtraPlugins;->CACHED_RESOLUTION:Ljava/util/Map;

    const-string v13, "org.abtollc.codecs.action.REGISTER_VIDEO_CODEC"

    invoke-interface {v12, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v0    # "codec2Codec":Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;
    .end local v2    # "ffmpegCodec":Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;
    .end local v3    # "g7221Codec":Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;
    .end local v4    # "g723Codec":Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;
    .end local v5    # "g729Info":Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;
    .end local v6    # "g729codec":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;>;"
    .end local v7    # "opusCodec":Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;
    .end local v8    # "video":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;>;"
    .end local v9    # "videoCodec":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;>;"
    .end local v10    # "videoPlugin":Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;
    .end local v11    # "vpxCodec":Lorg/abtollc/utils/ExtraPlugins$DynCodecInfos;
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v12, "ExtraPlugins"

    const-string v13, "can\'t find library"

    invoke-static {v12, v13}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
