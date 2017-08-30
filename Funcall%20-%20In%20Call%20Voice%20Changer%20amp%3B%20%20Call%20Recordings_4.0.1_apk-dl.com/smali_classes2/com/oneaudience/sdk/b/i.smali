.class public Lcom/oneaudience/sdk/b/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:J

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneaudience/sdk/b/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneaudience/sdk/b/i;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oneaudience/sdk/b/i;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/oneaudience/sdk/b/i;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/oneaudience/sdk/b/i;->d:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneaudience/sdk/b/i;->e:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneaudience/sdk/b/i;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/ScanResult;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneaudience/sdk/b/i;->b:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneaudience/sdk/b/i;->c:Ljava/lang/String;

    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/oneaudience/sdk/b/i;->d:I

    invoke-direct {p0, p1}, Lcom/oneaudience/sdk/b/i;->a(Landroid/net/wifi/ScanResult;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneaudience/sdk/b/i;->e:J

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneaudience/sdk/b/i;->b:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneaudience/sdk/b/i;->c:Ljava/lang/String;

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    iput v0, p0, Lcom/oneaudience/sdk/b/i;->f:I

    return-void
.end method

.method private a(Landroid/net/wifi/ScanResult;)J
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Z)Lorg/json/JSONObject;
    .locals 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "wifi_ssid"

    iget-object v2, p0, Lcom/oneaudience/sdk/b/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "wifi_bssid"

    iget-object v2, p0, Lcom/oneaudience/sdk/b/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string v1, "wifi_level"

    iget v2, p0, Lcom/oneaudience/sdk/b/i;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "wifi_time"

    iget-wide v2, p0, Lcom/oneaudience/sdk/b/i;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "wifi_status"

    iget v2, p0, Lcom/oneaudience/sdk/b/i;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/oneaudience/sdk/b/i;->a:Ljava/lang/String;

    const-string v2, "ERROR CREATING JSON OBJECT: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/oneaudience/sdk/b/d;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
