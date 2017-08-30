.class public Lnet/pubnative/player/util/HttpTools;
.super Ljava/lang/Object;
.source "HttpTools.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lnet/pubnative/player/util/HttpTools;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/player/util/HttpTools;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lnet/pubnative/player/util/HttpTools;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static httpGetURL(Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lnet/pubnative/player/util/HttpTools$1;

    invoke-direct {v0, p0}, Lnet/pubnative/player/util/HttpTools$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/pubnative/player/util/HttpTools$1;->start()V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    sget-object v0, Lnet/pubnative/player/util/HttpTools;->TAG:Ljava/lang/String;

    const-string v1, "url is null or empty"

    invoke-static {v0, v1}, Lnet/pubnative/player/util/VASTLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
