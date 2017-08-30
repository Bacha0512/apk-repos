.class public Lcom/oneaudience/sdk/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneaudience/sdk/a/b$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Lcom/oneaudience/sdk/a/b;

.field private static d:Lcom/oneaudience/sdk/a/b$a;


# instance fields
.field private e:Lcom/oneaudience/sdk/a/a;

.field private f:Lcom/oneaudience/sdk/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "encryptedData"

    sput-object v0, Lcom/oneaudience/sdk/a/b;->a:Ljava/lang/String;

    const-string v0, "encryptedKey"

    sput-object v0, Lcom/oneaudience/sdk/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/oneaudience/sdk/a/a;Lcom/oneaudience/sdk/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oneaudience/sdk/a/b;->f:Lcom/oneaudience/sdk/a/c;

    iput-object p1, p0, Lcom/oneaudience/sdk/a/b;->e:Lcom/oneaudience/sdk/a/a;

    return-void
.end method

.method public static declared-synchronized a()Lcom/oneaudience/sdk/a/b;
    .locals 4

    const-class v1, Lcom/oneaudience/sdk/a/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/oneaudience/sdk/a/b;->c:Lcom/oneaudience/sdk/a/b;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneaudience/sdk/a/a;->a()Lcom/oneaudience/sdk/a/a;

    move-result-object v0

    new-instance v2, Lcom/oneaudience/sdk/a/b$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/oneaudience/sdk/a/b$a;-><init>(Lcom/oneaudience/sdk/a/b$1;)V

    sput-object v2, Lcom/oneaudience/sdk/a/b;->d:Lcom/oneaudience/sdk/a/b$a;

    new-instance v2, Lcom/oneaudience/sdk/a/c;

    sget-object v3, Lcom/oneaudience/sdk/a/b;->d:Lcom/oneaudience/sdk/a/b$a;

    invoke-direct {v2, v3}, Lcom/oneaudience/sdk/a/c;-><init>(Lcom/oneaudience/sdk/a/c$a;)V

    new-instance v3, Lcom/oneaudience/sdk/a/b;

    invoke-direct {v3, v0, v2}, Lcom/oneaudience/sdk/a/b;-><init>(Lcom/oneaudience/sdk/a/a;Lcom/oneaudience/sdk/a/c;)V

    sput-object v3, Lcom/oneaudience/sdk/a/b;->c:Lcom/oneaudience/sdk/a/b;

    :cond_0
    sget-object v0, Lcom/oneaudience/sdk/a/b;->c:Lcom/oneaudience/sdk/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/oneaudience/sdk/a/b;->f:Lcom/oneaudience/sdk/a/c;

    invoke-virtual {v0, p1}, Lcom/oneaudience/sdk/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneaudience/sdk/a/b;->e:Lcom/oneaudience/sdk/a/a;

    sget-object v2, Lcom/oneaudience/sdk/a/b;->d:Lcom/oneaudience/sdk/a/b$a;

    invoke-virtual {v2}, Lcom/oneaudience/sdk/a/b$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneaudience/sdk/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v3, Lcom/oneaudience/sdk/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/oneaudience/sdk/a/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
