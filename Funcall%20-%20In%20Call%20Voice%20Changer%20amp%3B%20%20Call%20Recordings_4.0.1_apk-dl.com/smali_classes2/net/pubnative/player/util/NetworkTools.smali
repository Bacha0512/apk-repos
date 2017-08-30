.class public Lnet/pubnative/player/util/NetworkTools;
.super Ljava/lang/Object;
.source "NetworkTools.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lnet/pubnative/player/util/NetworkTools;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/player/util/NetworkTools;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isConnectedToInternet(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 20
    sget-object v6, Lnet/pubnative/player/util/NetworkTools;->TAG:Ljava/lang/String;

    const-string v7, "Testing connectivity:"

    invoke-static {v6, v7}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 24
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 26
    .local v3, "wifiNetwork":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 28
    sget-object v5, Lnet/pubnative/player/util/NetworkTools;->TAG:Ljava/lang/String;

    const-string v6, "Connected to Internet"

    invoke-static {v5, v6}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_0
    return v4

    .line 32
    :cond_0
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 34
    .local v2, "mobileNetwork":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 36
    sget-object v5, Lnet/pubnative/player/util/NetworkTools;->TAG:Ljava/lang/String;

    const-string v6, "Connected to Internet"

    invoke-static {v5, v6}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 42
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 44
    sget-object v5, Lnet/pubnative/player/util/NetworkTools;->TAG:Ljava/lang/String;

    const-string v6, "Connected to Internet"

    invoke-static {v5, v6}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_2
    sget-object v4, Lnet/pubnative/player/util/NetworkTools;->TAG:Ljava/lang/String;

    const-string v6, "No Internet connection"

    invoke-static {v4, v6}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 49
    goto :goto_0
.end method
